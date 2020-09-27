# Quirks

As well as questions, complaints, etc.

## Colourblind variants are lazy

What I use for colourblind tests:
[JS Colorblind Simulator](https://github.com/MaPePeR/jsColorblindSimulator)

It would seem so if all it took was hue-shifting all the greens?

Truth is, I have to take care of the main palette too, and I'll have you know
it is certainly *not* easy to balance *twenty* colours for the colourblind.
Every guide I have seen only cover colourblind balancing for *three to five*
colours on a website, not twenty in a video game.

I don't consider myself a really good palette creator, but luckily the default
palette is decent already.

## My colours are ugly

POWDER converts the palette into 5-bit RGB to be GBA compatible.
With the advent of the blues palette 1.1b5, the colour palette is now converted
to 5-bit, which means `social_card = in_game = ugly`.

## My Heavy and Light fonts are swapped

As of v118, the game is bugged to swap those two fonts when loading from disk.
Tilesets that are included on compile are loaded correctly.

## Style (or the Lack Thereof)

You might be unsurprised to find that the tileset has no style, and just looks
barely decent for the sake of being decent. That is fine.
Barely any research was done, I mostly just chose barely interesting ideas.
Even the Blues pun doesn't extend that far beyond the chosen palette.

Again all of that is fine too. The main reason being I don't need to impose
extra personality on top of the base game.

Or the laziness to research. *Don't* stay tuned for my future stylish projects.

I'll give you a few keywords: Grape, Juice, grape juice, 150 grams of that
anxiety, circles, and the desire to assign the feather to the weather.

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

## To work without branches

I use no extra branches, because image layers are easier to manage, and are
sort of a form of source control anyway.
