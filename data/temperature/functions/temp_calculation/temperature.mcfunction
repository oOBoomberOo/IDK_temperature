execute as @s run scoreboard players set @s tmp.totalTemp 0
execute as @s store result score @s tmp.altitude run scoreboard players get @s tmp.playerAlt
execute as @s run tag @s remove tmp.altitude.no_direct_sunlight
execute as @s at @s run function temperature:temp_calculation/is_exposed_to_sun
execute as @s run function temperature:temp_calculation/temp_source/biome
execute as @s run function temperature:temp_calculation/temp_source/sunlight
execute as @s[nbt={Dimension:0b}] run function temperature:temp_calculation/temp_source/altitude
execute as @s run function temperature:temp_calculation/temp_source/armor
execute as @s run function temperature:temp_calculation/temp_source/armor_modifier