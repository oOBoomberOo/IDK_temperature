scoreboard players set @s tmp.meatTemp 5
scoreboard players operation @s tmp.meatAmt > @s tmp.meatTemp
scoreboard players set @s tmp.meatTime 60
scoreboard players operation @s tmp.meatTime *= #second tmp.variable

advancement revoke @s from temperature:consumable/root