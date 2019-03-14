# reset temperature
scoreboard players set #player.totalTemp tmp.variable 0
scoreboard players set #player.armorTemp tmp.variable 0
scoreboard players set #player.wetnessTemp tmp.variable 0

execute as @s store result score @s tmp.altitude run scoreboard players get #player.altitude tmp.variable
execute as @s if score #currentTime tmp.variable > #min_day tmp.variable if score #currentTime tmp.variable < #max_day tmp.variable run function temperature:temp_calculation/sky

execute as @s run function temperature:temp_calculation/temp_source/biome
execute as @s run function temperature:temp_calculation/temp_source/sunlight

execute as @s[nbt={Dimension:0}] run function temperature:temp_calculation/temp_source/altitude/altitude

execute as @s run function temperature:temp_calculation/temp_source/block

execute as @s run function #temperature:temp_source/armors
execute as @s run function temperature:temp_calculation/armor/armor

execute as @s run function #temperature:temp_source/modules

execute as @s run function temperature:temp_calculation/temp_source/player
