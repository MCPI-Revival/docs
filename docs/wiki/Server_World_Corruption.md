![](CorruptionOfTBR.png "CorruptionOfTBR.png") Data corruption can
effect the world files making the world have strange properties. If a
running server has it's power cut or it's storage device removed, the
world will corrupt, and individual 1 block wide slices of land will
seperate from each other with a 1 block wide gap in between each slice.
The gamemode will also be turned to creative.

Data corruption occurs because the `level.dat` file is reset, which
clears the inventory, seed, and gamemode. Due to the changed seed, the
biome colors will not match with the actual biomes. It is advised to
back up your `level.dat` files if you want to revert this.

Since version 3.0.0, the mechanism for sending server chunks has changed
and the blocks will no longer become corrupted, however the biomes will
still be corrupted, as they depend on the seed.