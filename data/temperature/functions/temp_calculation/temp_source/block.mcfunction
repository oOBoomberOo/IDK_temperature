scoreboard players set @s tmp.tempBlock 0

execute as @s at @s run function temperature:temp_calculation/temp_source/block/lava
execute as @s at @s run function temperature:temp_calculation/temp_source/block/furnace
execute as @s at @s run function temperature:temp_calculation/temp_source/block/fire


execute as @s run scoreboard players operation @s tmp.totalTemp += @s tmp.tempBlock