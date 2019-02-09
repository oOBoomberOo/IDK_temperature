#Detect if player is in water type block then increase tmp.stayInWater
execute as @s run function temperature:temp_calculation/temp_source/wetness/check_water

#Run corresponding function depend on the type of block

tag @s remove tmp.wetness.water.top
tag @s remove tmp.wetness.water.bottom

execute as @s at @s anchored feet positioned ~ ~ ~ if block ~ ~ ~ #temperature:temp_calculation/wetness/water_source run tag @s add tmp.wetness.water.bottom
execute as @s at @s anchored feet positioned ~ ~ ~ if block ~ ~ ~ #temperature:temp_calculation/wetness/waterlogged[waterlogged=true] run tag @s add tmp.wetness.water.bottom
execute as @s at @s anchored eyes positioned ^ ^ ^0.1 if block ~ ~ ~ #temperature:temp_calculation/wetness/water_source run tag @s add tmp.wetness.water.top
execute as @s at @s anchored eyes positioned ^ ^ ^0.1 if block ~ ~ ~ #temperature:temp_calculation/wetness/waterlogged[waterlogged=true] run tag @s add tmp.wetness.water.top

execute as @s[scores={tmp.stayInWater=100..}, tag=tmp.wetness.water.bottom, tag=!tmp.wetness.water.top] run function temperature:temp_calculation/temp_source/wetness/water_half
execute as @s[scores={tmp.stayInWater=100..}, tag=!tmp.wetness.water.bottom, tag=tmp.wetness.water.top] run function temperature:temp_calculation/temp_source/wetness/water_half
execute as @s[scores={tmp.stayInWater=100..}, tag=tmp.wetness.water.bottom, tag=tmp.wetness.water.top] run function temperature:temp_calculation/temp_source/wetness/water_full

execute as @s[scores={tmp.stayInWater=100..,tmp.wetnessTime=..0}] at @s anchored feet positioned ~ ~ ~ if block ~ ~ ~ #temperature:temp_calculation/wetness/cauldron[level=1] run function temperature:temp_calculation/temp_source/wetness/cauldron
execute as @s[scores={tmp.stayInWater=100..,tmp.wetnessTime=..0}] at @s anchored feet positioned ~ ~ ~ if block ~ ~ ~ #temperature:temp_calculation/wetness/cauldron[level=2] run function temperature:temp_calculation/temp_source/wetness/cauldron
execute as @s[scores={tmp.stayInWater=100..,tmp.wetnessTime=..0}] at @s anchored feet positioned ~ ~ ~ if block ~ ~ ~ #temperature:temp_calculation/wetness/cauldron[level=3] run function temperature:temp_calculation/temp_source/wetness/cauldron

execute as @s[scores={tmp.wetnessTime=1..}] run scoreboard players remove @s tmp.wetnessTime 1
execute as @s[scores={tmp.wetnessTime=1..}] run scoreboard players operation #player.totalTemp tmp.variable += @s tmp.wetnessTemp
execute as @s[scores={tmp.wetnessTime=..0}] run scoreboard players set @s tmp.wetnessTemp 0
