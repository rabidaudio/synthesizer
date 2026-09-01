import pathlib
import tempfile
from dataclasses import dataclass

import yaml

from .errors import URackError
from .eurorack import EURORACK_HEIGHT, compute_screw_locations, hp_to_mm
from .inkscape import InkscapeFile, object_to_path
from .kicad import KBoard, cord_to_mm
from .shapes import Rect, Shape, Vec2


class Config(dict):
    def __init__(self, path, data):
        super().__init__(data)
        self.project_dir = path.parent
        self.source = Source.from_config(self)
        self.sync = Sync.from_config(self)

    def from_file(path):
        with open(path, "r") as f:
            return Config(path, yaml.safe_load(f))

    def relative_path(self, path):
        path = pathlib.Path(path)
        if not path.is_absolute():
            path = self.project_dir / path
        return path

    @property
    def width_hp(self):
        return self["settings"]["width_hp"]

    @property
    def output_panel_bounds(self) -> Rect:
        start = Vec2(*self["output"]["start"])
        size = Vec2(hp_to_mm(self.width_hp), EURORACK_HEIGHT)
        return Rect.from_start_end(start, start + size)

    @property
    def components(self) -> dict[str, Component]:
        return {
            name: Component(name, definition)
            for name, definition in self["components"].items()
        }

    def find_component(self, name) -> Component:
        try:
            return self.components[name]
        except KeyError:
            raise URackError(f"Unknown component: {name}")


# a component is a type of element that appears on a panel.
# it has a cut type (edgecut, footprint, etc), a hole size,
# optional mount size, and optional bounds
class Component:
    def __init__(self, name: str, definition: dict):
        self.name = name
        self.definition = definition

    @property
    def type(self):
        return self.definition["type"]

    @property
    def footprint(self):
        if self.type == "footprint":
            return self.definition["footprint"]

    @property
    def hole(self) -> Shape:
        return Shape.from_config(self.definition["hole"])

    @property
    def mount(self) -> Shape | None:
        if "mount" in self.definition:
            return Shape.from_config(self.definition["mount"])

    @property
    def bounds(self) -> list[Shape]:
        if "bounds" not in self.definition:
            return []
        return [Shape.from_config(c) for c in self.definition["bounds"]]

    @property
    def center_offset(self) -> Vec2:
        if "center_offset" not in self.definition:
            return Vec2(0, 0)
        return Vec2(*self.definition["center_offset"])


# an element is a resolved set of center and cut information,
# relative to the panel origin
@dataclass
class Element:
    center: Vec2
    name: str
    component: Component
    panel_ref: str
    extra: dict

    @property
    def type(self):
        return self.component.name

    @property
    def hole(self) -> Shape:
        return self.component.hole + self.center

    @property
    def mount(self) -> Shape | None:
        return (
            self.component.mount + self.center
            if self.component.mount is not None
            else None
        )

    @property
    def bounds(self) -> list[Shape]:
        return [b + self.center for b in self.component.bounds]


class Source:
    def __init__(self, config):
        self._elements = None
        self.config = config

    def from_config(config) -> Source:
        if config["elements"]["source"] == "kicad":
            return KicadFootprintSource(config)
        raise URackError(f"Unknown source: {config.elements}")

    @property
    def elements(self) -> list[Element]:
        if self._elements is None:
            self._elements = []
            self.resolve()
            self.compute_screw_locations()
        return self._elements

    def resolve(self) -> list[Element]:
        raise NotImplementedError()

    def compute_screw_locations(self):
        try:
            if not self.config["elements"]["extra"]["compute_screws"]["compute"]:
                return
        except KeyError:
            return
        conf = self.config["elements"]["extra"]["compute_screws"]
        component = self.config.find_component(conf["type"])
        width_hp = self.config.width_hp
        count = conf["count"] if "count" in conf else None
        (top, bottom) = compute_screw_locations(width_hp, count)
        for i, center in enumerate(top):
            self._elements.append(
                Element(
                    center=center,
                    name=f"top screw {i+1}",
                    component=component,
                    panel_ref=None,
                    extra={"computed": True},
                )
            )
        for i, center in enumerate(bottom):
            self._elements.append(
                Element(
                    center=center,
                    name=f"bottom screw {i+1}",
                    component=component,
                    panel_ref=None,
                    extra={"computed": True},
                )
            )


class KicadFootprintSource(Source):
    # There are three coordinate systems at play here
    # - KiCad file absolute coordinates
    # - PCB location in KiCad file (should be smaller than panel)
    # - panel coordinates, inferred from center of PCB
    # element locations are reported in panel coordinates

    def __init__(self, config):
        super().__init__(config)
        self.data = config["elements"]
        self.config = config
        self.kicad_board = KBoard()
        self.kicad_board.open()

    @property
    def board_outline(self):
        return Shape.from_config(self.data["board"])

    @property
    def panel_outline(self):
        center = self.board_outline.center
        size = Vec2(hp_to_mm(self.config.width_hp), EURORACK_HEIGHT)
        return Rect(center, size)

    def resolve(self) -> list[Element]:
        for footprint in self.data["footprints"]:
            kf = self.kicad_board.find_footprint(footprint["ref"])
            center_ki = cord_to_mm(kf.position)
            component = self.config.find_component(footprint["type"])
            rotation = -1 * kf.orientation.degrees
            translate = Vec2(0, 0)
            if "translate" in footprint:
                translate = Vec2(*footprint["translate"])
            center_panel: Vec2 = (
                center_ki
                - self.panel_outline.start
                + component.center_offset.rotated(degrees=rotation)
                + translate
            )

            extra = {k: v for k, v in footprint.items() if k != "name" and k != "type"}
            panel_ref = footprint["panel_ref"] if "panel_ref" in footprint else None
            self._elements.append(
                Element(
                    center=center_panel,
                    name=footprint["name"],
                    component=component,
                    panel_ref=panel_ref,
                    extra=extra,
                )
            )


class Sync:
    def __init__(self):
        pass

    def from_config(config):
        if config["graphics"]["type"] == "inkscape_svg":
            return InkscapeSync(config)
        raise URackError(f"Unknown type: {config["graphics"]["type"]}")

    def sync(self):
        raise NotImplementedError()


class InkscapeSync(Sync):

    def __init__(self, config):
        super().__init__()
        self.config = config
        self.graphics = config["graphics"]

    @property
    def path(self):
        return self.config.relative_path(self.graphics["file"])

    def sync(self):
        with InkscapeFile(self.path, self.graphics, self.config).open() as i:
            i.set_canvas_size(hp_to_mm(self.config.width_hp), EURORACK_HEIGHT)
            i.add_elements(self.config.source.elements)

    def render(self):
        name = pathlib.Path(self.graphics["file"])
        tmpdir = pathlib.Path(tempfile.mkdtemp())
        tmp_path = tmpdir / f"{name}_urack_rendered.svg"
        inkscape_path = (
            self.graphics["inkscape_path"] if "inkscape_path" in self.graphics else None
        )
        object_to_path(self.path, tmp_path, inkscape_path)
        with InkscapeFile(tmp_path, self.graphics, self.config).open() as i:
            i.remove_invisible_layers()
        return tmp_path
