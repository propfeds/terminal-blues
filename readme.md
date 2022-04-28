# Terminal Blues: A POWDER Tileset in CP437

![banner](extras/images/press_kit/embed-2x.png "Banner")

The Hacklike reimagined in a deep blue terminal aesthetic. Featuring:

- Terrain, monsters and items are entirely within Code Page 437
(/Extended ASCII/ANSI/etc.)[^1](#footnotes)
- (??? Heresy) Spell icons completely in 14px pixel-art
- Custom fonts: A very red Brass, plus two new fonts:
[Blightbulb](extras/lore/blightbulb.md) and [Eclipse](extras/lore/eclipse.md)!
- Questionable colourblind support

## Instructions

**Download latest release:**
[1.1.1](https://github.com/PropFeds/terminal-blues/releases/latest) (2020-09-27)

**Master:** Tileset is contained within `./export`.

Terminal Blues comes with a few **variants:**

- `blues`: The regular Terminal Blues experience.
- `true_blues`: The three Guardians of the True Blue, who attempt to aid those
with colour deficiencies. Please do give feedback.
  - `protea`: The guardian of the long cones (protanopia).
  - `deutzia`: The guardian of the medium cones (deuteranopia).
  - `tritoma`: The guardian of the short cones (tritanopia).

**Windows, Linux, Mac:**

- Create a `gfx/` subdirectory inside your POWDER installation, and move the
`.bmp`s of the desired variant there.
The `.bmp` files should be directly in `gfx/`, not in a subdirectory thereof.
- Optional features: Override in `gfx/` to apply.
  - `equipment`: Will display worn equipment on the @ tile.
  - `extra_alphabets` (Extra download): Rename desired alphabets to one of the
  regular alphabet names and override.
- Within POWDER, go to Options > Tiles > From Disk.
- To change the font, head to Options > Fonts.

**Nintendo DS:**

- Same instructions as above, to the `DATA/POWDER/gfx/` directory on the root
of your flash cartridge.
- On startup it should report detecting the tileset, and a new menu option
should show up.

**Gameboy Advance:**
From Jeff Lait,

> The splicebmp program was used to patch a POWDER ROM with these tiles.
> It is no longer supported. GBA users that want a new tileset need to recompile
> from scratch.

**Other Versions:**
You'll need to compile the game with this tileset included.

## Screenshots

![screenshot-0](extras/images/press_kit/screenshot-0.png "Under Siege")

> Under Siege (Blightbulb font)

![screenshot-1](extras/images/press_kit/screenshot-1.png "The Big B")

> The Big B (Extra Minecraft font)

![screenshot-2](extras/images/press_kit/screenshot-2.png "Mass Mage")

> Spelling Reformed (1.1.0)

![screenshot-3](extras/images/press_kit/screenshot-3.png "rEkkkT?")

> rEkkkT? (Eclipse font)

![pals](extras/images/press_kit/palettes.png "Palettes")

> Palettes (from left): Blues v1.1b6, Protea v0.07, Deutzia v0.02, Tritoma v0.02

![spells](extras/images/press_kit/spells-2x.png "Spell Wheel")

> Spell Wheel

## Documentation

[Full Changelog](docs/changelog.md)

[Master Sprite Navigation](docs/navigation.md)

[Quirks](docs/quirks.md)

[Scripts](docs/scripts.md)

[Tile List](docs/tilelist.md)

## Contact

Whether for feedback or for a simple Internet hug, these are the available
methods of arcane communication:

- Post an issue on GitHub
- The [Roguelikes Discord](https://discord.gg/tJt4kMM), at `#powder`
- My [cult 👀](https://discord.gg/AxMZJyg), at `#slither-dither`

## Credits

- The `Terminal Blues` tileset is licensed under [**CC-BY-SA 4.0**](license.md).
- Base fonts (alphabets):
  - `brass` and `classic` were derived by Markus Maier from the window's (sic)
  console font, licensed under **CC-BY 3.0**.
  - `shadow` was created by Markus Maier, licensed under **CC-BY 3.0**.
  - `light` and `heavy` were created by PropFeds, and are **unlicensed**.
- Extra fonts (alphabets): Credit goes to their respective designers.
  - `cheepicus` was created by Cheepicus.
  - `ibm_cga_thin` was created by IBM.
  - `minecraft` was created by JD Graphics.
  - `msx` was derived by Zaratustra from the MSX computers.
  - `textmachine_handwriting` was created by Polyducks, licensed under **CSL**.
  [Link](https://polyducks.itch.io/textmachine-handwriting-font)
- Scripts:
  - [`table_persistence`](data/scripts/lua_ase/export/lib/table_persistence.lua)
  was created by Gerhard Roethlin, licensed under **MIT**.
  - Every other script is **unlicensed**.

## Footnotes

1. Some items have custom textures for ease of identification. Heresy.
