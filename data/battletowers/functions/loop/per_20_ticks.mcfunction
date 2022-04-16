# runs every second

#attempt boss spawn
execute at @a[gamemode=!creative,gamemode=!spectator] as @e[type=minecraft:marker,distance=..4,tag=battletowers.spawn_boss] at @s run function battletowers:spawn_boss

#check if boss still alive
execute as @e[type=minecraft:marker,tag=battletowers.boss_phase] at @s run function battletowers:validate_boss_fight

#loop
schedule function battletowers:loop/per_20_ticks 20t replace