# Exporting

Should you feel the need to edit the tileset to your liking, the holy source is there for you. All you need is:

- A copy of Aseprite, bought from Steam or compiled from the repo.
- An installation of Python (for the font).

## Source
There are two aseprite files within the repository: [Terminal Blues](../master.aseprite) and the font of [Blightbulb](../fonts/blightbulb/blightbulb_8x8.aseprite).

### Terminal Blues
The Terminal Blues [export script](../terminal_blues_export.lua)'s name should suggest what it does.

0. Edit `master.aseprite` to your own will.
1. Copy or move it to Aseprite's script folder (`%appdata%/Aseprite/scripts/` for Windows).
2. In the script folder, create a file named `dir.txt` only containing the Terminal Blues directory.
3. Open `master.aseprite` inside Aseprite. Make sure `master.aseprite` is the focused window.
4. Go to Files > Scripts > `terminal_blues_export`. The export should be inside the Terminal Blues directory.

### Blightbulb the Font
The Blightbulb [export script](../fonts/blightbulb/blightbulb_export.py) also does what it says! Requires an installation of Python.

0. Edit `blightbulb_8x8.aseprite` to your own will.
1. Run the export script. A wild `alphabet_classic_raw.png` will appear before your eyes.
2. Do all sorts of post-processing on it like how it should be done in other alphabets, then stick it into `master.aseprite`.