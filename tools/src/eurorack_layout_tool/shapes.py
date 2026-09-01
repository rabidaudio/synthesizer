from dataclasses import dataclass
import math

from .errors import URackError


class Shape:
    def __init__(self, config):
        pass

    def from_config(config):
        center = Vec2(0, 0)
        if "center" in config:
            center = Vec2(*config["center"])
        if config["type"] == "circle":
            return Circle(center, config["d"])
        elif config["type"] == "rect":
            if "start" in config and "end" in config:
                return Rect.from_start_end(Vec2(*config["start"]), Vec2(*config["end"]))
            return Rect(center, Vec2(*config["size"]))
        elif config["type"] == "oval":
            return Oval(center, Vec2(*config["size"]))
        else:
            raise URackError(f"Unknown shape: {config}")


@dataclass
class Vec2:
    x: float
    y: float

    def __add__(self, other: Vec2) -> Vec2:
        return Vec2(self.x + other.x, self.y + other.y)

    def __sub__(self, other: Vec2) -> Vec2:
        return Vec2(self.x - other.x, self.y - other.y)

    def __mul__(self, scalar):
        return Vec2(self.x * scalar, self.y * scalar)

    def rotated(self, degrees):
        rads = math.radians(degrees)
        cos_theta = math.cos(rads)
        sin_theta = math.sin(rads)
        return Vec2(
            x=self.x * cos_theta - self.y * sin_theta,
            y=self.x * sin_theta + self.y * cos_theta
        )

@dataclass
class Rect(Shape):
    center: Vec2
    size: Vec2

    def from_start_end(start: Vec2, end: Vec2):
        size_x = end.x - start.x
        size_y = end.y - start.y
        center_x = size_x / 2 + start.x
        center_y = size_y / 2 + start.y
        return Rect(Vec2(center_x, center_y), Vec2(size_x, size_y))

    def translate(self, offset) -> Rect:
        return Rect(center=self.center + offset)

    @property
    def width(self):
        return self.size.x

    @property
    def height(self):
        return self.size.y

    @property
    def start(self) -> Vec2:
        return Vec2(self.center.x - self.width / 2, self.center.y - self.height / 2)

    @property
    def end(self) -> Vec2:
        return self.start + self.size

    def __add__(self, offset: Vec2):
        return Rect(center=self.center + offset, size=self.size)

@dataclass
class Circle(Shape):
    center: Vec2
    diameter: float

    @property
    def radius(self):
        return self.diameter / 2

    @property
    def width(self):
        return self.radius

    @property
    def height(self):
        return self.radius

    @property
    def start(self):
        return self.center - Vec2(self.radius, self.radius)

    @property
    def end(self):
        return self.center + Vec2(self.radius, self.radius)

    def __add__(self, offset: Vec2):
        return Circle(center=self.center + offset, diameter=self.diameter)

@dataclass
class Oval(Rect):
    center: Vec2
    size: Vec2

    # TODO: rotation?

    @property
    def radius(self) -> Vec2:
        return self.size*0.5


@dataclass
class Line(Shape):
    start: Vec2
    len: Vec2
    stroke: float

    @property
    def end(self) -> Vec2:
        return self.start + self.len
