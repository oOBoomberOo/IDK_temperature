execute store result score #currentTime tmp.variable run time query daytime
execute as @s store result score @s tmp.playerAlt run data get entity @s Pos[1]
execute as @s run scoreboard players operation @s tmp.multiplier = #temperature_speed tmp.variable

execute as @s run tag @s remove temperature.player.hot
execute as @s run tag @s remove temperature.player.cold

execute as @s if score @s tmp.totalTemp >= #hot_temperature tmp.variable run tag @s add temperature.player.hot
execute as @s if score @s tmp.totalTemp <= #cold_temperature tmp.variable run tag @s add temperature.player.cold

execute as @s run function temperature:temp_calculation/temperature