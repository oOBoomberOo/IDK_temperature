scoreboard players set @s tmp.meatTmp 6
scoreboard players operation @s tmp.meatAmt > @s tmp.meatTmp
scoreboard players set @s tmp.meatTm 60
scoreboard players operation @s tmp.meatTm *= #second tmp.variable
scoreboard players operation @s tmp.meatTme > @s tmp.meatTm

advancement revoke @s from temperature:consumable/root