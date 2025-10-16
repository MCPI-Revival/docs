This list covers all blocks and their variants. A huge portion of this
was written by [NikZapp](https://github.com/nikzapp) and also a large
amount of the info came from [Martin O'
Hanlon](https://github.com/martinohanlon/) who provided info on block
rotations, and [Raspbery Pi
Spy](https://www.raspberrypi-spy.co.uk/2014/09/raspberry-pi-minecraft-block-id-number-reference/).

It is important to note that even if a block does not depend on the
data(damage) value, it is still stored inside the block. This allows to
encode data in ordinary blocks like stone which will not be visible.

``` text
0: air
- This block does not depend on data values

1: stone
- This block does not depend on data values

2: grass
- This block does not depend on data values

3: dirt
- This block does not depend on data values

4: cobblestone
- This block does not depend on data values

5: planks
- This block does not depend on data values

6: sapling
- 0, 3, 4, 7, 8, 11, 12, 15: oak sapling
- 1, 5, 9, 13: spruce sapling
- 2, 6, 10, 14: birch sapling

7: bedrock
- This block does not depend on data values

8: water_flowing
- 0: full block of water
- 1: level 7 water (highest level)
- 2: level 6 water
- 3: level 5 water
- 4: level 4 water
- 5: level 3 water
- 6: level 2 water
- 7: level 1 water (lowest level)
- 8-15: block of water flowing down

9: water
- 0: full block of water
- 1: level 7 water (highest level)
- 2: level 6 water
- 3: level 5 water
- 4: level 4 water
- 5: level 3 water
- 6: level 2 water
- 7: level 1 water (lowest level)
- 8-15: block of water flowing down (moves the player down)

10: lava_flowing
- 0: full block of lava
- 1: level 7 lava (highest level)
- 2: level 6 lava
- 3: level 5 lava
- 4: level 4 lava
- 5: level 3 lava
- 6: level 2 lava
- 7: level 1 lava (lowest level)
- 8-15: flowing block of lava


11: lava
- 0: full block of lava
- 1: level 7 lava (highest level)
- 2: level 6 lava
- 3: level 5 lava
- 4: level 4 lava
- 5: level 3 lava
- 6: level 2 lava
- 7: level 1 lava (lowest level)
- 8-15: block of lava

12: sand
- This block does not depend on data values

13: gravel
- This block does not depend on data values

14: gold_ore
- This block does not depend on data values

15: iron_ore
- This block does not depend on data values

16: coal_ore
- This block does not depend on data values

17: log
- 0: oak
- 1: spruce
- 2: birch
- 3-15: oak

18: leaves
- 0, 3, 4, 7, 8, 11, 12, 15: oak leaves
- 1, 5, 9, 13: spruce leaves
- 2, 6, 10, 14: birch leaves

19 is not an accessible block

20: glass
- This block does not depend on data values

21: lapis_ore
- This block does not depend on data values

22: lapis_block
- This block does not depend on data values

23 is not an accessible block

24: sandstone
- 0: normal
- 1: chiseled
- 2: smooth
- 3-15: normal

25 is not an accessible block

26: bed
- 0, 4: bottom part, facing z+
- 1, 5: bottom part, facing x+
- 2, 6: bottom part, facing z-
- 3, 7: bottom part, facing x-
- 8, 12: top part, facing z+
- 9, 13: top part, facing x+
- 10, 14: top part, facing z-
- 11, 15: top part, facing x-

27 ... 29 are not accessible blocks

30: cobweb
- This block does not depend on data values

31: bush
- 0: dead bush
- 1, 2: grass
- 3: fern
- 4-15: grass

32 ... 34 are not accessible blocks

35: wool
- 0: white
- 1: orange
- 2: magenta
- 3: light blue
- 4: yellow
- 5: lime
- 6: pink
- 7: gray
- 8: light gray
- 9: cyan
- 10: purple
- 11: blue
- 12: brown
- 13: green
- 14: red
- 15: black

36 is not an accessible block

37: dandelion
- This block does not depend on data values

38: blue_rose
- This block does not depend on data values

39: brown_mushroom
- This block does not depend on data values

40: red_mushroom
- This block does not depend on data values

41: gold_block
- This block does not depend on data values

42: iron_block
- This block does not depend on data values

43: double_slab
- 0, 8: stone
- 1, 9: sandstone
- 2, 10: wood
- 3, 11: cobblestone
- 4, 12: bricks
- 5, 13: stone bricks
- 6, 7, 14, 15: polished stone

44: slab
- 0: stone, bottom
- 1: sandstone, bottom
- 2: wood, bottom
- 3: cobblestone, bottom
- 4: bricks, bottom
- 5: stone bricks, bottom
- 6, 7: polished stone, bottom
- 8: stone, top
- 9: sandstone, top
- 10: wood, top
- 11: cobblestone, top
- 12: bricks, top
- 13: stone bricks, top
- 14, 15: polished stone, top

45: bricks
- This block does not depend on data values

46: tnt
- 0, 2, 4, 6, 8, 10, 12, 14: inactive
- 1, 3, 5, 7, 9, 11, 13, 15: ready to explode

47: bookshelf
- This block does not depend on data values

48: mossy_cobblestone
- This block does not depend on data values

49: obsidian
- This block does not depend on data values

50: torch
- This block is showing weird behavior. When placed using the API, it prefers to point towards x+

51: fire
- This block does not depend on data values

52 is not an accessible block

53: wooden_stairs
- 0, 8: ascending x+
- 1, 9: ascending x-
- 2, 10: ascending z-
- 3, 11: ascending z+
- 4, 12: ascending x+, upside down
- 5, 13: ascending x-, upside down
- 6, 14: ascending z-, upside down
- 7, 15: ascending z+, upside down

54: chest
- 0, 1: not facing anywhere
- 2: facing z-
- 3: facing z+
- 4: facing x-
- 5: facing x+
- 6-15: not facing anywhere

55 is not an accessible block

56: diamond_ore
- This block does not depend on data values

57: diamond_block
- This block does not depend on data values

58: crafting_table
- This block does not depend on data values

59: wheat
- 0: growth stage 0 (just planted)
- 1: growth stage 1
- 2: growth stage 2
- 3: growth stage 3
- 4: growth stage 4
- 5: growth stage 5
- 6: growth stage 6
- 7: growth stage 7 (fully grown)
- 8: lever texture
- 9: wooden door texture
- 10: iron door texture
- 11: redstone torch texture
- 12: mossy stone bricks texture
- 13: cracked stone bricks texture
- 14: pumpkin texture
- 15: netherrack texture

60: farmland
- 0: dry
- 1-15: wet

61: furnace
- This block is showing weird behavior. When placed using the API, it prefers to face towards z+
- 0, 1: ?
- 2: facing z-
- 3: facing z+
- 4: facing x-
- 5: facing x+
- 6-15: ?

62: lit_furnace
- This block is showing weird behavior. When placed using the API, it prefers to face towards z+

63: sign
- 0: facing towards z+
- 1: facing in between z+ and x- z+
- 2: facing towards x- z+
- 3: facing in between x- and x- z+
- 4: facing towards x-
- 5: facing in between x- and x- z-
- 6: facing towards x- z-
- 7: facing in between z- and x- z-
- 8: facing towards z-
- 9: facing in between z- and xy z-
- 10: facing towards x+ z-
- 11: facing inbetween x+ and x+ z-
- 12: facing towards x+
- 13: facing in between x+ and x+ z+
- 14: facing towards x+ z+
- 15: facing inbetween z+ and x+ z+

64: wooden_door
- 0: bottom, opened, facing x-
- 1: bottom, opened, facing z-
- 2: bottom, opened, facing x+
- 3: bottom, opened, facing z+
- 4: bottom, closed, facing x-
- 5: bottom, closed, facing z-
- 6: bottom, closed, facing x+
- 7: bottom, closed, facing z+
- 8-15: top, closed, facing x-

65: ladder
- 0, 1: invisible, connected towards z+
- 2: connected towards z+
- 3: connected towards z-
- 4: connected towards x-
- 5: connected towards x+
- 6-15: invisible, connected towards z+

66 is not an accessible block

67: cobblestone_stairs
- 0, 8: ascending x+
- 1, 9: ascending x-
- 2, 10: ascending z-
- 3, 11: ascending z+
- 4, 12: ascending x+, upside down
- 5, 13: ascending x-, upside down
- 6, 14: ascending z-, upside down
- 7, 15: ascending z+, upside down

68: wall_sign
- 0, 1: facing z+
- 2: facing z-
- 3: facing z+
- 4: facing x-
- 5: facing x+
- 6-15: facing z+

69-70 are not accessible blocks

71: iron_door
- 0: bottom, opened, facing x-
- 1: bottom, opened, facing z-
- 2: bottom, opened, facing x+
- 3: bottom, opened, facing z+
- 4: bottom, closed, facing x-
- 5: bottom, closed, facing z-
- 6: bottom, closed, facing x+
- 7: bottom, closed, facing z+
- 8-15: top, closed, facing x-

72 is not an accessible block

73: redstone_ore
- This block does not depend on data values

74: lit_redstone_ore
- This block does not depend on data values

75 ... 77 are not accessible blocks

78: snow
- This block does not depend on data values

79: ice
- This block does not depend on data values

80: snow_block
- This block does not depend on data values

81: cactus
- This block does not depend on data values

82: clay
- This block does not depend on data values

83: reeds
- This block does not depend on data values

84 is not an accessible block

85: fence
- This block does not depend on data values

86 is not an accessible block

87: netherrack
- This block does not depend on data values

88 is not an accessible block

89: glowstone
- This block does not depend on data values

90 ... 94 are not accessible blocks

95: bedrock_invisible
- This block does not depend on data values

96: trapdoor
- 0, 8: closed, facing z+
- 1, 9: closed, facing z-
- 2, 10: closed, facing x+
- 3, 11: closed, facing x-
- 4, 12: opened, facing z+
- 5, 13: opened, facing z-
- 6, 14: opened, facing x+
- 7, 15: opened, facing x-

97 is not an accessible block

98: stone_bricks
- This block does not depend on data values

99 ... 101 are not accessible blocks

102: glass_pane
- This block does not depend on data values

103: melon
- This block does not depend on data values

104 is not an accessible block

105: melon_stem
- 0: growth stage 0 (just planted)
- 1: growth stage 1
- 2: growth stage 2
- 3: growth stage 3
- 4: growth stage 4
- 5: growth stage 5
- 6: growth stage 6
- 7: growth stage 7 (fully grown)
- 8: bugged texture
- 9: bugged texture
- 10: bugged texture
- 11: bugged texture
- 12: bugged texture
- 13: bugged texture
- 14: bugged texture
- 15: bugged texture

106 is not an accessible block

107: fence_gate
- 0, 8: closed, facing z+
- 1, 9: closed, facing x+
- 2, 10: closed, facing z-
- 3, 11: closed, facing x-
- 4, 12: opened, facing z+
- 5, 13: opened, facing x+
- 6, 14: opened, facing z-
- 7, 15: opened, facing x-

108: brick_stairs
- 0, 8: ascending x+
- 1, 9: ascending x-
- 2, 10: ascending z-
- 3, 11: ascending z+
- 4, 12: ascending x+, upside down
- 5, 13: ascending x-, upside down
- 6, 14: ascending z-, upside down
- 7, 15: ascending z+, upside down

109: stone_brick_stairs
- 0, 8: ascending x+
- 1, 9: ascending x-
- 2, 10: ascending z-
- 3, 11: ascending z+
- 4, 12: ascending x+, upside down
- 5, 13: ascending x-, upside down
- 6, 14: ascending z-, upside down
- 7, 15: ascending z+, upside down

110 ... 111 are not accessible blocks

112: nether_bricks
- This block does not depend on data values

113 is not an accessible block

114: nether_brick_stairs
- 0, 8: ascending x+
- 1, 9: ascending x-
- 2, 10: ascending z-
- 3, 11: ascending z+
- 4, 12: ascending x+, upside down
- 5, 13: ascending x-, upside down
- 6, 14: ascending z-, upside down
- 7, 15: ascending z+, upside down

115 ... 127 are not accessible blocks

128: sandstone_stairs
- 0, 8: ascending x+
- 1, 9: ascending x-
- 2, 10: ascending z-
- 3, 11: ascending z+
- 4, 12: ascending x+, upside down
- 5, 13: ascending x-, upside down
- 6, 14: ascending z-, upside down
- 7, 15: ascending z+, upside down

129 ... 154 are not accessible blocks

155: quartz_block
- 0: normal
- 1: chiseled
- 2: pillar
- 3-15: normal

156: quartz_stairs
- 0, 8: ascending x+
- 1, 9: ascending x-
- 2, 10: ascending z-
- 3, 11: ascending z+
- 4, 12: ascending x+, upside down
- 5, 13: ascending x-, upside down
- 6, 14: ascending z-, upside down
- 7, 15: ascending z+, upside down

157 ... 244 are not accessible blocks

245: stonecutter
- This block does not depend on data values

246: glowing_obsidian
- This block does not depend on data values

247: nether_reactor_core
- 0: normal
- 1: active
- 2: burned
- 3-15: normal

248: info_update
- This block does not depend on data values

249: info_update2
- This block does not depend on data values

250 ... 252 are not accessible blocks

253: grass_carried
- This block does not depend on data values

254: leaves_carried
- 0, 3, 4, 7, 8, 11, 12, 15: dark oak leaves
- 1, 5, 9, 13: dark spruce leaves
- 2, 6, 10, 14: dark birch leaves

255: reserved6
- This block does not depend on data values
```