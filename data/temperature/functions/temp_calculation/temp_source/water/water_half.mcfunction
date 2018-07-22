scoreboard players set @s tmp.wetnessTemp -5
execute as @s[scores={tmp.humidity=1}] run scoreboard players remove @s tmp.wetnessTemp 3
execute as @s[scores={tmp.humidity=2}] run scoreboard players remove @s tmp.wetnessTemp 2
execute as @s[scores={tmp.humidity=3}] run scoreboard players add @s tmp.wetnessTemp 0
execute as @s[scores={tmp.humidity=4}] run scoreboard players add @s tmp.wetnessTemp 2
execute as @s[scores={tmp.humidity=5}] run scoreboard players add @s tmp.wetnessTemp 3
scoreboard players operation @s tmp.wetnessAmt < @s tmp.wetnessTemp
scoreboard players set @s tmp.wetnessTime 20
scoreboard players operation @s tmp.wetnessTime *= #second tmp.variable
scoreboard players set @s tmp.stayInWater 0