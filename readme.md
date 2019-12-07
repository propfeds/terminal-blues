# Terminal Blues: A POWDER Tileset in CP437

## by PropFeds

The Hacklike reimagined in a deep blue terminal aesthetic. Featuring:

- Terrain, monsters and items in Code Page 437/Extended ASCII/ANSI[^1]
- (??? Heresy) Spell icons completely in 14px pixel-art
- Custom fonts: Head to Options > Fonts in-game to change the font.

  - Brass Blues: The Brass font with a new blue coat of paint.
  - Classic: Where has it gone?
  - Light ([or Heavy?](docs/quirks.md#my-heavy-and-light-fonts-are-swapped)):
  Replaced by Blightbulb, a custom font.

## Instructions

Download the [latest version](https://github.com/PropFeds/terminal-blues/releases/latest/).

Terminal Blues comes with a few variants:

- `blues`: The regular Terminal Blues experience.
- `true_blues`: The three Guardians of the True Blue,
who attempt to aid those with colour deficiencies.

  - `protea`: The first guardian, now available for testing.
  Intended for those with long cone deficiency (protanomaly/protanopia).
  - `deuterium`: ??
  - `tridude`: ???

On Windows, Mac and Linux versions:

- Create a folder in your POWDER directory named `gfx`.
- Copy the bmps in your desired variant to `gfx`.
- Optional features: Override in `gfx` to apply.

  - `equipment`: Will display worn equipment on the @ tile.
  - `extra_alphabets`: Rename to one of the alphabets then override.
  I'm also afraid of copyright.

    - `cheepicus`: by Cheepicus.
    - `ibm_cga_thin`: essentially the thin version of the default Shadow font.
    - `minecraft`: by JD Graphics.
    - `msx`: from the MSX machines.
    - `textmachine_handwriting`: by Polyducks.
- Within POWDER, go to Options > Tiles > From Disk.

On handheld versions: You'll need to compile the game with this tileset included.

## Screenshots

1.1: Spelling Reform is under construction. Screenshots may not be final!

![Screenshot 0](extras/presskit/screenshot-0.png "Under Siege")

![Screenshot 1](extras/presskit/screenshot-1.png "The Big B")

![Screenshot 2](extras/presskit/screenshot-2.png "Space Odyssey")

## Documentation

Be noted, markdown (`.md`) documents can be opened in a text editor.

[Full Changelog](docs/changelog.md)

[Exporting Instructions](docs/exporting.md)

[Quirks](docs/quirks.md)

[Tile List](docs/tilelist.md)

## Contact

Whether for feedback or for a simple Internet hug, these are the ways:

- Post an issue on GitHub
- The [roguelikes Discord](https://discord.gg/tJt4kMM), at `#powder`
- My [development guild](https://discord.gg/AxMZJyg), at `#slither-dither`

### Footnotes

[^1]: Some items have custom textures for ease of identification.
