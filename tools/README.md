Tooling for synchronizing Eurorack panel layouts across tools

```bash
# TODO: create config file for new panel
# urack init
# TODO: move footprints into position based on computed locations
# urack place
# print locations of elements
urack compute
# update the graphics svg with the computed coordinates
urack sync
# TODO: create a pcbnew file for the panel (also convert all svg graphics to paths and hide reference layers)
urack generate
# TODO: generate separate gerber files for panel and all boards
# urack gerbers
```
