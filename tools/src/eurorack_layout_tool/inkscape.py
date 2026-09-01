import pathlib
import platform
import subprocess
from contextlib import contextmanager

import cssutils
from bs4 import BeautifulSoup

from .errors import URackError
from .shapes import Circle, Line, Oval, Rect, Vec2

DEFAULT_COLORS = {
    "holes": "#333333",
    "centers": "#5fcc1e",
    "mounts": "#666666",
    "bounds": "#ffffff",
    "names": "#9E33D4",
}
LAYERS = ["bounds", "mounts", "holes", "centers", "names"]


class Layer:
    def __init__(self, type, conf={}):
        self.type = type
        self.conf = conf

    def from_conf(layers):
        return {
            type: Layer(type, layers[type] if type in layers else {}) for type in LAYERS
        }

    @property
    def name(self):
        if isinstance(self.conf, dict) and "name" in self.conf:
            return self.conf["name"]
        return "_" + self.type

    @property
    def is_disabled(self):
        if self.conf is None or self.conf == False:
            return True
        if "enabled" in self.conf:
            return not self.conf["enabled"]
        return False

    @property
    def style(self):
        if isinstance(self.conf, dict) and "style" in self.conf:
            return self.conf["style"]
        return f"fill:{DEFAULT_COLORS[self.type]}"


def object_to_path(src_file, dest_file, inkscape_path=None):
    #  --actions "select-all;object-to-path" channel_design.svg -o channel_rendered.svg
    if inkscape_path is None:
        if platform.system() == "Darwin":
            inkscape_path = "/Applications/Inkscape.app/Contents/MacOS/inkscape"
        else:
            inkscape_path = "inkscape"  # hope it's in path
    subprocess.run(
        f"{inkscape_path} --actions 'select-all;object-to-path' {src_file} -o {dest_file}",
        shell=True,
        check=True,
        stderr=subprocess.STDOUT,
    )


class InkscapeFile:
    def __init__(self, path, graphics, config):
        self.path = path
        self.layers = Layer.from_conf(graphics["layers"])

    @contextmanager
    def open(self):
        with open(self.path, "r+") as f:
            try:
                self.soup = BeautifulSoup(f, "xml")
                yield self
                f.seek(0)
                f.write(str(self.soup))
            finally:
                self.soup = None

    def set_canvas_size(self, width, height):
        el = self.soup.find("svg:svg")
        el.attrs["width"] = f"{width:.4f}mm"
        el.attrs["height"] = f"{height:.4f}mm"
        el.attrs["viewBox"] = f"0 0 {width:.4f} {height:.4f}"

    def add_elements(self, elements):
        for type in LAYERS:
            layer_conf = self.layers[type]
            if layer_conf.is_disabled:
                continue
            layer = self.find_or_create_layer(layer_conf.name)
            layer.clear()  # delete all elements
            for el in elements:
                if type == "holes":
                    self.draw(layer, el.hole, layer_conf.style)
                if type == "mounts" and el.mount is not None:
                    self.draw(layer, el.mount, layer_conf.style)
                if type == "bounds":
                    for b in el.bounds:
                        self.draw(layer, b, layer_conf.style)
                if type == "centers":
                    self.draw_cross(layer, el.center, 0.2, 2, layer_conf.style)
                if type == "names":
                    self.draw_text(layer, el.center, el.name, layer_conf.style)

    def get_layer(self, name):
        return self.soup.svg.find(
            "svg:g", attrs={"inkscape:groupmode": "layer", "inkscape:label": name}
        )

    def all_layers(self):
        return self.soup.svg.find_all("svg:g", attrs={"inkscape:groupmode": "layer"})

    def find_or_create_layer(self, name):
        l = self.get_layer(name)
        if l is not None:
            return l

        new_layer = self.soup.new_tag(
            "svg:g",
            attrs={
                "inkscape:label": name,
                "inkscape:groupmode": "layer",
                "id": self.next_layer_id(),
            },
        )
        self.soup.svg.append(new_layer)
        return new_layer

    def layer_is_hidden(self, layer):
        if "style" not in layer.attrs:
            return False
        style = cssutils.parseStyle(layer.attrs["style"], validate=False)
        if style["display"] == "none":
            return True
        if style["opacity"] == "0":
            return True
        return False

    def remove_invisible_layers(self):
        for layer in self.all_layers():
            if self.layer_is_hidden(layer):
                layer.decompose()

    def next_layer_id(self):
        last_id = max([g["id"] for g in self.all_layers()])
        n = int(last_id.removeprefix("layer")) + 1
        return f"layer{n}"

    def get_color(self, style):
        cc = cssutils.parseStyle(style, validate=False)
        if "fill" in cc:
            return cc["fill"]
        return "#000000"

    def join_styles(self, style1, style2):
        a = cssutils.parseStyle(style1, validate=False)
        b = cssutils.parseStyle(style2, validate=False)
        for property in b:
            a[property.name] = property.value
        return a.getCssText(separator="")

    def draw(self, layer, shape, style):
        # TODO: ids?
        color = self.get_color(style)
        if isinstance(shape, Line):
            el = self.soup.new_tag(
                "path",
                style=self.join_styles(
                    style,
                    f"fill:none;stroke-width:{shape.stroke};stroke:{color};stroke-opacity:1",
                ),
                d=f"m {shape.start.x:.4f},{shape.start.y:.4f} {shape.len.x:.4f},{shape.len.y:.4f}",
            )
        elif isinstance(shape, Circle):
            el = self.soup.new_tag(
                "circle",
                style=self.join_styles(
                    style,
                    f"fill:{color};stroke-width:0",
                ),
                cx=f"{shape.center.x:.4f}",
                cy=f"{shape.center.y:.4f}",
                r=f"{shape.radius:.4f}",
            )
        elif isinstance(shape, Oval):
            el = self.soup.new_tag(
                "ellipse",
                style=self.join_styles(
                    style,
                    f"fill:{color};stroke-width:0",
                ),
                cx=f"{shape.center.x:.4f}",
                cy=f"{shape.center.y:.4f}",
                rx=f"{shape.radius.x:.4f}",
                ry=f"{shape.radius.y:.4f}",
            )
        elif isinstance(shape, Rect):
            el = self.soup.new_tag(
                "rect",
                style=self.join_styles(
                    style,
                    f"fill:{color};stroke-width:0",
                ),
                width=f"{shape.width:.4f}",
                height=f"{shape.height:.4f}",
                x=f"{shape.start.x:.4f}",
                y=f"{shape.start.y:.4f}",
            )
        else:
            raise URackError(f"Unknown shape: {shape}")
        layer.append(el)

    def draw_cross(self, layer, center, width, length, color):
        for v in [Vec2(-1, 0), Vec2(0, -1), Vec2(1, 0), Vec2(0, 1)]:
            self.draw(layer, Line(center, len=v * length, stroke=width), color)

    def draw_text(self, layer, start, text, style):
        t = self.soup.new_tag(
            "text",
            style=self.join_styles(
                "font-size:1.5px;line-height:1.25;fill:#ffffff;fill-opacity:1",
                style,
            ),
            x=f"{start.x:.4f}",
            y=f"{start.y:.4f}",
        )
        ts = self.soup.new_tag(
            "tspan",
            style=self.join_styles(
                "font-size:1.5px;line-height:1.25;fill:#ffffff;fill-opacity:1",
                style,
            ),
            x=f"{start.x:.4f}",
            y=f"{start.y:.4f}",
        )
        ts.string = text
        t.append(ts)
        layer.append(t)
