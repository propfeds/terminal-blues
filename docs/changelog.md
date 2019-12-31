# Changelog

## 1.1: Spelling Reform

### Main Features

- **Revamped *a lot of* spell icons**
- **New fonts!** Current font listing:
  - **Brass:** Brass Red
  - **Classic:** A modification of the IBM CGA thick font
  - **Heavy:** Eclipse, custom font
  - **Light:** Blightbulb, custom font
  - **Shadow:** The regular game's Heavy font, for maximum readability
- **New variants!**
  - **Protea:** the First Guardian of the True Blues,
  who attempts to aid those with red cone proficiency.
  - **Deutzia:** the Second Guardian has arisen
  to guide the ones of deficient green cones.
- Better support for **contributing**
- All entities now have **outlines** in order to not be swallowed up by background traps

### Fixes

- Hopefully a better looking changelog
- Burning tree tiles not having background
- Realigned and added shadows to hashes in some alphabets
- Orc and Hill Orc having swapped colours

### Colours

- **Blues:** Heavily tweaked:
  - **(since v1.1b5)** Converted the palette to 5-bit (why see wig!)
  - **(2)** Pure Green: Reduced alpha (no longer burns eyes)
  - **(3-6)** Red Shades: Reduced value
  - **(7-8)** Yellows: Reduced value (Gold looks brassier)
  - **(9)** Wood Green: Slightly brighter
  - **(10-11)** Greens: Reduced value
  - **(12)** Teal: Reduced saturation and value, and shifted hue towards green
  - **(13)** Iron Blue: Reduced saturation and value
  - **(16)** Deep Blue: Reduced saturation
  - **(20)** Violet: Reduced saturation, increased value, shifted hue to blue
- **Protea (Protanopia/Protanomaly):** Spawned:
  - Based on Blues 1.1b6
  - **(9-11)** All greens have been shifted to purple
- **Deutzia (Deuteranopia/Deuteranomaly):** Spawned:
  - Based on Blues 1.1b6
  - **(9-11)** All greens have been shifted to jade
- **Colour scheme changes:**
  - Confirmation/blessed items from green to blue
  - As an experiment, (6) pink flesh is no longer used in `dungeon16.bmp`,
now replaced by the (7) yellow male skin
    - Shitomi: from (6) to (20) violet
  - Minimising use of (3) burgundy:
    - Dirt path from (3) to (9) wood green
    - On the contrary, torch body from (5) orange to burgundy
  - Minimising use of (14) brick blue:
    - Increased contrast between (13) Orcs and (14->15) Hill Orcs
    - Increased contrast between (13) Kobolds and (14->15) some Stronger Kobolds
    - Darkened room walls from (14) to (15) stone blue
    - On the contrary, darker walls for Xom spaceship (13->14)
    - Darker regular pits from (14) to (15)
  - Acid consistency
    - Regular slug from (13) iron blue to (8) gold
    - Acid Hand on @ now is fully gold
- Animated tree from (11) poison green to (10) green
- Xom portal, Belweir door, chameleon, teletrap and Y rune to purple
to reflect their magical nature
- Frog from blue to green
- Kite shield from violet to red
- Purple tridude from violet to purple
- Darker cursed inventory items

### Glyphs

- Shifted water tildes down
- Adjusted most of the equipments on the @
- Tile and Text cursors to corner triangles to be consistent with other cursors
- Spell and action icons to be flatter and be consistent with the inventory grid
- UI action buttons now use 12px font instead of 16px
- UI mana icon from a triangle to a diamond star or potion depending on alphabet
- UI Wish/Favourite icons (they reuse the same sprite) from `&` to a star
- UI shield icons (theta) on terminal fonts lost an arm
- UI inventory hashes (artifacts) now have a shadow
- Buckler Theta losing arms
- Kite shield losing ears
- Tower shield to capital Theta **(custom glyph)**
- Realigned and resized some shields on @
- Spiked pits are now spikeless (no more textures)
- Xom portal to capital Omega
- Tree from club to spade
- Insivible slug (stalker) now o without umlauts
- Orc from O with weird strike to O with umlauts

### 1.0.1: Polymorph

New Features:

- UI icons (heart, magic hat, etc.) are now CP437 characters

Fixes:

- Stairs to room blue on UI
- Small terminal black patches leftover in alphabets
- @ potion from iron blue to teal

Colours:

- Water and stone now same shade
- Darker unlearned spell borders
- Changed tridude colours
- Drop shadow on text now southwest instead of southeast
- Action icons for character actions from yellow to teal (because it's more blue)
- Breathing icon from purple to teal
- Animated trees to light green and w/o dark eyes
- Kobold fighter from violet to room blue, because

Glyphs:

- Aflame effect from some weird upside down commas to a double quote
- Better looking amulets and mallets
- Animate Tree spell icon now has red eyes
- Flash spell icon: reduced lens flare

## 1.0: Release

New Features:

- New UI icons (letters) for actions
- New UI icons for spells (No ASCII!)
- Option to enable equipment on @

Fixes:

- Sign not surrounded by floor
- Fixed several blue items into wooden brown
- Iron helmet displaying as silver white instead of iron blue

Colours:

- Modified the entire palette multiple times to please Jeff Lait's mysterious formula for minimap and unlearned spell colours
- Asian male and teal-skinned female
- (Re-)coloured all the books, pots and wands
- Zoul Zucker now violet
- Uncursed slots now leathery grey
- Curse-unknown slots now water blue
- Darker unlit mask
- Leather is now grey
- Wood is now dark green instead of ugly brown
- Consistency: Now all electric enemies are yellow
- Stairs now wall blue

Glyphs:

- Retextured Belweir's altar from some shit to underscore
- Retextured chainmail
- Retextured plaid book for how many umpteen times
- Retextured metal ground and wall
- Retextured multiple UI elements
- Wielded rapiers now as fat as every other weapon
- Drop your daggers!
- Raise your weapons and shields!
- Opaque holes in @ and shields
- Floating eyes glyph removed umlaut on i
- Beelzebub glyph from & to B
- Glowing y-rune glyph from y to Japanese yen
- Traps now solid colour (except spikes)

### 0.2: Raise Your Weapons

- More wooden objects turn brown from wall blue
- Kite shield looks less ugly
- Raise your weapons!

### 0.1: Arcane Dust

- No longer a difference between men and women (now both silvery white)
- Lighter silver, iron and wall shade
- Fixed winged shoes (now brown instead of wall blue)
- Magic/sapphire shade is now bluer and brighter
- Grid bug, storm elemental and dragon now purple instead of magic blue
- Magic attacks now are actual ascii characters instead of custom glyphs, and now uses the ice blue shade
- On the technical side, an Aseprite script (Lua) has been created for the exporting of the tileset
- Blood red shade more violent/vibrant

## 0.0: Spawn

- Spawned
