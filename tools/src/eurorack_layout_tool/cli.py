import argparse
import sys


def main():
    parser = argparse.ArgumentParser(
        prog="urack",
        description="""
        Scripts for syncing Eurorack panel layout information between
        KiCad, OpenSCAD, and Inkscape.
        """,
    )
    # parser.add_argument("file", type=pathlib.Path, help="path to dxf file")
    # parser.add_argument(
    #     "-w",
    #     "--write",
    #     action=argparse.BooleanOptionalAction,
    #     default=False,
    #     help="update the file by writing layer information",
    # )
    # parser.add_argument(
    #     "-r",
    #     "--reverse-y",
    #     action=argparse.BooleanOptionalAction,
    #     default=False,
    #     help="flip the orientation of the Y axis so that positive Y is top-to-bottom",
    # )
    args = parser.parse_args()
    print(args)
    if args.file == None:
        parser.print_help()
        sys.exit(1)
        return


if __name__ == "__main__":
    main()
