# runs when server loads/reloads

#install variables
scoreboard objectives add dan_bt.temp dummy
scoreboard objectives add dan_bt.ID dummy
scoreboard objectives add dan_bt.phase dummy

# start loops
schedule function battletowers:loop/every_second 1t replace