
# Add cooking time
scoreboard players add @s nbt_smelting.data 1
execute store result block ~ ~ ~ cooking_time_spent short 1 run scoreboard players get @s nbt_smelting.data

# Add fuel if needed
execute if block ~ ~ ~ #nbt_smelting:furnaces{lit_time_remaining: 0s} if items block ~ ~ ~ container.1 * run function nbt_smelting:v1.10/furnace/fuel
execute if block ~ ~ ~ #nbt_smelting:furnaces{lit_time_remaining: 0s} run tag @s remove nbt_smelting.furnace.active

# Disable smelting if not input item
execute unless items block ~ ~ ~ container.0 *[custom_data~{nbt_smelting:1b}] run tag @s remove nbt_smelting.furnace.active

# Process result
execute store result score #total_cook_time nbt_smelting.data run data get block ~ ~ ~ cooking_total_time
scoreboard players remove #total_cook_time nbt_smelting.data 4
execute if score @s nbt_smelting.data >= #total_cook_time nbt_smelting.data run function nbt_smelting:v1.10/furnace/end
