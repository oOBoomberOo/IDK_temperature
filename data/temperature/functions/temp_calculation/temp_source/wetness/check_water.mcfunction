tag @s remove tmp.wetness.in_water
tag @s remove tmp.wetness.riding_boat

execute if entity @s[nbt={RootVehicle:{Entity:{id:"minecraft:boat"}}}] run tag @s add tmp.wetness.riding_boat


execute as @s[tag=!tmp.wetness.riding_boat] at @s anchored feet positioned ~ ~ ~ if block ~ ~ ~ #temperature:temp_calculation/wetness/water_source run tag @s add tmp.wetness.in_water
execute as @s[tag=!tmp.wetness.riding_boat] at @s anchored feet positioned ~ ~ ~ if block ~ ~ ~ #temperature:temp_calculation/wetness/waterlogged[waterlogged=true] run tag @s add tmp.wetness.in_water

execute as @s at @s anchored eyes positioned ^ ^ ^0.1 if block ~ ~ ~ #temperature:temp_calculation/wetness/water_source run tag @s add tmp.wetness.in_water
execute as @s at @s anchored eyes positioned ^ ^ ^0.1 if block ~ ~ ~ #temperature:temp_calculation/wetness/waterlogged[waterlogged=true] run tag @s add tmp.wetness.in_water

execute as @s at @s anchored feet positioned ~ ~ ~ if block ~ ~ ~ #temperature:temp_calculation/wetness/cauldron[level=1] run tag @s add tmp.wetness.in_water
execute as @s at @s anchored feet positioned ~ ~ ~ if block ~ ~ ~ #temperature:temp_calculation/wetness/cauldron[level=2] run tag @s add tmp.wetness.in_water
execute as @s at @s anchored feet positioned ~ ~ ~ if block ~ ~ ~ #temperature:temp_calculation/wetness/cauldron[level=3] run tag @s add tmp.wetness.in_water

scoreboard players add @s[tag=tmp.wetness.in_water] tmp.stayInWater 1
scoreboard players set @s[tag=!tmp.wetness.in_water] tmp.stayInWater 0