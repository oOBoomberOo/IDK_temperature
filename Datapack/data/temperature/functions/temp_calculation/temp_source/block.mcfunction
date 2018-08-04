scoreboard players set @s tmp.tempBlock 0

execute as @s at @s run function temperature:temp_calculation/temp_source/block/lava_near
execute as @s at @s run function temperature:temp_calculation/temp_source/block/lava_inside
execute as @s at @s run function temperature:temp_calculation/temp_source/block/furnace
execute as @s at @s run function temperature:temp_calculation/temp_source/block/fire
execute as @s at @s run function temperature:temp_calculation/temp_source/block/ice
execute as @s at @s run function temperature:temp_calculation/temp_source/block/packed_ice
execute as @s at @s run function temperature:temp_calculation/temp_source/block/blue_ice
execute as @s at @s run function temperature:temp_calculation/temp_source/block/snow
execute as @s[nbt=!{Dimension:-1}] at @s run function temperature:temp_calculation/temp_source/block/torch_standing
execute as @s[nbt=!{Dimension:-1}] at @s run function temperature:temp_calculation/temp_source/block/torch_wall
execute as @s at @s run function temperature:temp_calculation/temp_source/block/redstone_torch_standing
execute as @s at @s run function temperature:temp_calculation/temp_source/block/redstone_torch_wall

execute as @s run scoreboard players operation @s tmp.totalTemp += @s tmp.tempBlock