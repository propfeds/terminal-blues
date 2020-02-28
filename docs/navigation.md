# Navigation

This document will guide you through the structure of the master file.

## Introduction

Aseprite supports layers, and in Lua code, they are indexed from 1 onwards and
from bottom to top, for example: `sprite.layers[3]`.

Some layers can be a folder containing other layers. Nested layers in Lua can be
accessed by class member notation, such as: `sprite.layers[3].layers[1]`.
In this document, these expressions will be shortened to just indexes: `[3][1]`.

In the master file, some layers will have names prefixed with their layer index,
such as `[3] UNDER REFERENCE`. It is not advised to change these these layers'
orders, as they are referenced in exporter code.

## [1] Background

The base black background layer. It is locked and should not be modified.

## [2] Actually Useful SOURCE CONTROL

Worse than Source Control are Image Editor Layers. These are generally for old
iterations, and there have rarely been cases of digging one of these layers from
the dead, but backup is certainly useful.

Inside are the sublayers of 'Failed Experiments', 'Alphadeds' and co.

## [3] UNDER REFERENCE

Reference folder containing tools like backgrounds, trap underlays and more.

Is temporarily disabled in the export script.

## [4] MASTER

These are the things that will be exported.

### [4][1] Alphabets

Exports to fonts (`alphabet_*.bmp`). This folder contains:

1. Brass
2. Classic
3. Heavy
4. Light
5. Shadow
6. Extra Alphabets
7. Hashes: Characters denoting artifacts in the inventory.

#### [4][1][6] Treska of the Extra Alphabets

Exports to extra alphabets. Within this layer, a sublayer will be exported if it
is visible. All extra alphabets are currently disabled to cut down export time.

To add a new extra alphabet, just create a layer here and draw.

### [4][2] Dungeon

Exports to `dungeon16.bmp`. This folder contains:

1. Outlines: Entity outlines, so they do not get buried by background traps.
2. dungeon16
3. Bosses: 2x2 entities. The set currently uses big letters for them.
4. Renovations
5. Constants: The User Interface.

### [4][3] Minis

Exports to `mini16.bmp` and `minif16.bmp`, which display clothing on characters.
The default version of Terminal Blues has the characters naked, but there is an
extra folder containing clothed versions of these files.

### [4][4] Sprites

Exports to `sprite16.bmp`. Contains some UI elements, and spell icons.

1. 14px Base Squares: For spells and action icons.
2. UI Elements
3. Action Font: Text on the action icons.
4. Spelling Reformed: My blood and soil, divided into elemental categories.

### [4][5] Extras

The equivalent of the `extras.bmp` found in Akoi Meexx' tileset, but have not
been used in the game. Maybe some day we could have treasure chests.

## [5] LAB

Contains experiments.

##  [6] OVER REFERENCE

Reference folder containing a few notes in the form of layer names, and images
from various games dithered to Terminal Blues' palette for reference.

Is temporarily disabled in the export script.
