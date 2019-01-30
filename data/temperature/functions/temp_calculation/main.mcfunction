scoreboard players operation @s tmp.multiplier = #temperature_speed tmp.variable
tag @s remove temperature.player.hot
tag @s remove temperature.player.cold

# Use in temperature:temp_calculation/temp_source/sunlight
execute store result score #currentTime tmp.variable run time query daytime

# Use in temperature:temp_calculation/temp_source/altitude
execute as @s store result score #player.altitude tmp.varaible run data get entity @s Pos[1]

# Calculating temperature
execute as @s run function temperature:temp_calculation/temperature

execute as @s if score @s tmp.totalTemp >= #hot_temperature tmp.variable run tag @s add temperature.player.hot
execute as @s if score @s tmp.totalTemp <= #cold_temperature tmp.variable run tag @s add temperature.player.cold