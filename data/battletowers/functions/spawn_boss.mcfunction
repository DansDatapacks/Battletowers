#randomly decide boss to spawn

#generate random number
function battletowers:math/random

#evoker
execute if score #RNG.num dan_bt.temp matches 1..25 run summon evoker ~ ~ ~ {DeathLootTable:"battletowers:loot/boss_drop",PersistenceRequired:1b,CanPickUpLoot:0b,Health:300f,Tags:["dan_battletowers.boss","dan_battletowers.init_id"],Attributes:[{Name:generic.max_health,Base:300}],HandItems:[{id:"minecraft:bow",Count:1b},{}],HandDropChances:[0.000F,0.085F]}

#illusioner
execute if score #RNG.num dan_bt.temp matches 26..50 run summon illusioner ~ ~ ~ {DeathLootTable:"battletowers:loot/boss_drop",PersistenceRequired:1b,CanPickUpLoot:0b,Health:350f,Tags:["dan_battletowers.boss","dan_battletowers.init_id"],Attributes:[{Name:generic.max_health,Base:350}]}

#vindicator
execute if score #RNG.num dan_bt.temp matches 51..100 run summon vindicator ~ ~ ~ {DeathLootTable:"battletowers:loot/boss_drop",PersistenceRequired:1b,CanPickUpLoot:0b,Health:200f,Tags:["dan_battletowers.boss","dan_battletowers.init_id"],Attributes:[{Name:generic.max_health,Base:200}],HandItems:[{id:"minecraft:iron_axe",Count:1b},{}],HandDropChances:[0.000F,0.085F]}

#sync AEC and boss
function battletowers:init_id
scoreboard players operation @e[limit=1,sort=nearest,tag=dan_battletowers.init_id] dan_bt.ID = @s dan_bt.ID
tag @e[limit=1,sort=nearest,tag=dan_battletowers.init_id] remove dan_battletowers.init_id

#turn AEC into boss phase
tag @s remove dan_battletowers.spawn_boss
tag @s add dan_battletowers.boss_phase