# Quirks and Questions

## To work without branches

I use no extra branches, because image layers are easier to manage, and are sort of a form of source control.

# Quirks

As well as questions, complaints, etc.

## My Heavy and Light fonts are swapped

As of v118, Jeff's font listing in-game is swapped on those two when using a loaded tileset.
'Official' tilesets (ones that are included on compile) have the correct listing.

## My colours are ugly

POWDER converts the palette into 5-bit RGB to be GBA compatible.
With the advent of the blues palette 1.1b5, the colour palette is now converted to 5-bit, which means `social_card = in_game = ugly`.

## Colourblind variants are lazy

What I use for colourblind tests: [JS Colorblind Simulator](https://github.com/MaPePeR/jsColorblindSimulator)

It would seem so if all it took was hue-shifting all the greens?

Truth is, I have to take care of the main palette too,
and I'll have you know it is certainly *not* easy to balance *twenty* colours
for colourblind compatibility.
Every guide I have seen only cover colourblind balancing for *three to five* colours, not twenty.

I don't consider myself a really good palette creator,
but luckily the default palette is decent already.

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

## Turtles being qs and Qs is unusual

`quy` is how the letter `q` is pronounced in Vietnamese.

`quy` is also a Han-Viet (Chinese loan) word meaning `turtle`.
