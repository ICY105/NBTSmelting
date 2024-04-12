
# check recipes
execute if data block ~ ~ ~ Items[].components."minecraft:custom_data".nbt_smelting run function nbt_smelting:campfire/process_recipe

# cleanup
execute unless block ~ ~ ~ #minecraft:campfires run kill @s
