scoreboard players set @s tmp.waterTmp -6
scoreboard players operation @s tmp.waterAmt < @s tmp.waterTmp
scoreboard players set @s tmp.waterTm 90
scoreboard players operation @s tmp.waterTm *= #second tmp.variable
scoreboard players operation @s tmp.waterTme > @s tmp.waterTm

advancement revoke @s from temperature:consumable/root