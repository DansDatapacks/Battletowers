#randomly decide boss to spawn

#generate random number
function #sourcecraft:generate_random_number

#evoker
execute if score #RNG sourcecraft.num matches 1..25 run summon minecraft:evoker ~ ~ ~ {DeathLootTable:"battletowers.1:loot/boss_drop",PersistenceRequired:1b,CanPickUpLoot:0b,Health:300f,Tags:["battletowers.boss","battletowers.init_id"],Attributes:[{Name:"minecraft:generic.max_health",Base:300}],HandItems:[{id:"minecraft:bow",Count:1b},{}],HandDropChances:[0.000F,0.085F]}

#illusioner
execute if score #RNG sourcecraft.num matches 26..50 run summon minecraft:illusioner ~ ~ ~ {DeathLootTable:"battletowers.1:loot/boss_drop",PersistenceRequired:1b,CanPickUpLoot:0b,Health:350f,Tags:["battletowers.boss","battletowers.init_id"],Attributes:[{Name:"minecraft:generic.max_health",Base:350}],HandItems:[{id:"minecraft:crossbow",Count:1b},{}],HandDropChances:[0.000F,0.085F]}

#vindicator
execute if score #RNG sourcecraft.num matches 51..100 run summon minecraft:vindicator ~ ~ ~ {DeathLootTable:"battletowers.1:loot/boss_drop",PersistenceRequired:1b,CanPickUpLoot:0b,Health:200f,Tags:["battletowers.boss","battletowers.init_id"],Attributes:[{Name:"minecraft:generic.max_health",Base:200}],HandItems:[{id:"minecraft:iron_axe",Count:1b},{}],HandDropChances:[0.000F,0.085F]}

#sync marker and boss
function battletowers.1:utility/init_id
scoreboard players operation @e[limit=1,sort=nearest,tag=battletowers.init_id] battletowers.tower_ID = @s battletowers.tower_ID
tag @e[limit=1,sort=nearest,tag=battletowers.init_id] remove battletowers.init_id

#turn marker into boss phase
tag @s remove battletowers.spawn_boss
tag @s add battletowers.boss_phase