# verifies that this is the latest version of the core datapack and runs load if so

#run if load status matches this datapack's version
execute if score #battletowers load.status matches 1 run function battletowers:on_event/on_load