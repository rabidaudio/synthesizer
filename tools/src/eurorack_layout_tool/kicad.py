import kipy
from kipy.board import KiCadObjectType
from kipy.board_types import BoardLayer, Field
from kipy.common_types import LibraryIdentifier

from .errors import URackError
from .shapes import Circle, Rect, Shape, Vec2


def cord_to_mm(vec2):
    return Vec2(
        kipy.util.units.to_mm(vec2.x),
        kipy.util.units.to_mm(vec2.y),
    )


def vec2_to_vector(vec2: Vec2) -> kipy.geometry.Vector2:
    return kipy.geometry.Vector2.from_xy_mm(vec2.x, vec2.y)


def rect_to_Box2(rect: Rect) -> kipy.geometry.Box2:
    return kipy.geometry.Box2.from_xywh(
        kipy.util.units.from_mm(rect.start.x),
        kipy.util.units.from_mm(rect.start.y),
        kipy.util.units.from_mm(rect.width),
        kipy.util.units.from_mm(rect.height),
    )


def circle_to_BoardCircle(circle: Circle) -> kipy.board_types.BoardCircle:
    c = kipy.board_types.BoardCircle()
    c.center = vec2_to_vector(circle.center)
    c.radius_point = vec2_to_vector(circle.center + Vec2(circle.radius, 0))
    return c


def rect_to_BoardRectangle(rect: Rect) -> kipy.board_types.BoardRectangle:
    r = kipy.board_types.BoardRectangle()
    r.top_left = vec2_to_vector(rect.start)
    r.bottom_right = vec2_to_vector(rect.end)
    return r


def shape_to_BoardShape(shape: Shape) -> kipy.board_types.BoardShape:
    if isinstance(shape, Rect):
        return rect_to_BoardRectangle(shape)
    if isinstance(shape, Circle):
        return circle_to_BoardCircle(shape)
    raise URackError(f"Unsupported shape: {shape}")


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

    def delete_all_within(self, panel_bounds):
        commit = self.board.begin_commit()
        types = [
            KiCadObjectType.KOT_PCB_FOOTPRINT,
            KiCadObjectType.KOT_PCB_SHAPE,
            KiCadObjectType.KOT_PCB_TEXT,
            KiCadObjectType.KOT_PCB_TRACE,
            KiCadObjectType.KOT_PCB_VIA,
            KiCadObjectType.KOT_PCB_ZONE,
        ]
        try:
            for item in self.board.get_items(types):
                # if not isinstance(item, kipy.board_types.FootprintInstance):
                bounds = self.board.get_item_bounding_box(item, include_text=True)
                if bounds is None:
                    continue

                if panel_bounds.contains(
                    Rect(cord_to_mm(bounds.pos), cord_to_mm(bounds.size))
                ):
                    self.board.add_to_selection(item)

            items = self.board.get_selection(
                [
                    # KiCadObjectType.KOT_PCB_FOOTPRINT,
                    KiCadObjectType.KOT_PCB_SHAPE,
                    KiCadObjectType.KOT_PCB_TEXT,
                    KiCadObjectType.KOT_PCB_TRACE,
                    KiCadObjectType.KOT_PCB_VIA,
                    # KiCadObjectType.KOT_PCB_ZONE,
                ]
            )
            if len(items) == 0:
                # self.board.drop_commit(commit)
                return

            self.board.remove_items(items)
            self.board.clear_selection()
            self.board.push_commit(commit, "Removed old panel")
        except:
            self.board.drop_commit(commit)
            raise

    def insert_elements(self, panel_bounds: Rect, elements):
        commit = self.board.begin_commit()
        try:
            # draw the edge cut
            panel_edge = rect_to_BoardRectangle(panel_bounds)
            panel_edge.layer = BoardLayer.BL_Edge_Cuts
            self.board.create_items(panel_edge)

            for el in elements:
                if el.component.type == "edgecut":
                    cut = shape_to_BoardShape(el.hole + panel_bounds.start)
                    cut.layer = BoardLayer.BL_Edge_Cuts
                    self.board.create_items(cut)
                elif el.component.type == "footprint":
                    if el.panel_ref is not None:
                        # For now, we expect them to exist and move them into place instead
                        f = self.find_footprint(el.panel_ref)
                        f.position = vec2_to_vector(panel_bounds.start + el.center)
                        self.board.update_items(f)
                else:
                    raise URackError(f"Unsupported component {el.component.type}")

            # Adding footprints to a board using IPC is either unimplemented or under-documented.

            # TODO: draw the filled zones
            # TODO: add graphics

            # self.board.create_items(items)
            self.board.push_commit(commit, "Inserted new panel")
        except:
            self.board.drop_commit(commit)
            raise
