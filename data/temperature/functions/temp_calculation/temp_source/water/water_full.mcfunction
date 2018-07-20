scoreboard players set @s tmp.wetnessTemp -10
scoreboard players operation @s tmp.wetnessAmt < @s tmp.wetnessTemp
scoreboard players set @s tmp.wetnessTime 90
scoreboard players operation @s tmp.wetnessTime *= #second tmp.variable