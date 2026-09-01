import kipy

from .shapes import Vec2
from .utils import URackError


class KBoard:
    def __init__(self, args={}):
        self.args = args

    def open(self):
        try:
            self.client = kipy.KiCad(**self.args)
            self.board = self.client.get_board()
            return True
        except kipy.errors.ApiError:
            raise URackError(
                "Unable to connect. Make sure the KiCad board is open and the API is enabled in settings"
            )

    def find_footprint(self, ref) -> kipy.board_types.FootprintInstance:
        for footprint in self.board.get_footprints():
            if footprint.reference_field.text.value == ref:
                return footprint
        raise URackError(f"Unable to find footprint matching ref {ref}")

    def cord_to_mm(vec2):
        return Vec2(
            kipy.util.units.to_mm(vec2.x),
            kipy.util.units.to_mm(vec2.y),
        )
