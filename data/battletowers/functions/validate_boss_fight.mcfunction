# validate boss fight

#get ID
scoreboard players operation #battletowers.boss_ID battletowers.temp = @s battletowers.ID

#tag all Bosses with marker ID
execute as @e[limit=1,sort=nearest,tag=battletowers.boss] if score @s battletowers.ID = #battletowers.boss_ID battletowers.temp run tag @s add battletowers.sync.found

#heal boss to full health if no players nearby
execute as @e[limit=1,sort=nearest,tag=battletowers.sync.found] at @s unless entity @p[distance=..22] store result entity @s Health float 1 run attribute @s generic.max_health get 1

#tp boss back to marker if too far
execute unless entity @e[limit=1,sort=nearest,tag=battletowers.sync.found,distance=..10] run tp @e[limit=1,sort=nearest,tag=battletowers.sync.found] @s

#boss died
execute unless entity @e[tag=battletowers.sync.found,limit=1] run function battletowers:boss_slain

#reset temp variables
scoreboard players reset #battletowers.boss_ID battletowers.temp
tag @e[tag=battletowers.sync.found,limit=1] remove battletowers.sync.found