# Contributing

## Requirements

Should you feel the need to edit the tileset to your liking, the holy source is there for you. All you need is:

- A copy of Aseprite:

  - Buy from [Steam](https://store.steampowered.com/app/431730/Aseprite), or
  - Compile from the [repo](https://github.com/aseprite/aseprite).
- An installation of [Python](https://www.python.org) (for the font).

  - With the [Pillow](https://pypi.org/project/Pillow) package.

## Terminal Blues

The Terminal Blues [export script](../scripts/export.lua) does not require an installation of Lua.

1. Move `export.lua` to Aseprite's script folder
(`%appdata%/Aseprite/scripts/` for Windows).
2. Edit `master.aseprite` at your own will.

  - Note that inside the sprite there are layers with prefixing numbers.
  They are the layers' order within their folders (counting from 1).
  These layers will be toggled in the script,
  so make sure the orders in the sprite and the script match.
  - **Creating new fonts:** first do the little dings [below](#the-fonts),
  then here are those little *post-processing* things:

    - Advised to align odd-width characters to the right, to make way for:
    - Shadows: dropped south-west, against industry standards of south-east.
    They're also coloured with max green (index 2),
    but I've decreased its alpha so it won't burn your eyes.
    - Draw a **heart**, a **mana-resembling symbol**, a **return** symbol,
    cardinal **arrows**, an **upside-down question mark**, a **theta**,
    and a **cursor block** for your font too.
    - Colour your heart *red* (index 4), your mana star *purple* (index 21),
    your theta *iron blue* (index 13), the upside-down question mark whatever
    (I chose *green* (index 10) because originally it was a tridude,
    and will replace the depth symbol in Xom's spaceship),
    and the capital D (depth) (right of return symbol) *room blue* (index 14)
    - And if you ever want to not export an extra alphabet, just hide the layer
    (reminder, they're inside layer `[4][1][6]`).
3. Open `master.aseprite`, and make sure it is the active window in the program.
4. Go to Files > Scripts > `export`.
The export should appear within the `export` folder of the repository.

## The fonts

The [CP437 to POWDER script](../scripts/cp437_to_powder.py) converts an CP437/ANSI bitmap to the POWDER format.
Only works with square fonts since POWDER uses them.

1. Cook up a new font!
2. Export to `<something>.png`.
3. Run the `cp437_to_powder` script and input your `<something>`.
A `<something>_powder.png` will appear before your eyes.
4. Stick it onto `master.aseprite`, then do all sorts of *post-processing* on it like how it should be done in other alphabets.

## Palettes

The [eight divider script](../scripts/eight_divider.py) will convert your palettes to 5-bit. Only supports `.hex` palettes.
Just run it and input the palette name, and it'll spit out an uglier one!
