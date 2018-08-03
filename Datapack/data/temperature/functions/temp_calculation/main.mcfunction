#Get current time
execute store result score #currentTime tmp.variable run time query daytime

#Get current Y position
execute as @s store result score @s tmp.playerAlt run data get entity @s Pos[1]

execute as @s run function temperature:temp_calculation/temperature