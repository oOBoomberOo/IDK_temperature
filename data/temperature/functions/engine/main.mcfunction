# Set base score for "targetTemp" & "timerTemp"
scoreboard players operation @s cat.targetTemp = #cat.temp.start bb.config
scoreboard players operation @s cat.timerTemp = #cat.timer bb.config

execute as @s run function temperature:engine/get

# Use "mod" operation to dynamically detect time frame
scoreboard players operation #cat.timer.local bb.variable = #cat.timer bb.variable
scoreboard players operation #cat.timer.local bb.variable %= @s cat.timerTemp

# Calculate temperature
execute if score #cat.timer.local bb.variable matches 0 run function temperature:engine/calculate

execute as @s run function temperature:threshold/main
#execute as @s run function temperature:effect/main

# Handling display message
execute as @s run function temperature:display/main