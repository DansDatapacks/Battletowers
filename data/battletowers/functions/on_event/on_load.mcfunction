# runs when server loads/reloads

#install variables
scoreboard objectives add battletowers.temp dummy
scoreboard objectives add battletowers.ID dummy
scoreboard objectives add battletowers.destroy_level dummy
scoreboard objectives add battletowers.queue dummy

#start loops
schedule function battletowers:loop/per_20_ticks 1t replace