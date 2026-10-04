
execute if items block ~ ~ ~ container.1 #nbt_smelting:fuel_50 run data merge block ~ ~ ~ {lit_time_remaining: 50, lit_total_time: 50}
execute if items block ~ ~ ~ container.1 #nbt_smelting:fuel_67 run data merge block ~ ~ ~ {lit_time_remaining: 67, lit_total_time: 67}
execute if items block ~ ~ ~ container.1 #nbt_smelting:fuel_100 run data merge block ~ ~ ~ {lit_time_remaining: 100, lit_total_time: 100}
execute if items block ~ ~ ~ container.1 #nbt_smelting:fuel_150 run data merge block ~ ~ ~ {lit_time_remaining: 150, lit_total_time: 150}
execute if items block ~ ~ ~ container.1 #nbt_smelting:fuel_200 run data merge block ~ ~ ~ {lit_time_remaining: 200, lit_total_time: 200}
execute if items block ~ ~ ~ container.1 #nbt_smelting:fuel_300 run data merge block ~ ~ ~ {lit_time_remaining: 300, lit_total_time: 300}
execute if items block ~ ~ ~ container.1 #nbt_smelting:fuel_1200 run data merge block ~ ~ ~ {lit_time_remaining: 1200, lit_total_time: 1200}
execute if items block ~ ~ ~ container.1 #nbt_smelting:fuel_1600 run data merge block ~ ~ ~ {lit_time_remaining: 1600, lit_total_time: 1600}
execute if items block ~ ~ ~ container.1 #nbt_smelting:fuel_2400 run data merge block ~ ~ ~ {lit_time_remaining: 2400, lit_total_time: 2400}
execute if items block ~ ~ ~ container.1 #nbt_smelting:fuel_4000 run data merge block ~ ~ ~ {lit_time_remaining: 4000, lit_total_time: 4000}
execute if items block ~ ~ ~ container.1 #nbt_smelting:fuel_16000 run data merge block ~ ~ ~ {lit_time_remaining: 16000, lit_total_time: 16000}

execute if items block ~ ~ ~ container.1 minecraft:lava_bucket run data merge block ~ ~ ~ {lit_time_remaining: 20000, lit_total_time: 20000}
execute if items block ~ ~ ~ container.1 minecraft:lava_bucket run item replace block ~ ~ ~ container.1 with minecraft:bucket 2

execute unless block ~ ~ ~ #nbt_smelting:furnaces{lit_time_remaining: 0} run item modify block ~ ~ ~ container.1 nbt_smelting:decrement_count
execute unless block ~ ~ ~ #nbt_smelting:furnaces{lit_time_remaining: 0} if block ~ ~ ~ #nbt_smelting:furnaces[lit=false] run function nbt_smelting:v1.11/furnace/make_lit
