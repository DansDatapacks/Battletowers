# destroy tower

##get gamerule values
#get current doTileDrops gamerule value
execute store result score #battletowers.do_tile_drops battletowers.temp run gamerule doTileDrops
#get current mobGreifing gamerule value
execute store result score #battletowers.mob_griefing battletowers.temp run gamerule mobGriefing

##set gamerule values
#temporarily set doTileDrops to false (if it is currently true)
execute unless score #battletowers.do_tile_drops battletowers.temp matches 0 run gamerule doTileDrops false
#temporarily set mobGreifing to true (if it is currently true)
execute unless score #battletowers.do_tile_drops battletowers.temp matches 1 run gamerule doTileDrops true

#remove blocks while creating destroy particles
fill ~11 ~ ~11 ~-11 ~-2 ~-11 minecraft:air destroy

#explosion effect
summon minecraft:creeper ~ ~ ~ {Invulnerable:1b,ExplosionRadius:8b,Fuse:0,ignited:1b}

##reset gamerule values
#set doTileDrops back to true
execute unless score #battletowers.do_tile_drops battletowers.temp matches 0 run gamerule doTileDrops true
#set mobGriefing back to true
execute unless score #battletowers.mob_griefing battletowers.temp matches 1 run gamerule mobGriefing false

#next level
scoreboard players add @s battletowers.destroy_level 1

#move marker
tp ~ ~-2 ~

#end if at last level
execute if score @s battletowers.destroy_level matches 19.. run kill @s

#schedule next level
execute store result score @s battletowers.queue run time query gametime
scoreboard players add @s battletowers.queue 35
schedule function battletowers:tower/queue_destroy_tower 35t append