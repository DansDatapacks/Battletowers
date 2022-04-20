# runs when server loads/reloads

#install variables
scoreboard objectives add battletowers.tower_ID dummy
scoreboard objectives add battletowers.destroy_level dummy
scoreboard objectives add battletowers.queue dummy

#start loops
schedule function battletowers.1:loop/per_20_ticks 1t replace