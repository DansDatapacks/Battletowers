# runs every second

#check to spawn boss
execute at @a[gamemode=!creative,gamemode=!spectator] as @e[type=minecraft:area_effect_cloud,distance=..4,tag=dan_battletowers.spawn_boss] at @s run function battletowers:spawn_boss

#validate boss fight
execute as @e[type=minecraft:area_effect_cloud,tag=dan_battletowers.boss_phase] at @s run function battletowers:validate_boss_fight

#loop
schedule function battletowers:loop/every_second 20t replace