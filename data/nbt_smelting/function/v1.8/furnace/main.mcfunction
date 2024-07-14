
execute unless block ~ ~ ~ #nbt_smelting:furnaces run kill @s
execute if entity @s[tag=!nbt_smelting.furnace.active] if items block ~ ~ ~ container.0 *[custom_data~{nbt_smelting:1b}] run function nbt_smelting:v1.8/furnace/start_smelt
