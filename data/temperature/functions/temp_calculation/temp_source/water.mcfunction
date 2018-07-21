execute as @s[scores={tmp.stayInWater=..24000}] at @s if block ~ ~ ~ water[level=0] run scoreboard players add @s tmp.stayInWater 1
execute as @s[scores={tmp.stayInWater=..24000}] at @s if block ~ ~ ~ cauldron[level=3] run scoreboard players add @s tmp.stayInWater 1
execute as @s[scores={tmp.stayInWater=..24000}] at @s if block ~ ~ ~ cauldron[level=2] run scoreboard players add @s tmp.stayInWater 1
execute as @s[scores={tmp.stayInWater=..24000}] at @s if block ~ ~ ~ cauldron[level=1] run scoreboard players add @s tmp.stayInWater 1
execute as @s[scores={tmp.stayInWater=100..}] at @s anchored feet positioned ~ ~ ~ if block ~ ~ ~ water[level=0] anchored eyes positioned ~ ~ ~ unless block ~ ~ ~ water[level=0] run function temperature:temp_calculation/temp_source/water/water_half
execute as @s[scores={tmp.stayInWater=100..}] at @s anchored feet positioned ~ ~ ~ if block ~ ~ ~ water[level=0] anchored eyes positioned ~ ~ ~ if block ~ ~ ~ water[level=0] run function temperature:temp_calculation/temp_source/water/water_full
execute as @s[scores={tmp.stayInWater=100..,tmp.wetnessTime=..0}] at @s if block ~ ~ ~ cauldron[level=3] run function temperature:temp_calculation/temp_source/water/cauldron
execute as @s[scores={tmp.stayInWater=100..,tmp.wetnessTime=..0}] at @s if block ~ ~ ~ cauldron[level=2] run function temperature:temp_calculation/temp_source/water/cauldron
execute as @s[scores={tmp.stayInWater=100..,tmp.wetnessTime=..0}] at @s if block ~ ~ ~ cauldron[level=1] run function temperature:temp_calculation/temp_source/water/cauldron
execute as @s[scores={tmp.stayInWater=1..}] at @s unless block ~ ~ ~ #temperature:temp_calculation/water_temp run scoreboard players set @s tmp.stayInWater 0

execute as @s[scores={tmp.humidity=1}] run scoreboard players add @s tmp.wetnessAmt 3
execute as @s[scores={tmp.humidity=2}] run scoreboard players add @s tmp.wetnessAmt 2
execute as @s[scores={tmp.humidity=3}] run scoreboard players add @s tmp.wetnessAmt 0
execute as @s[scores={tmp.humidity=4}] run scoreboard players remove @s tmp.wetnessAmt 2
execute as @s[scores={tmp.humidity=5}] run scoreboard players remove @s tmp.wetnessAmt 3

execute as @s[scores={tmp.wetnessTime=1..}] run scoreboard players remove @s tmp.wetnessTime 1
execute as @s[scores={tmp.wetnessTime=1..}] run scoreboard players operation @s tmp.totalTemp += @s tmp.wetnessAmt
execute as @s[scores={tmp.wetnessTime=..0}] run scoreboard players set @s tmp.wetnessAmt 0