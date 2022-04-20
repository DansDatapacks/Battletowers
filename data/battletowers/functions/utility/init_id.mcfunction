# initializes ID of tower

#set up next ID
execute unless score @s battletowers.ID matches 1.. run scoreboard players add #battletowers.tower_ID battletowers.ID 1

#get next ID
execute unless score @s battletowers.ID matches 1.. run scoreboard players operation @s battletowers.ID = #battletowers.tower_ID battletowers.ID