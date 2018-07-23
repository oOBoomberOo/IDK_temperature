execute as @s run scoreboard players set @s tmp.totalTemp 0
execute as @s store result score @s tmp.altitude run scoreboard players get @s tmp.playerAlt
execute as @s run tag @s remove tmp.sunlight.exposed
execute as @s at @s run function temperature:temp_calculation/is_exposed_to_sun
execute as @s run function temperature:temp_calculation/temp_source/biome
execute as @s run function temperature:temp_calculation/temp_source/sunlight
execute as @s[nbt={Dimension:0}] run function temperature:temp_calculation/temp_source/altitude
execute as @s run function temperature:temp_calculation/temp_source/block
execute as @s run function temperature:temp_calculation/temp_source/armor
execute as @s run function temperature:temp_calculation/temp_source/metal_armor
execute as @s run function temperature:temp_calculation/temp_source/sp_armor
execute as @s run function temperature:temp_calculation/temp_source/armor_modifier
execute as @s run function temperature:temp_calculation/temp_source/water
execute as @s run function temperature:temp_calculation/temp_source/consumable
execute as @s run function temperature:temp_calculation/temp_source/on_fire
execute as @s run function temperature:temp_calculation/temp_source/debuff_mode
execute as @s run function temperature:temp_calculation/temp_source/player
execute as @s run function temperature:debuff/debuff