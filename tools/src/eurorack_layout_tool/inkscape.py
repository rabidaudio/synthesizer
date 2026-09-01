from bs4 import BeautifulSoup
from contextlib import contextmanager

from .shapes import Rect, Circle, Oval, Line, Vec2
from .errors import URackError

class InkscapeFile():

    def __init__(self, path):
        self.path = path

    @contextmanager
    def open(self):
        with open(self.path, 'r+') as f:
            try:
                self.soup = BeautifulSoup(f, "xml")
                yield self
                f.seek(0)
                f.write(self.soup.prettify())
            finally:
                self.soup = None

    def add_elements(self, layers, elements, colors):
        for type in ["bounds", "mounts", "holes", "centers"]:
            if type in layers and (layers[type] is None or layers[type] == False):
                continue
            name = layers[type] if type in layers else type
            layer = self.find_or_create_layer(name)
            layer.clear() # delete all elements
            for el in elements:
                color = colors[type] if type in colors else "#aaaaaa"
                if type == "holes":
                    self.draw(layer, el.hole, color)
                if type == "mounts" and el.mount is not None:
                    self.draw(layer, el.mount, color)
                if type == "bounds":
                    for b in el.bounds:
                        self.draw(layer, b, color)
                if type == "centers":
                    self.draw_cross(layer, el.center, 0.2, 2, color)

    def get_layer(self, name):
        return self.soup.svg.find('svg:g', attrs={'inkscape:groupmode': 'layer', 'inkscape:label': name})

    def find_or_create_layer(self, name):
        l = self.get_layer(name)
        if l is not None:
            return l

        last_id = len([ g['id'] for g in self.soup.svg.find_all('svg:g', attrs={'inkscape:groupmode': 'layer'}) ])
        
        new_layer = self.soup.new_tag("svg:g", attrs={
            "inkscape:label": name,
            "inkscape:groupmode": "layer",
            "id": f"layer{last_id+1}"
        })
        self.soup.svg.append(new_layer)
        return new_layer

    def draw(self, layer, shape, color):
        # TODO: ids?
        if isinstance(shape, Line):
            el = self.soup.new_tag("path",
                                   style=f"fill:none;stroke-width:{shape.stroke};stroke:{color};stroke-opacity:1",
                                   d=f"m {shape.start.x},{shape.start.y} {shape.len.x},{shape.len.y}")
        elif isinstance(shape, Circle):
            el = self.soup.new_tag("circle",
                                    style=f"fill:{color};stroke-width:0",
                                        cx=shape.center.x,
                                        cy=shape.center.y,
                                        r=shape.radius)
        elif isinstance(shape, Oval):
            el = self.soup.new_tag("ellipse",
                                    style=f"fill:{color};stroke-width:0",
                                        cx=shape.center.x,
                                        cy=shape.center.y,
                                        rx=shape.radius.x,
                                        ry=shape.radius.y)
        elif isinstance(shape, Rect):
            el = self.soup.new_tag("rect",
                                   style=f"fill:{color};stroke-width:0",
                                   width=shape.width, height=shape.height,
                                   x=shape.start.x, y=shape.start.y)
        else:
            raise URackError(f"Unknown shape: {shape}")
        layer.append(el)

    def draw_cross(self, layer, center, width, length, color):
        for v in [ Vec2(-1, 0), Vec2(0, -1), Vec2(1, 0), Vec2(0, 1) ]:
            self.draw(layer, Line(center, len=v*length, stroke=width), color)

    def close(self):
        self.f.close()
