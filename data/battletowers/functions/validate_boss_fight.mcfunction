# validate boss fight

#get ID
scoreboard players operation #BossID dan_bt.temp = @s dan_bt.ID

#tag all Bosses with AEC ID
execute as @e[limit=1,sort=nearest,tag=dan_battletowers.boss] if score @s dan_bt.ID = #BossID dan_bt.temp run tag @s add dan_battletowers.syncFound

#TP boss back to AEC if too far
execute unless entity @e[limit=1,sort=nearest,tag=dan_battletowers.syncFound,distance=..10] run tp @e[limit=1,sort=nearest,tag=dan_battletowers.syncFound] @s

#give players mining fatigue when near boss
#execute at @e[limit=1,sort=nearest,tag=dan_battletowers.syncFound] as @a[gamemode=!creative,gamemode=!spectator,distance=..8] run effect give @s mining_fatigue 5 1 false

#boss died
execute unless entity @e[tag=dan_battletowers.syncFound,limit=1] run function battletowers:boss_slain 

#reset temp variables
scoreboard players reset #BossID dan_bt.temp
tag @e[tag=dan_battletowers.syncFound,limit=1] remove dan_battletowers.syncFound