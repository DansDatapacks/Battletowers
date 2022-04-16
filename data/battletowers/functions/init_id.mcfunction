# initializes ID of player

#set up next ID
execute unless score @s battletowers.ID matches 1.. run scoreboard players add #nextID battletowers.ID 1

#get next ID
execute unless score @s battletowers.ID matches 1.. run scoreboard players operation @s battletowers.ID = #nextID battletowers.ID