# Terminal Blues: A POWDER Tileset in CP437

## by PropFeds

The Hacklike reimagined in a deep blue terminal aesthetic. Featuring:

- Terrain, monsters and items in Code Page 437/Extended ASCII/ANSI[^1]
- (??? Heresy) Spell icons completely in 14px pixel-art
- Custom fonts: [Blightbulb](extras/lore/blightbulb.md) and [Eclipse](extras/lore/eclipse.md) to replace the [Light and Heavy](docs/quirks.md#my-heavy-and-light-fonts-are-swapped) fonts!
- Questionable colourblind support

## Instructions

Latest release: [1.0.1](https://github.com/PropFeds/terminal-blues/releases/latest)

Latest alpha/beta: [1.1.0-alpha.3](https://github.com/PropFeds/terminal-blues/releases/tag/1.1.0-alpha.3)

Master: Tileset is contained within `export` folder.

Terminal Blues comes with a few **variants:**

- `blues`: The regular Terminal Blues experience.
- `true_blues`: The three Guardians of the True Blue,
who attempt to aid those with colour deficiencies.
  - `protea`: The guardian of the long cones, now available for testing.
  - `deutzia`: The guardian of the medium cones, extremely in need of testing.
  - `tridude`: ???

**Windows, Linux, Mac:**

- Create a folder in your POWDER directory named `gfx`.
- Copy the bmps in your desired variant to `gfx`.
- Optional features: Override in `gfx` to apply.
  - `equipment`: Will display worn equipment on the @ tile.
  - `extra_alphabets`: Rename to one of the alphabets and override.
  All the fonts are copyrighted by their respective owners.
- Within POWDER, go to Options > Tiles > From Disk.
- To change the font, head to Options > Fonts.

**Handheld versions:** You'll need to compile the game with this tileset included.

## Screenshots

1.1: Spelling Reform is under construction. Screenshots may not be final!

![screenshot-0](data/press_kit/screenshot-0.png "Under Siege")

*Under Siege (Blightbulb font)*

![screenshot-1](data/press_kit/screenshot-1.png "The Big B")

*The Big B*

![screenshot-2](data/press_kit/screenshot-2.png "Space Odyssey")

*Space Odyssey*

![screenshot-3](data/press_kit/screenshot-3.png "rEkkkT?")

*rEkkkT? (Eclipse font)*

## Documentation

Be noted, markdown (`.md`) documents can be opened in a text editor.

[Full Changelog](docs/changelog.md)

[Contributing](docs/contributing.md)

[Quirks](docs/quirks.md)

[Tile List](docs/tilelist.md)

## Contact

Whether for feedback or for a simple Internet hug, these are the ways:

- Post an issue on GitHub
- The [Roguelikes Discord](https://discord.gg/tJt4kMM), at `#powder`
- My [cult 👀](https://discord.gg/AxMZJyg), at `#slither-dither`

### Footnotes

[^1]: Some items have custom textures for ease of identification.
