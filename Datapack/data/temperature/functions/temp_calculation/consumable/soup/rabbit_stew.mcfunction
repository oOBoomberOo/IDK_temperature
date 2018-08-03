scoreboard players set @s tmp.soupTemp 8
scoreboard players operation @s tmp.soupAmt > @s tmp.soupTemp
scoreboard players set @s tmp.soupTime 135
scoreboard players operation @s tmp.soupTime *= #second tmp.variable

advancement revoke @s from temperature:consumable/root