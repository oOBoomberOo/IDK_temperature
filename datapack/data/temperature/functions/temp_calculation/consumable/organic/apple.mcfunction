scoreboard players set @s tmp.organicTmp -2
scoreboard players operation @s tmp.organicAmt < @s tmp.organicTmp
scoreboard players set @s tmp.organicTm 60
scoreboard players operation @s tmp.organicTm *= #second tmp.variable
scoreboard players operation @s tmp.organicTme > @s tmp.organicTm

advancement revoke @s from temperature:consumable/root