# initializes ID of player

#set up next ID
execute unless score @s dan_bt.ID matches 1.. run scoreboard players add #nextID dan_bt.ID 1

#get next ID
execute unless score @s dan_bt.ID matches 1.. run scoreboard players operation @s dan_bt.ID = #nextID dan_bt.ID