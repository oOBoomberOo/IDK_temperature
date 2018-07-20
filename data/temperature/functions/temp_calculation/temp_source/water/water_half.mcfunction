scoreboard players set @s tmp.wetnessTemp -5
scoreboard players operation @s tmp.wetnessAmt < @s tmp.wetnessTemp
scoreboard players set @s tmp.wetnessTime 20
scoreboard players operation @s tmp.wetnessTime *= #second tmp.variable