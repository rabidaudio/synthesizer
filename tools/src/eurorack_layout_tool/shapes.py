from dataclasses import dataclass

from .errors import URackError


class Shape:
    def __init__(self, config):
        pass

    def from_config(config):
        # if config["type"] == "circle": return Circle(config)
        if config["type"] == "rect":
            if config["start"] and config["end"]:
                return Rect.from_start_end(Vec2(*config["start"]), Vec2(*config["end"]))
            center = Vec2(0, 0)
            if config["center"] is not None:
                center = Vec2(*config["center"])
            return Rect(center, Vec2(*config["size"]))
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


# class Circle(Shape):
#     def __init__(self):
#         super().__init__(config)


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
