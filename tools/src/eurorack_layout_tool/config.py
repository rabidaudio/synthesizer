import math
from dataclasses import dataclass

import yaml

from .errors import URackError
from .eurorack import EURORACK_HEIGHT, LIP_CENTER, compute_screw_locations, hp_to_mm
from .kicad import KBoard
from .shapes import Rect, Shape, Vec2


class Config(dict):
    def __init__(self, data={}):
        super().__init__(data)
        self.source = Source.from_config(self)

    def from_file(path):
        with open(path, "r") as f:
            return Config(yaml.safe_load(f))

    @property
    def width_hp(self):
        return self["settings"]["width_hp"]

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
    extra: dict

    @property
    def type(self):
        return self.component.name


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
                    extra={"computed": True},
                )
            )
        for i, center in enumerate(bottom):
            self._elements.append(
                Element(
                    center=center,
                    name=f"bottom screw {i+1}",
                    component=component,
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
            center_ki = KBoard.cord_to_mm(kf.position)
            component = self.config.find_component(footprint["type"])
            center_panel: Vec2 = (
                center_ki - self.panel_outline.start - component.center_offset
            )
            extra = {k: v for k, v in footprint.items() if k != "name" and k != "type"}
            self._elements.append(
                Element(
                    center=center_panel,
                    name=footprint["name"],
                    component=component,
                    extra=extra,
                )
            )
