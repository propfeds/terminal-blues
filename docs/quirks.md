# Quirks and Questions

## To work without branches

I use no extra branches, because image layers are easier to manage, and are sort of a form of source control.

## My Heavy and Light fonts are swapped

As of v118, Jeff's font listing in-game is swapped on those two when using a loaded tileset.
'Official' tilesets (ones that are included on compile) have the correct listing.

## My in-game colours are ugly

POWDER converts the palette into 5-bit RGB to be GBA compatible.
That's why the palette on the social cards and such looks different from in-game.

## Symbols that don't follow the roguelike semiotics (list unfinished)

- `#`   Boulders
- `░▒▓` Walls (`░` also for smoke)
- `⌂`   Potions
- `Θ`   Shields
- `♫`   Scrolls
- `x`   Spiders
- `ç`   Scorpions
- `o`   Slugs (*not* Oozes)
- `ö`   Orcs

## Turtles being `q`s and `Q`s is unusual

`quy` is how the letter `q` is pronounced in Vietnamese.

`quy` is also a Han-Viet (Chinese loan) word meaning `turtle`.

## Really the quirkiest thing

That it all seems to be backwards.

In almost every icon/interface design I see in the industry, shadows are dropped south-east.
Here I draw them facing south-west, well before seeing those designs, so they stuck.

In every font barring a few characters of some, odd-width characters align 0.5 pixels off to the left (of an even box width).
I draw my fonts with them 0.5 pixels off-centre to the right.

These two things are linked as well.
Alignment to the left leaves more open space for dropping shadows to the bottom-right.

And here I am, doing it backwards.
And it stuck.
I have to make an effort to tweak other people's fonts in order to fit Terminal Blues.

For what?
Are there hidden guidelines I'm supposed to follow?
At least I'm happy to be quirky.
