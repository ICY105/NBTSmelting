

execute store result score #output_count nbt_smelting.data run data get block ~ ~ ~ Items[{Slot:2b}].count

# Check if current input matches output
execute if score #output_count nbt_smelting.data matches 1.. run data modify storage nbt_smelting:io item set from block ~ ~ ~ Items[{Slot:0b}]
execute if score #output_count nbt_smelting.data matches 1.. run data remove storage nbt_smelting:io item.Slot
execute if score #output_count nbt_smelting.data matches 1.. run data remove storage nbt_smelting:io item.count
execute if score #output_count nbt_smelting.data matches 1.. store success score #failed nbt_smelting.data run data modify storage nbt_smelting:io item set from entity @s data.item
execute if score #output_count nbt_smelting.data matches 1.. if score #failed nbt_smelting.data matches 1 run scoreboard players set @s nbt_smelting.data 0
execute if score #output_count nbt_smelting.data matches 1.. if score #failed nbt_smelting.data matches 1 run tag @s remove nbt_smelting.furnace.active
execute if score #output_count nbt_smelting.data matches 1.. if score #failed nbt_smelting.data matches 1 run return fail

# Copy data
data modify entity @s data.item set from block ~ ~ ~ Items[{Slot:0b}]
data remove entity @s data.item.Slot
data remove entity @s data.item.count

# Get Output
data modify storage nbt_smelting:io item set from block ~ ~ ~ Items[{Slot:0b}]

execute if block ~ ~ ~ minecraft:blast_furnace run function #nbt_smelting:v1/blast_furnace
execute if block ~ ~ ~ minecraft:furnace run function #nbt_smelting:v1/furnace
execute if block ~ ~ ~ minecraft:smoker run function #nbt_smelting:v1/smoker

# Set Counts
execute store result score #recipe_count nbt_smelting.data run data get block ~ ~ ~ Items[{Slot:2b}].count

scoreboard players operation #output_count nbt_smelting.data += #recipe_count nbt_smelting.data
execute store result block ~ ~ ~ Items[{Slot:2b}].count byte 1 run scoreboard players get #output_count nbt_smelting.data

item modify block ~ ~ ~ container.0 nbt_smelting:decrement_count

# Mark as not active, then continue if still have recipe
tag @s remove nbt_smelting.furnace.active
data merge block ~ ~ ~ {CookTime:0s}
scoreboard players set @s nbt_smelting.data 0
execute if entity @s if items block ~ ~ ~ container.0 *[custom_data~{nbt_smelting:1b}] run function nbt_smelting:v1.7/furnace/start_smelt
