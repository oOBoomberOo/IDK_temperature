execute as @s[scores={tmp.wetnessTime=1..}] unless block ~ ~ ~ #temperature:temp_calculation/wetness/water_source unless block ~ ~ ~ #temperature:temp_calculation/wetness/waterlogged[waterlogged=true] positioned ~ ~ ~ run particle splash ~ ~0.6 ~ 0.05 0.2 0.05 0.01 2 normal @a

#execute as @s[scores={tmp.playerTemp=..20}] run scoreboard players add @s tmp.tempEffect 1
#execute as @s[scores={tmp.playerTemp=..20,tmp.tempEffect=40..}] at @s unless block ~ ~ ~ #temperature:temp_calculation/wetness/water_source unless block ~ ~ ~ #temperature:temp_calculation/wetness/waterlogged[waterlogged=true] anchored eyes positioned ^ ^ ^0.25 run particle cloud ~ ~ ~ 0 0 0 0 1 normal @a
#execute as @s[scores={tmp.playerTemp=..20,tmp.tempEffect=40..}] run scoreboard players set @s tmp.tempEffect 0



#execute if entity @s[scores={tmp.playerTemp=..20}] run scoreboard players add @s tmp.cBreathTime 1
#execute at @s[scores{tmp.cBreathTime=300..}] unless block ~ ~ ~ #temperature:temp_calculation/wetness/water_source unless block ~ ~ ~ #temperature:temp_calculation/wetness/waterlogged[waterlogged=true] anchored eyes positioned ^ ^ ^0.7 run particle minecraft:falling_dust minecraft:snow_block ~ ~ ~ 0 0 0.002 0 2 force
#execute as @s[scores={tmp.cBreathTime=300..}] run scoreboard players set @s tmp.cBreathTime 0
