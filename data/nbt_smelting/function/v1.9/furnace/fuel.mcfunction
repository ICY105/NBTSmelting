
execute if items block ~ ~ ~ container.1 #nbt_smelting:fuel_50 run data merge block ~ ~ ~ {BurnTime:50s}
execute if items block ~ ~ ~ container.1 #nbt_smelting:fuel_67 run data merge block ~ ~ ~ {BurnTime:67s}
execute if items block ~ ~ ~ container.1 #nbt_smelting:fuel_100 run data merge block ~ ~ ~ {BurnTime:100s}
execute if items block ~ ~ ~ container.1 #nbt_smelting:fuel_150 run data merge block ~ ~ ~ {BurnTime:150s}
execute if items block ~ ~ ~ container.1 #nbt_smelting:fuel_200 run data merge block ~ ~ ~ {BurnTime:200s}
execute if items block ~ ~ ~ container.1 #nbt_smelting:fuel_300 run data merge block ~ ~ ~ {BurnTime:300s}
execute if items block ~ ~ ~ container.1 #nbt_smelting:fuel_1200 run data merge block ~ ~ ~ {BurnTime:1200s}
execute if items block ~ ~ ~ container.1 #nbt_smelting:fuel_1600 run data merge block ~ ~ ~ {BurnTime:1600s}
execute if items block ~ ~ ~ container.1 #nbt_smelting:fuel_2400 run data merge block ~ ~ ~ {BurnTime:2400s}
execute if items block ~ ~ ~ container.1 #nbt_smelting:fuel_4000 run data merge block ~ ~ ~ {BurnTime:4000s}
execute if items block ~ ~ ~ container.1 #nbt_smelting:fuel_16000 run data merge block ~ ~ ~ {BurnTime:16000s}

execute if items block ~ ~ ~ container.1 minecraft:lava_bucket run data merge block ~ ~ ~ {BurnTime:20000s}
execute if items block ~ ~ ~ container.1 minecraft:lava_bucket run item replace block ~ ~ ~ container.1 with minecraft:bucket 2

execute unless block ~ ~ ~ #nbt_smelting:furnaces{BurnTime:0s} run item modify block ~ ~ ~ container.1 nbt_smelting:decrement_count
execute unless block ~ ~ ~ #nbt_smelting:furnaces{BurnTime:0s} if block ~ ~ ~ #nbt_smelting:furnaces[lit=false] run function nbt_smelting:v1.9/furnace/make_lit
