# handles spawners

#check if there is still a spawner at spawner markers
execute as @e[type=minecraft:marker] at @s unless block ~ ~ ~ minecraft:spawner run kill @s