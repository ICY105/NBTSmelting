
# check stack size
execute store result score #output_count nbt_smelting.data run data get block ~ ~ ~ Items[{Slot:2b}].count
execute store result score #output_stacksize nbt_smelting.data run function nbt_smelting:v1.7/furnace/get_stack_size

execute if score #output_count nbt_smelting.data >= #output_stacksize nbt_smelting.data run return fail

# Reset smelting score
scoreboard players set @s nbt_smelting.data 0

# Check if current input matches output
execute if score #output_count nbt_smelting.data matches 1.. run data modify storage nbt_smelting:io item set from block ~ ~ ~ Items[{Slot:0b}]
execute if score #output_count nbt_smelting.data matches 1.. run data remove storage nbt_smelting:io item.Slot
execute if score #output_count nbt_smelting.data matches 1.. run data remove storage nbt_smelting:io item.count
execute if score #output_count nbt_smelting.data matches 1.. store success score #failed nbt_smelting.data run data modify storage nbt_smelting:io item set from entity @s data.item
execute if score #output_count nbt_smelting.data matches 1.. if score #failed nbt_smelting.data matches 1 run return fail

# Start Smelting
execute if items block ~ ~ ~ container.1 * if block ~ ~ ~ #nbt_smelting:furnaces{BurnTime:0s} run function nbt_smelting:v1.7/furnace/fuel
execute unless block ~ ~ ~ #nbt_smelting:furnaces{BurnTime:0s} run tag @s add nbt_smelting.furnace.active
