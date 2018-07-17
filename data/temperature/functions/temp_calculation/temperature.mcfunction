execute as @s run scoreboard players set @s tmp.totalTemp 0
execute as @s run function temperature:temp_calculation/temp_source/biome
execute as @s run function temperature:temp_calculation/temp_source/time
execute as @s run function temperature:temp_calculation/temp_source/armor
execute as @s run function temperature:temp_calculation/temp_source/armor_modifier