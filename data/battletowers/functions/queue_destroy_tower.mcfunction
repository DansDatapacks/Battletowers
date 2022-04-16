# queue destruction of tower

#get current gametime
execute store result score #battletowers.current_gametime battletowers.temp run time query gametime

#find tower to destory
execute as @e[type=minecraft:marker,tag=battletowers.destroy_tower] if score @s battletowers.queue = #battletowers.current_gametime battletowers.temp at @s run function battletowers:destroy_tower