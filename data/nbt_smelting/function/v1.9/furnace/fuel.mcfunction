
execute if items block ~ ~ ~ container.1 #nbt_smelting:fuel_50 run data merge block ~ ~ ~ {lit_time_remaining: 50s, lit_total_time: 50s}
execute if items block ~ ~ ~ container.1 #nbt_smelting:fuel_67 run data merge block ~ ~ ~ {lit_time_remaining: 67s, lit_total_time: 67s}
execute if items block ~ ~ ~ container.1 #nbt_smelting:fuel_100 run data merge block ~ ~ ~ {lit_time_remaining: 100s, lit_total_time: 100s}
execute if items block ~ ~ ~ container.1 #nbt_smelting:fuel_150 run data merge block ~ ~ ~ {lit_time_remaining: 150s, lit_total_time: 150s}
execute if items block ~ ~ ~ container.1 #nbt_smelting:fuel_200 run data merge block ~ ~ ~ {lit_time_remaining: 200s, lit_total_time: 200s}
execute if items block ~ ~ ~ container.1 #nbt_smelting:fuel_300 run data merge block ~ ~ ~ {lit_time_remaining: 300s, lit_total_time: 300s}
execute if items block ~ ~ ~ container.1 #nbt_smelting:fuel_1200 run data merge block ~ ~ ~ {lit_time_remaining: 1200s, lit_total_time: 1200s}
execute if items block ~ ~ ~ container.1 #nbt_smelting:fuel_1600 run data merge block ~ ~ ~ {lit_time_remaining: 1600s, lit_total_time: 1600s}
execute if items block ~ ~ ~ container.1 #nbt_smelting:fuel_2400 run data merge block ~ ~ ~ {lit_time_remaining: 2400s, lit_total_time: 2400s}
execute if items block ~ ~ ~ container.1 #nbt_smelting:fuel_4000 run data merge block ~ ~ ~ {lit_time_remaining: 4000s, lit_total_time: 4000s}
execute if items block ~ ~ ~ container.1 #nbt_smelting:fuel_16000 run data merge block ~ ~ ~ {lit_time_remaining: 16000s, lit_total_time: 16000s}

execute if items block ~ ~ ~ container.1 minecraft:lava_bucket run data merge block ~ ~ ~ {lit_time_remaining: 20000s, lit_total_time: 20000s}
execute if items block ~ ~ ~ container.1 minecraft:lava_bucket run item replace block ~ ~ ~ container.1 with minecraft:bucket 2

execute unless block ~ ~ ~ #nbt_smelting:furnaces{lit_time_remaining: 0s} run item modify block ~ ~ ~ container.1 nbt_smelting:decrement_count
execute unless block ~ ~ ~ #nbt_smelting:furnaces{lit_time_remaining: 0s} if block ~ ~ ~ #nbt_smelting:furnaces[lit=false] run function nbt_smelting:v1.9/furnace/make_lit
