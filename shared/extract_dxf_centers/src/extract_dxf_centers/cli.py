import argparse
import pathlib
import sys

import ezdxf
from ezdxf import units

from .cluster import center_of, find_clusters


def main():
    parser = argparse.ArgumentParser(
        prog="extract_dxf_centers",
        description="""
        Parse a dxf file generated by OpenSCAD, cluster overlaping lines
        into layers, and print the center points of each cluster.
        """,
    )
    parser.add_argument("file", type=pathlib.Path, help="path to dxf file")
    parser.add_argument(
        "-w", "--write", help="update the file by writing layer information"
    )
    args = parser.parse_args()
    if args.file == None:
        parser.print_help()
        sys.exit(1)
        return

    doc = ezdxf.readfile(args.file)
    doc.units = units.MM
    clusters = list(find_clusters(doc.modelspace()))

    print("OBJECT\tx\ty")
    for i, cluster in enumerate(reversed(clusters)):
        # make a new layer from each cluster
        for el in cluster:
            el.layer = f"layer{i}"
        # compute the center points for each cluster
        c = center_of(cluster)
        print(f"{i}\t{round(c[0], 2)}\t{round(c[1], 2)}")
    if args.write:
        doc.save()


if __name__ == "__main__":
    main()
