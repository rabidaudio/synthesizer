import argparse
import json
import pathlib
import sys
from dataclasses import asdict

from .config import Config
from .errors import URackError
from .shapes import Rect


def main():
    parser = argparse.ArgumentParser(
        prog="urack",
        description="""
        Scripts for syncing Eurorack panel layout information between
        KiCad, OpenSCAD, and Inkscape.
        """,
    )
    parser.add_argument(
        "-c",
        "--config",
        default="urack.yml",
        type=pathlib.Path,
        help="Path to config file",
    )
    subparsers = parser.add_subparsers(
        title="subcommands", dest="command", required=True, help="Available subcommands"
    )

    subparsers.add_parser("help", help="Show help docs")

    parser_create = subparsers.add_parser(
        "compute",
        help="Determine the coordinates of the elements, relative to panel origin",
    )
    parser_create.add_argument("--json", help="Output the coordinates in JSON format")

    subparsers.add_parser(
        "sync",
        help="Update the reference layers in the graphics document with the computed locations",
    )

    subparsers.add_parser("generate", help="Create a KiCad pcb for the panel")

    args = parser.parse_args()
    print(args)
    if args.command == None or args.command == "help":
        parser.print_help()
        sys.exit(1)
        return

    config_path: pathlib.Path = args.config
    if not config_path.exists():
        raise URackError(
            f"Unable to find config at path {config_path}. Make sure you are in the working "
            "directory or specify with --config"
        )

    config = Config.from_file(config_path)

    if args.command == "compute":
        elements = config.source.elements
        if args.json:
            print(json.dumps([asdict(e) for e in elements]))
        else:
            for e in elements:
                print(f"{e.name} [{e.type}]")
                print(f"center: {e.center}")
    if args.command == "sync":
        config.sync.sync()
    if args.command == "generate":
        svg_path = config.sync.render()
        print(svg_path)
        config.source.kicad_board.delete_all_within(config.output_panel_bounds)
        print("panel deleted")
        config.source.kicad_board.insert_elements(
            config.output_panel_bounds, config.source.elements
        )
        print("objects added")


if __name__ == "__main__":
    main()
