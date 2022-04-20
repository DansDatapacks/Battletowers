# boss slain

#start destroying tower
tag @s remove battletowers.boss_phase
tag @s add battletowers.destroy_tower

#tell players nearby that the tower is crumbling
title @a[distance=..11] times 5 45 5
title @a[distance=..11] subtitle {"text":"The Tower Begins To Crumble...","color":"red"}
title @a[distance=..11] title ""

#schedule next phase
execute store result score @s battletowers.queue run time query gametime
scoreboard players add @s battletowers.queue 140
schedule function battletowers.1:tower/queue_destroy_tower 140t append