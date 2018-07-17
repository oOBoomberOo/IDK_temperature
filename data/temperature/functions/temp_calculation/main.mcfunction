#Get current time
execute store result score #currentTime tmp.variable run time query daytime
execute as @s run function temperature:temp_calculation/temperature