#Detect if player is in water type block then increase tmp.stayInWater
execute as @s[scores={tmp.stayInWater=..24000}] at @s if block ~ ~ ~ water unless block ~ ~1 ~ water run scoreboard players add @s tmp.stayInWater 1
execute as @s[scores={tmp.stayInWater=..24000}] at @s unless block ~ ~ ~ water if block ~ ~1 ~ water run scoreboard players add @s tmp.stayInWater 1
execute as @s[scores={tmp.stayInWater=..24000}] at @s if block ~ ~ ~ water if block ~ ~1 ~ water run scoreboard players add @s tmp.stayInWater 1
execute as @s[scores={tmp.stayInWater=..24000}] at @s if block ~ ~ ~ cauldron unless block ~ ~ ~ cauldron[level=0] run scoreboard players add @s tmp.stayInWater 1

#Run corresponding function depend on the type of block
execute as @s[scores={tmp.stayInWater=100..}] at @s positioned ~ ~0.2 ~ if block ~ ~ ~ water unless block ~ ~1 ~ water run function temperature:temp_calculation/temp_source/water/water_half
execute as @s[scores={tmp.stayInWater=100..}] at @s positioned ~ ~0.2 ~ unless block ~ ~ ~ water if block ~ ~1 ~ water run function temperature:temp_calculation/temp_source/water/water_half
execute as @s[scores={tmp.stayInWater=100..}] at @s positioned ~ ~0.2 ~ if block ~ ~ ~ water if block ~ ~1 ~ water run function temperature:temp_calculation/temp_source/water/water_half
execute as @s[scores={tmp.stayInWater=100..}] at @s positioned ~ ~0.2 ~ if block ~ ~ ~ water[level=0] if block ~ ~1 ~ water[level=0] run function temperature:temp_calculation/temp_source/water/water_full
execute as @s[scores={tmp.stayInWater=100..,tmp.wetnessTime=..0}] at @s if block ~ ~ ~ cauldron[level=3] run function temperature:temp_calculation/temp_source/water/cauldron
execute as @s[scores={tmp.stayInWater=100..,tmp.wetnessTime=..0}] at @s if block ~ ~ ~ cauldron[level=2] run function temperature:temp_calculation/temp_source/water/cauldron
execute as @s[scores={tmp.stayInWater=100..,tmp.wetnessTime=..0}] at @s if block ~ ~ ~ cauldron[level=1] run function temperature:temp_calculation/temp_source/water/cauldron
execute as @s[scores={tmp.stayInWater=1..}] at @s unless block ~ ~ ~ #temperature:temp_calculation/water_temp run scoreboard players set @s tmp.stayInWater 0

execute as @s[scores={tmp.wetnessTime=1..}] run scoreboard players remove @s tmp.wetnessTime 1
execute as @s[scores={tmp.wetnessTime=1..}] run scoreboard players operation @s tmp.totalTemp += @s tmp.wetnessAmt
execute as @s[scores={tmp.wetnessTime=..0}] run scoreboard players set @s tmp.wetnessAmt 0