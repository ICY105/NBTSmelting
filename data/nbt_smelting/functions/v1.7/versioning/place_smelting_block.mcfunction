
advancement revoke @s only nbt_smelting:v1.7/place_smelting_block

scoreboard players set #loop nbt_smelting.data 512
execute if predicate nbt_smelting:v1.7/is_correct_version anchored eyes positioned ^ ^ ^ run function nbt_smelting:v1.7/furnace/place
