scoreboard players set @s tmp.wetnessTemp -10
execute as @s[scores={tmp.humidity=1}] run scoreboard players remove @s tmp.wetnessTemp 3
execute as @s[scores={tmp.humidity=2}] run scoreboard players remove @s tmp.wetnessTemp 2
execute as @s[scores={tmp.humidity=3}] run scoreboard players add @s tmp.wetnessTemp 0
execute as @s[scores={tmp.humidity=4}] run scoreboard players add @s tmp.wetnessTemp 2
execute as @s[scores={tmp.humidity=5}] run scoreboard players add @s tmp.wetnessTemp 3
scoreboard players operation @s tmp.wetnessAmt < @s tmp.wetnessTemp
scoreboard players set @s tmp.wetnessTtemp 90
scoreboard players operation @s tmp.wetnessTtemp *= #second tmp.variable
scoreboard players operation @s tmp.wetnessTime > @s tmp.wetnessTtemp
scoreboard players set @s tmp.stayInWater 0