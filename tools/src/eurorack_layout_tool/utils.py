def hp_to_mm(hp):
    return hp * 5.08


EURORACK_HEIGHT = 128.5


class URackError(Exception):
    def __init__(self, *args):
        super().__init__(*args)
