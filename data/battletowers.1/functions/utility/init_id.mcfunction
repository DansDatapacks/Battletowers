# initializes ID of tower

#set up next ID
execute unless score @s battletowers.tower_ID matches 1.. run scoreboard players add #battletowers.tower_ID battletowers.tower_ID 1

#get next ID
execute unless score @s battletowers.tower_ID matches 1.. run scoreboard players operation @s battletowers.tower_ID = #battletowers.tower_ID battletowers.tower_ID