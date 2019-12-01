# Exporting

## Requirements

Should you feel the need to edit the tileset to your liking, the holy source is there for you. All you need is:

- A copy of Aseprite:
  - Buy from [Steam](https://store.steampowered.com/app/431730/Aseprite), or
  - Compile from the [repo](https://github.com/aseprite/aseprite).
- An installation of [Python](https://www.python.org) (for the font).
  - With the [Pillow](https://pypi.org/project/Pillow) package.

There are two aseprite files within the repository: [Terminal Blues](../master.aseprite) and the fonts of [Blightbulb & Leafletter](../fonts/blightbulb/blightbulb_leafletter.aseprite).

## Instruction for Terminal Blues

The Terminal Blues [export script](../export.lua)'s name should suggest what it does. Does not require an installation of Lua.

1. Edit `master.aseprite` at your own will.
Note that inside the sprite there are layers with prefixing numbers.
They are the layers' order within their folders (counting from 1).
These layers will be toggled in the script, so make sure the orders in the sprite and the script match.
2. Copy or move `export.lua` to Aseprite's script folder (`%appdata%/Aseprite/scripts/` for Windows).
3. Open `master.aseprite`, and make sure `master.aseprite` is the currently active window within the program.
4. Go to Files > Scripts > `export`. The export should appear within the `export` folder of the repository.

## Blightbulb & Leafletter the Fonts

The [CP437 to POWDER script](../fonts/cp437_to_powder.py) converts an ANSI bitmap to the POWDER format. Only works with square fonts since POWDER use them.

1. Edit `blightbulb_leafletter.aseprite` at your own will, or cook up a new font!
2. Export to `<font_name>.png`.
3. Run the `cp437_to_powder` script and input your `<font_name>`.
A `<font_name>_powder.png` will appear before your eyes.
4. Do all sorts of post-processing on it like how it should be done in other alphabets, then stick it onto `master.aseprite`.
