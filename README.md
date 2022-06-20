# NBT Smelting
A Minecraft Datapack adding the ability to add smelting recipes with NBT data for input and output items. Currently handles:
* NBT data for both input & output items
* Handles furnaces, blast furnaces, smokers, campfires, and soul campfires
* Designed to cause minimial lag, even with 100s of furnaces

Requires [LanternLoad](https://github.com/LanternMC/load) to run.

## Scoreboards
These are scoreboard objectives used to represent a value of some kind.

```
nbt_smelting.data
  Used for math and passing variables between functions.
```

## NBT Data
NBT Data to add to items to enable certain functionality

```
Item.tag{nbt_smelting:1b}
  Indicates this item has a custom recipe, triggering the custom smelt functions when the item is in a furnace.
  Note: to place an item on a campfire, a valid vanilla recipe must exist. It is recommended to add an item -> air recipe.
```

## Function Tags
Function tags are called by NBT Smelting to let you know you should do something.

```
function #nbt_smelting:v1/furnace
function #nbt_smelting:v1/blast_furnace
function #nbt_smelting:v1/smoker
function #nbt_smelting:v1/campfire
  Triggered when a respective block has compelted a recipe
  
  Input:
    storage nbt_smelting:io item -> input item
 
  Output:
    For the furnace, set the item in slot 2 (output slot) to the desired output.
	For campfires, spawn the item in the world (as if it had just popped off from a normal recipe finishing).
```

## How to use
1. Install [LanternLoad](https://github.com/LanternMC/load) in your datapack, following its install directions
2. Copy the `NBTSmelting/data/nbt_smelting` folder into your data pack
3. Merge the file contents of `NBTSmelting/data/load/tags/functions/*` into the files at `<your_datapack>/data/load/tags/functions/*`
4. Implement the API as described above.

For easier mangament of dependencies, check out my project [Datapack Build Manager](https://github.com/ICY105/DatapackBuildManager).
