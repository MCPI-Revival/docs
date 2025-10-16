# Tile Entity List

This page lists every tile entity in MCPI, it's id and it's data.

```text
1: FurnaceTileEntity, "Furnace"
- Items: ItemInstance[3] (the item slots are also loaded/saved, under the "Slot" byte)
- BurnTime: short
- CookTime: short
2: ChestTileEntity, "container.chest"
- Items: ItemInstance[] (the item slots are also loaded/saved, under the "Slot" byte)
3: NetherReactorTileEntity
- IsInitialized: boolean
- Progress: short
- HasFinished: boolean
4: SignTileEntity
- Text1: string
- Text2: string
- Text3: string
- Text4: string
- When loading, they are capped at 16 bytes (including null terminator)
```