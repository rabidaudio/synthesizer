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
# TODO: add the panel to PCBNew (also convert all svg graphics to paths and hide reference layers)
urack generate
# TODO: generate separate gerber files for panel and all boards
# urack gerbers
```


Currently KiCad must be open. However, with KiCad 11 you'll be able to start it headless. The `open_document` method isn't yet in a released version `kicad-python` (despite what the docs say).

Standardize units to nm
Refactor classes to make more sense
