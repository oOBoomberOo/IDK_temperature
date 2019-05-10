scoreboard players operation @s cat.targetTemp = #cat.temp.target bb.config
scoreboard players operation @s cat.timerTemp = #cat.timer bb.config

execute as @s run function temperature:engine/calculate

scoreboard players operation #cat.timer.local bb.variable = #cat.timer bb.variable
scoreboard players operation #cat.timer.local bb.variable %= @s cat.timerTemp

execute if score #cat.timer.local bb.variable matches 0 run function temperature:engine/temperature

execute as @s run function temperature:display/main