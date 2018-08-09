scoreboard players set @s tmp.bakedTmp 3
scoreboard players operation @s tmp.bakedAmt > @s tmp.bakedTmp
scoreboard players set @s tmp.bakedTm 30
scoreboard players operation @s tmp.bakedTm *= #second tmp.variable
scoreboard players operation @s tmp.bakedTme > @s tmp.bakedTm

advancement revoke @s from temperature:consumable/root