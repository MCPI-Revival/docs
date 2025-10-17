# Entity List

This page lists every entity in MCPI, it's creature type (if it's not
Entity), it's entity type id, how to spawn it, what it drops, and other
notable features of the entity. Some entities don't have an entity type
id, for these entities getEntityTypeId returns 0, which is why they are
listed below with an entity type id of 0.

```text
0: Particle
- Can't be interacted with
- Cannot die, but despawns automatically

0: Player
- Can be either the main player or a connected player
- Drops the contents of there inventory
- Uses the player model, id 17

0: TripodCamera
- Can be spawned by the camera item
- Doesn't drop anything
- Hitting it will start a timer, when the timer is up it will emit some smoke, save a picture, and despawns
- Can be attacked once, before becoming invulnerable
- Uses the TripodCamera model, id 6

0: CameraEntity
- Spawned by the CommandServer for the "camera.mode.*" commands
- Invisible, invulnerable, and not accessible without using the API.

10: Chicken : Animal
- Have a a 1/8 chance of being spawned by a thrown egg.
- Have a 1/256 chance of four being spawned by a thrown egg.
- Drops raw chicken and feathers.
- Doesn't take fall damage.
- Uses the chicken model, id 7

11: Cow : Animal
- Drops leather and raw beef.
- Uses the cow model, id 8

12: Pig : Animal
- Drops raw pork.
- Uses the pig model, id 9

13: Sheep : Animal
- Drops wool.
- Can spawn in 16 diffrent colors, can be sheared and dyed, will grow wool back after eating grass.
- Uses the sheep model, id 10

32: Zombie : Monster
- Drops raw feathers.
- Burns in daylight.
- Uses the zombie model, id 12

33: Creeper : Monster
- Drops gunpowder.
- Explodes near player.
- Uses the zombie model, id 15

34: Skeleton : Monster
- Drops bones and arrows.
- Shoots arrows at player and burns in daylight.
- Uses the skeleton model, id 13

35: Spider : Monster
- Drops string.
- Can climb walls.
- Uses the spider model, id 14

36: PigZombie (also called "Zombie Pigman") : Monster
- Can be spawned by activing the nether reactor core.
- Drops gold and fethers.
- Burns in daylight.
- Uses the zombie model, id 12

64: ItemEntity
- Can be spawned by dropping an item or breaking a block.
- It's an item.
- Uses the ItemEntity model, id 5

65: PrimedTnt
- Can be spawned by igniting TNT with flint and steel.
- Explodes.
- Doesn't die in the void.
- Uses the tnt model, id 3

66: FallingTile
- Can be spawned by placing sand or gravel over air.
- Falls until it hits the ground, then turns into a block, can be any block but only sand and gravel can normally be spawned.
- Doesn't die in the void.
- Uses the fallingtile model, id 21

80: Arrow
- Can be spawned by a player with a bow or a skeleton.
- Hurts whatever it hits then despawns.
- Can be critical or non-critical.
- Uses the arrow model, id 16

81: Snowball
- Can be spawned by throwing a snowball.
- Hurts whatever it hits then despawns.
- Uses the snowball model, id 19

82: ThrownEgg
- Can be spawned by throwing an egg.
- Hurts whatever it hits then despawns, chance of spawning up to 4 chickens.
- Uses the ThrownEgg model, id 18

83: Painting
- Can be spawned by placing a painting.
- Never moves, just looks pretty.
- Uses the painting model, id 20
```

The creature base types are as follows (returned from `getCreatureBaseType`):

```
0: Entity
1: Monster
2: Animal
3: WaterAnimal
```