#Detect if player is in water type block then increase tmp.stayInWater
execute as @s[scores={tmp.stayInWater=..24000}] at @s if block ~ ~ ~ #temperature:temp_calculation/wetness/water_source run scoreboard players add @s tmp.stayInWater 1
execute as @s[scores={tmp.stayInWater=..24000}] at @s if block ~ ~ ~ #temperature:temp_calculation/wetness/waterlogged[waterlogged=true] run scoreboard players add @s tmp.stayInWater 1

#Run corresponding function depend on the type of block
execute as @s[scores={tmp.stayInWater=100..}] at @s positioned ~ ~0.1 ~ if block ~ ~ ~ water unless block ~ ~1 ~ water run function temperature:temp_calculation/temp_source/wetness/water_half
execute as @s[scores={tmp.stayInWater=100..}] at @s positioned ~ ~0.1 ~ if block ~ ~ ~ #temperature:temp_calculation/wetness/waterlogged[waterlogged=true] unless block ~ ~1 ~ water run function temperature:temp_calculation/temp_source/wetness/water_half
execute as @s[scores={tmp.stayInWater=100..}] at @s positioned ~ ~0.1 ~ if block ~ ~ ~ water if block ~ ~1 ~ water run function temperature:temp_calculation/temp_source/wetness/water_full
execute as @s[scores={tmp.stayInWater=100..,tmp.wetnessTime=..0}] at @s if block ~ ~ ~ cauldron[level=3] run function temperature:temp_calculation/temp_source/wetness/cauldron
execute as @s[scores={tmp.stayInWater=100..,tmp.wetnessTime=..0}] at @s if block ~ ~ ~ cauldron[level=2] run function temperature:temp_calculation/temp_source/wetness/cauldron
execute as @s[scores={tmp.stayInWater=100..,tmp.wetnessTime=..0}] at @s if block ~ ~ ~ cauldron[level=1] run function temperature:temp_calculation/temp_source/wetness/cauldron
execute as @s[scores={tmp.stayInWater=1..}] at @s unless block ~ ~ ~ #temperature:temp_calculation/wetness/water_source unless block ~ ~ ~ #temperature:temp_calculation/wetness/waterlogged[waterlogged=true] run scoreboard players set @s tmp.stayInWater 0

execute as @s[scores={tmp.wetnessTime=1..}] run scoreboard players remove @s tmp.wetnessTime 1
execute as @s[scores={tmp.wetnessTime=1..}] run scoreboard players operation @s tmp.totalTemp += @s tmp.wetnessAmt
execute as @s[scores={tmp.wetnessTime=..0}] run scoreboard players set @s tmp.wetnessAmt 0