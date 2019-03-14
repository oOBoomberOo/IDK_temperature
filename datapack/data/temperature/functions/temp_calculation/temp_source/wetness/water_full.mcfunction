scoreboard players set #tmp.wetnessTemp tmp.variable -10
execute as @s[scores={tmp.humidity=1}] run scoreboard players remove #tmp.wetnessTemp tmp.variable 3
execute as @s[scores={tmp.humidity=2}] run scoreboard players remove #tmp.wetnessTemp tmp.variable 2
execute as @s[scores={tmp.humidity=3}] run scoreboard players add #tmp.wetnessTemp tmp.variable 0
execute as @s[scores={tmp.humidity=4}] run scoreboard players add #tmp.wetnessTemp tmp.variable 2
execute as @s[scores={tmp.humidity=5}] run scoreboard players add #tmp.wetnessTemp tmp.variable 3
scoreboard players operation @s tmp.wetnessTemp < #tmp.wetnessTemp tmp.variable 
scoreboard players set #tmp.wetnessTime tmp.variable 90
scoreboard players operation #tmp.wetnessTime tmp.variable *= #second tmp.variable
scoreboard players operation @s tmp.wetnessTime > #tmp.wetnessTime tmp.variable