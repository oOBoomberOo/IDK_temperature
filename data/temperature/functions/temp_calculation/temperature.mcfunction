execute as @s run scoreboard players set @s tmp.totalTemp 0
execute as @s store result score @s tmp.altitude run scoreboard players get @s tmp.playerAlt
execute as @s run tag @s remove tmp.sunlight.exposed
execute as @s run tag @s remove tmp.sunlight.under_helmet
execute as @s run tag @s remove tmp.sunlight.under_cover
execute as @s at @s run function temperature:temp_calculation/is_exposed_to_sun
execute as @s run function temperature:temp_calculation/temp_source/biome
execute as @s run function temperature:temp_calculation/temp_source/sunlight
execute as @s[nbt={Dimension:0}] run function temperature:temp_calculation/temp_source/altitude
execute as @s run function temperature:temp_calculation/temp_source/block
execute as @s run function temperature:temp_calculation/temp_source/armor
execute as @s run function temperature:temp_calculation/temp_source/metal_armor
execute as @s run function temperature:temp_calculation/temp_source/sp_armor
execute as @s run function temperature:temp_calculation/temp_source/armor_modifier
execute as @s run function #temperature:modules
execute as @s run function temperature:temp_calculation/temp_source/player
execute as @s[gamemode=survival] if score #debuff_gamerule tmp.variable matches 1.. run function temperature:debuff/debuff
execute as @s run advancement revoke @s from temperature:consumable/root
execute as @s run advancement revoke @s from temperature:find_biome/root
execute as @s run advancement revoke @s from temperature:recipes/root