# generate random number (take min and max from #RNG.min/#RNG.max and set #RNG.num to a random number between them)

#if min not set, set to 1
execute unless score #RNG.min battletowers.temp matches 1.. run scoreboard players set #RNG.min battletowers.temp 1
#if max not set, set to 100
execute unless score #RNG.max battletowers.temp matches 1.. run scoreboard players set #RNG.max battletowers.temp 100

#Change (lower, upper) to (lower, range)
scoreboard players operation #RNG.max battletowers.temp -= #RNG.min battletowers.temp
scoreboard players add #RNG.max battletowers.temp 1

#Summon two entities to work with
summon minecraft:marker ~ ~ ~ {CustomName:"\"math_random_kcjbc\"",Duration:1,Tags:["global.ignore"]}
summon minecraft:marker ~ ~ ~ {CustomName:"\"math_random_kcjbc\"",Duration:1,Tags:["global.ignore"]}

#Generate a 31-bit random number by randomizing each bit
scoreboard players add @e[type=minecraft:marker,name="math_random_kcjbc",sort=random,limit=1,distance=..3] battletowers.temp 1
scoreboard players add @e[type=minecraft:marker,name="math_random_kcjbc",sort=random,limit=1,distance=..3] battletowers.temp 2
scoreboard players add @e[type=minecraft:marker,name="math_random_kcjbc",sort=random,limit=1,distance=..3] battletowers.temp 4
scoreboard players add @e[type=minecraft:marker,name="math_random_kcjbc",sort=random,limit=1,distance=..3] battletowers.temp 8
scoreboard players add @e[type=minecraft:marker,name="math_random_kcjbc",sort=random,limit=1,distance=..3] battletowers.temp 16
scoreboard players add @e[type=minecraft:marker,name="math_random_kcjbc",sort=random,limit=1,distance=..3] battletowers.temp 32
scoreboard players add @e[type=minecraft:marker,name="math_random_kcjbc",sort=random,limit=1,distance=..3] battletowers.temp 64
scoreboard players add @e[type=minecraft:marker,name="math_random_kcjbc",sort=random,limit=1,distance=..3] battletowers.temp 128
scoreboard players add @e[type=minecraft:marker,name="math_random_kcjbc",sort=random,limit=1,distance=..3] battletowers.temp 256
scoreboard players add @e[type=minecraft:marker,name="math_random_kcjbc",sort=random,limit=1,distance=..3] battletowers.temp 512
scoreboard players add @e[type=minecraft:marker,name="math_random_kcjbc",sort=random,limit=1,distance=..3] battletowers.temp 1024
scoreboard players add @e[type=minecraft:marker,name="math_random_kcjbc",sort=random,limit=1,distance=..3] battletowers.temp 2048
scoreboard players add @e[type=minecraft:marker,name="math_random_kcjbc",sort=random,limit=1,distance=..3] battletowers.temp 4096
scoreboard players add @e[type=minecraft:marker,name="math_random_kcjbc",sort=random,limit=1,distance=..3] battletowers.temp 8192
scoreboard players add @e[type=minecraft:marker,name="math_random_kcjbc",sort=random,limit=1,distance=..3] battletowers.temp 16384
scoreboard players add @e[type=minecraft:marker,name="math_random_kcjbc",sort=random,limit=1,distance=..3] battletowers.temp 32768
scoreboard players add @e[type=minecraft:marker,name="math_random_kcjbc",sort=random,limit=1,distance=..3] battletowers.temp 65536
scoreboard players add @e[type=minecraft:marker,name="math_random_kcjbc",sort=random,limit=1,distance=..3] battletowers.temp 131072
scoreboard players add @e[type=minecraft:marker,name="math_random_kcjbc",sort=random,limit=1,distance=..3] battletowers.temp 262144
scoreboard players add @e[type=minecraft:marker,name="math_random_kcjbc",sort=random,limit=1,distance=..3] battletowers.temp 524288
scoreboard players add @e[type=minecraft:marker,name="math_random_kcjbc",sort=random,limit=1,distance=..3] battletowers.temp 1048576
scoreboard players add @e[type=minecraft:marker,name="math_random_kcjbc",sort=random,limit=1,distance=..3] battletowers.temp 2097152
scoreboard players add @e[type=minecraft:marker,name="math_random_kcjbc",sort=random,limit=1,distance=..3] battletowers.temp 4194304
scoreboard players add @e[type=minecraft:marker,name="math_random_kcjbc",sort=random,limit=1,distance=..3] battletowers.temp 8388608
scoreboard players add @e[type=minecraft:marker,name="math_random_kcjbc",sort=random,limit=1,distance=..3] battletowers.temp 16777216
scoreboard players add @e[type=minecraft:marker,name="math_random_kcjbc",sort=random,limit=1,distance=..3] battletowers.temp 33554432
scoreboard players add @e[type=minecraft:marker,name="math_random_kcjbc",sort=random,limit=1,distance=..3] battletowers.temp 67108864
scoreboard players add @e[type=minecraft:marker,name="math_random_kcjbc",sort=random,limit=1,distance=..3] battletowers.temp 134217728
scoreboard players add @e[type=minecraft:marker,name="math_random_kcjbc",sort=random,limit=1,distance=..3] battletowers.temp 268435456
scoreboard players add @e[type=minecraft:marker,name="math_random_kcjbc",sort=random,limit=1,distance=..3] battletowers.temp 536870912
scoreboard players add @e[type=minecraft:marker,name="math_random_kcjbc",sort=random,limit=1,distance=..3] battletowers.temp 1073741824

#Transfer random number and limit to given range
scoreboard players operation #RNG.num battletowers.temp = @e[type=minecraft:marker,name="math_random_kcjbc",distance=..3,limit=1] battletowers.temp
scoreboard players operation #RNG.num battletowers.temp %= #RNG.max battletowers.temp
scoreboard players operation #RNG.num battletowers.temp += #RNG.min battletowers.temp

#Restore input2
scoreboard players operation #RNG.max battletowers.temp += #RNG.min battletowers.temp
scoreboard players remove #RNG.max battletowers.temp 1

#kill calc marker
kill @e[type=minecraft:marker,name="math_random_kcjbc",distance=..3]

#reset min/max
scoreboard players reset #RNG.min battletowers.temp
scoreboard players reset #RNG.max battletowers.temp