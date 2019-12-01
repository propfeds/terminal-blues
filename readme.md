# Terminal Blues: A POWDER Tileset in CP437

## by PropFeds

The Hacklike reimagined in a deep blue terminal aesthetic. Featuring:

- Terrain, monsters and items in Code Page 437/Extended ASCII/ANSI[^1]
- (??? Heresy) Spell icons completely in 14px pixel-art
- Custom fonts: Head to Options > Fonts in-game to change the font.
  - Brass Blues: The Brass font with a new blue coat of paint.
  - Classic: Replaced by the font from the MSX machines.
  - Light (listed in Options as Heavy, but [why?](docs/quirks_questions.md?#the-reason-the-heavy-and-light-fonts-are-swapped): Replaced by Blightbulb, a custom font.

## Instructions

Head to your favourite release and download, or clone the master to catch any work-in-progress changes, as well as obtain the holy source of the tileset and extra content. If you have decided to clone, the tileset is in [export](export/).

Terminal Blues comes with at least one variant:

- blues: The regular Terminal Blues experience.
- true_blues: Maybe a little bit different of an experience? Does not unlock any full terminal power.

On Windows, Mac, Linux:

- Create a folder in your POWDER directory named `gfx`.
- Copy the bmps in your desired variant to `gfx`.
- Some variants contain optional features. Override in `gfx` to apply.
  - equipment: Will display worn equipment on the @ tile.
- Within POWDER, go to Options > Tiles > From Disk.

On handheld versions: You'll need to compile the game with this tileset included.

## Screenshots

1.1: Spelling Reform is under construction. Screenshots may not be final!

![Screenshot 0](extras/presskit/screenshot-0.png "Under Siege")

![Screenshot 1](extras/presskit/screenshot-1.png "The Big B")

![Screenshot 2](extras/presskit/screenshot-2.png "Space Odyssey")

## Feedback

Feedback is much appreciated. Here are the ways you can give them:

- Post an issue on GitHub
- The [roguelikes Discord](https://discord.gg/tJt4kMM), at `#powder`
- My [development guild](https://discord.gg/AxMZJyg), at `#slither-dither`.

## Documentation

Be noted, markdown (`.md`) documents can be opened in a text editor.

[Full Changelog](docs/changelog.md)

[Exporting Instructions](docs/exporting.md)

[Quirks and Questions](docs/quirks_questions.md)

[Tile List](docs/tilelist.md)

### Footnotes

[^1]: Some items have custom textures for ease of identification.
