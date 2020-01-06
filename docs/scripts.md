# Scripts

Various tools to aid the development of the tileset.
Notes:
- `./` refers to the repo's root directory.
- Scripts' directories are relative to their language's folder (such as `py/`).
- Scripts' rerequisites also include their language's prerequisites.

## Lua (Aseprite)

Is a weirdly cool language that I have developed a love-hate relationship with.
Its main downside is that every variable or object is just a reference.
The Lua (Aseprite) (as if I would make grafx2 scripts!) script folder is a set
of tools used inside Aseprite in order to streamline the development process.

**Location:** [`./data/scripts/lua_ase/`](../data/scripts/lua_ase/)

**Prerequisites:**
- A copy of [Aseprite](https://www.aseprite.org):
  - Buy from [Steam](https://store.steampowered.com/app/431730/Aseprite), or
  - Compile from the [repo](https://github.com/aseprite/aseprite).
- A Lua interpreter is *not* required.

**Instructions:**
1. Move the folder to Aseprite's script folder (`%appdata%/Aseprite/scripts/`
for Windows) or any other folder nested inside it.
2. In Aseprite, go to `Files > Scripts` to access your scripts.

### export

Latest version: 1.02

A fairly robust tool to aid with exporting. Compared to the last edition,
this new version cuts down time on future exports, allows selective exports,
and reduces palette management.

**Caution:** Every time the script changes the sprite's palette, it creates a
transaction, which will alter your undo history.

**Location:** [`export/`](../data/scripts/lua_ase/export/)

**Prerequisites:**
None

**Instructions:**
1. Run `main.lua` within Aseprite, while the active window is a sprite in `./`
(for example, `./master.aseprite` or `./master_true_blues.aseprite`).
2. The export window will look something like this:
![export-1.02](../extras/images/export-1.02.png "Export Window (1.02)")
3. Navigation:
  - Repository: Exports to `./export/`.
    - Palettes (boolean): Will toggle exports of palettes. Useful when only
    working on one palette, to cut down export time.
    - Versions (string): Searches in the `./data/palettes/` directories for
    palette versions.
  - Custom Directory: Will create a `gfx/` inside the chosen directory.
    - Export (boolean): Toggles export of the custom directory.
    - Directory (string): The directory.
    - Palette (array choice): the palette used for exporting to custom.
    If `master` is chosen, then the export uses the current palette in sprite.
    Else the palette version will be controlled by the version fields above.
    - Options (boolean): Akin to the options in the binaries.
      - Override gfx: If `true` then all the options will override in the
      base directory (`gfx/`), else the options will be exported into nested
      folders.
      - @ equipment: Shows equipment on the @ character.
      - Extra alphabets: Extra copyrighted fonts for your consumption.
        - Fonts in: Will match the font out below it to replace if `override`.
        - Fonts out: Will be replaced by the font in above it if `override`.
4. Hit the `Export` button! If it succeeds, the settings will be saved in
`./data/config.lua` for future consumption.
5. A message will also pop up saying how many transactions were created.
Hit `Ctrl+Z` the exact number of times to undo all palette changes.

### eight_divider.lua

The `eight_divider` script will convert your sprite's current palette to 5-bit.
Will not convert pure white (alpha 255) or pure green (alpha 64).

**Location:** [`eight_divider.lua`](../data/scripts/lua_ase/eight_divider.lua)

**Prerequisites:**
None

**Instructions:**
Just run it. The new palette will appear darker since the script rounds the
colours down, and so do POWDER, so this will be almost `WYSIWIG`
(except that pure white will also be rounded down in POWDER, and pure green will
have full opacity due to the nature of the `.bmp` format).

## Python

Is a cool language that can do many things. Its main downsides are its speed
and the fact that it is so easy to program in (masochists hate it!).
The Python script folder is a set of tools used outside of Aseprite that
typically deal with external files.

**Location:** [`./data/scripts/py/`](../data/scripts/py/)

**Prerequisites:**
- An installation of [`Python`](https://www.python.org).

**Instructions:**
Just run the scripts (try double-clicking).

### cp437_to_powder.py

This script converts an CP437/ANSI bitmap to the POWDER format. Only works with
square fonts since POWDER uses them.

**Location:** [`cp437_to_powder.py`](../data/scripts/py/cp437_to_powder.py)

**Prerequisites:**
- The `pathlib` package (which is probably available by default).
- The [`Pillow`](https://pypi.org/project/Pillow) package:
  - Enter `pip install Pillow` in the command-line.
  - Note that the package is called `PIL` when you import it. This is because
  `Pillow` is a continued fork of `PIL`, the Python Imaging Library.

**Instructions:**
1. Cook up a new font!
2. Export to `<font_name>.png`.
3. Run the script, and input the relative path from the script to your font
followed by the `<font_name>` (without the `.png`).
A `<font_name>_powder.png` will appear before your eyes, in the same directory
as the original font.
4. Stick it onto `master.aseprite`, then do all sorts of *post-processing*
on it like how it should be done in other alphabets.

### eight_divider (deprecated)

As a Aseprite-independent solution, the deprecated `eight_divider` script will
convert your palettes to 5-bit. Only supports `.hex` palettes.

**Location:** [`eight_divider.py`](../data/scripts/py/eight_divider.py)

**Prerequisites:**
- The `pathlib` package (which is probably available by default).

**Instructions:**
Run the script, and input the relative path from the script to your palette
followed by the `<pal_name>` (without the `.hex`).
A `<pal_name>_5bit.png` will appear before your eyes, in the same directory
as the original palette.
