# Quirks

As well as questions, complaints, etc.

## How colourblind friendly

What I use for colourblind tests:
[JS Colorblind Simulator](https://github.com/MaPePeR/jsColorblindSimulator)

It would seem easy if all it took was hue-shifting all the greens?

It's a bit harder than you think, considering that it is certainly not easy to
balance twenty colours in a palette. Most websites use only three to five
colours as their palette for simplicity.

How does this affect the game? Ask the elemental dragons.

## How POWDER displays colour

POWDER converts the palette into 5-bit RGB to be GBA (probably) compatible.
When creating a new palette, make sure to use the 5-bit conversion script to
get into the right design space.

The main pain point though, would be the spell wheel. When the player is short
on mana, spell icons will grey out, choosing suitable (nearest, low-saturation)
colours to paint the icons.

Colours on the minimap are also determined from the palette. Please test them
extensively.

## My Heavy and Light fonts are swapped

As of v118, the game is bugged to swap those two fonts when loading from disk.
Tilesets that are included on compile are loaded correctly.

## Symbols that don't follow the roguelike semiotics (list unfinished)

- `#`   Boulders
- `░▒▓` Walls (`░` also for smoke)
- `⌂`   Potions
- `Θ`   Shields
- `♫`   Scrolls
- `x`   Spiders (regularly something like `m`)
- `ç`   Scorpions
- `o`   Slugs (oozes, o-blobs)
- `Ö`   Orcs
- `qQ`  Turtloids*

*`quy` is the name of the letter `q` in Vietnamese. `quy` is also a Han-Viet
(Chinese loan) word meaning `turtle/tortoise`.

## Why even open source

I don't actually know. I did not make much use of it. I imagine it would be more
useful with making music, where you don't have access to layers, than with
drawing.
