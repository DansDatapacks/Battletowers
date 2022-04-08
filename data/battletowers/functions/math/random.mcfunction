# generate random number (take min and max from #RNG.min/#RNG.max and set #RNG.num to a random number between them)

#if min not set, set to 1
execute unless score #RNG.min dan_bt.temp matches 1.. run scoreboard players set #RNG.min dan_bt.temp 1
#if max not set, set to 100
execute unless score #RNG.max dan_bt.temp matches 1.. run scoreboard players set #RNG.max dan_bt.temp 100

#Change (lower, upper) to (lower, range)
scoreboard players operation #RNG.max dan_bt.temp -= #RNG.min dan_bt.temp
scoreboard players add #RNG.max dan_bt.temp 1

#Summon two entities to work with
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"\"math_random_kcjbc\"",Duration:1,Tags:["global.ignore"]}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"\"math_random_kcjbc\"",Duration:1,Tags:["global.ignore"]}

#Generate a 31-bit random number by randomizing each bit
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math_random_kcjbc",sort=random,limit=1,distance=..3] dan_bt.temp 1
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math_random_kcjbc",sort=random,limit=1,distance=..3] dan_bt.temp 2
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math_random_kcjbc",sort=random,limit=1,distance=..3] dan_bt.temp 4
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math_random_kcjbc",sort=random,limit=1,distance=..3] dan_bt.temp 8
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math_random_kcjbc",sort=random,limit=1,distance=..3] dan_bt.temp 16
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math_random_kcjbc",sort=random,limit=1,distance=..3] dan_bt.temp 32
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math_random_kcjbc",sort=random,limit=1,distance=..3] dan_bt.temp 64
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math_random_kcjbc",sort=random,limit=1,distance=..3] dan_bt.temp 128
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math_random_kcjbc",sort=random,limit=1,distance=..3] dan_bt.temp 256
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math_random_kcjbc",sort=random,limit=1,distance=..3] dan_bt.temp 512
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math_random_kcjbc",sort=random,limit=1,distance=..3] dan_bt.temp 1024
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math_random_kcjbc",sort=random,limit=1,distance=..3] dan_bt.temp 2048
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math_random_kcjbc",sort=random,limit=1,distance=..3] dan_bt.temp 4096
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math_random_kcjbc",sort=random,limit=1,distance=..3] dan_bt.temp 8192
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math_random_kcjbc",sort=random,limit=1,distance=..3] dan_bt.temp 16384
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math_random_kcjbc",sort=random,limit=1,distance=..3] dan_bt.temp 32768
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math_random_kcjbc",sort=random,limit=1,distance=..3] dan_bt.temp 65536
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math_random_kcjbc",sort=random,limit=1,distance=..3] dan_bt.temp 131072
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math_random_kcjbc",sort=random,limit=1,distance=..3] dan_bt.temp 262144
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math_random_kcjbc",sort=random,limit=1,distance=..3] dan_bt.temp 524288
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math_random_kcjbc",sort=random,limit=1,distance=..3] dan_bt.temp 1048576
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math_random_kcjbc",sort=random,limit=1,distance=..3] dan_bt.temp 2097152
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math_random_kcjbc",sort=random,limit=1,distance=..3] dan_bt.temp 4194304
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math_random_kcjbc",sort=random,limit=1,distance=..3] dan_bt.temp 8388608
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math_random_kcjbc",sort=random,limit=1,distance=..3] dan_bt.temp 16777216
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math_random_kcjbc",sort=random,limit=1,distance=..3] dan_bt.temp 33554432
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math_random_kcjbc",sort=random,limit=1,distance=..3] dan_bt.temp 67108864
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math_random_kcjbc",sort=random,limit=1,distance=..3] dan_bt.temp 134217728
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math_random_kcjbc",sort=random,limit=1,distance=..3] dan_bt.temp 268435456
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math_random_kcjbc",sort=random,limit=1,distance=..3] dan_bt.temp 536870912
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math_random_kcjbc",sort=random,limit=1,distance=..3] dan_bt.temp 1073741824

#Transfer random number and limit to given range
scoreboard players operation #RNG.num dan_bt.temp = @e[type=minecraft:area_effect_cloud,name="math_random_kcjbc",distance=..3,limit=1] dan_bt.temp
scoreboard players operation #RNG.num dan_bt.temp %= #RNG.max dan_bt.temp
scoreboard players operation #RNG.num dan_bt.temp += #RNG.min dan_bt.temp

#Restore input2
scoreboard players operation #RNG.max dan_bt.temp += #RNG.min dan_bt.temp
scoreboard players remove #RNG.max dan_bt.temp 1

#kill calc AEC
kill @e[type=minecraft:area_effect_cloud,name="math_random_kcjbc",distance=..3]

#reset min/max
scoreboard players reset #RNG.min dan_bt.temp
scoreboard players reset #RNG.max dan_bt.temp