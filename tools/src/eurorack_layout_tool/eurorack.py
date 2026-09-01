import math

from .shapes import Vec2


def hp_to_mm(hp):
    return hp * 5.08


EURORACK_HEIGHT = 128.5
LIP_CENTER = 4


def compute_screw_locations(width_hp, count=None):
    if count is None:
        count = math.floor(width_hp / 8) + 1
    xx = None
    if count <= 1:
        # just one in center (top and bottom)
        xx = [hp_to_mm(width_hp) / 2]
    else:
        # one in each corner (1hp from edge), with any additional spaced evenly between,
        # rounded down to hp
        space_between = hp_to_mm(math.floor((width_hp - 2) / (count - 1)))
        xx = [hp_to_mm(1) + i * space_between for i in range(count)]
    return (
        [Vec2(x, LIP_CENTER) for x in xx],  # top
        [Vec2(x, EURORACK_HEIGHT - LIP_CENTER) for x in xx],  # bottom
    )
