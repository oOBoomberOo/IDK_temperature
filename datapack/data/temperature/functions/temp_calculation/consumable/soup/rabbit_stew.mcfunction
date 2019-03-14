scoreboard players set @s tmp.soupTmp 8
scoreboard players operation @s tmp.soupAmt > @s tmp.soupTmp
scoreboard players set @s tmp.soupTm 135
scoreboard players operation @s tmp.soupTm *= #second tmp.variable
scoreboard players operation @s tmp.soupTme > @s tmp.soupTm

advancement revoke @s from temperature:consumable/root