# destroys tower

#explosion
execute at @e[type=area_effect_cloud,tag=dan_battletowers.destroy_tower] positioned ^ ^ ^-3 run summon creeper ~ ~ ~ {Invulnerable:1b,ExplosionRadius:10b,Fuse:0,ignited:1b}
execute at @e[type=area_effect_cloud,tag=dan_battletowers.destroy_tower] positioned ^ ^ ^9 run summon creeper ~ ~ ~ {Invulnerable:1b,ExplosionRadius:10b,Fuse:0,ignited:1b}

#clear lava
execute at @e[type=area_effect_cloud,tag=dan_battletowers.destroy_tower] run fill ~8 ~ ~8 ~-8 ~-8 ~-8 air replace lava

#increase phase
scoreboard players add @e[type=area_effect_cloud,tag=dan_battletowers.destroy_tower] dan_bt.phase 1

#move AEC
execute as @e[type=area_effect_cloud,tag=dan_battletowers.destroy_tower] at @s run tp ~ ~-3 ~

#kill if phase exceeds max
execute as @e[type=area_effect_cloud,tag=dan_battletowers.destroy_tower] if score @s dan_bt.phase matches 7.. run kill @s

#continue to schedule
execute if entity @e[type=area_effect_cloud,tag=dan_battletowers.destroy_tower] run schedule function battletowers:destroy_tower 6s replace