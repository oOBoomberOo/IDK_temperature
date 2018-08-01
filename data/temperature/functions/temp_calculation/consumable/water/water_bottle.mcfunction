scoreboard players set @s tmp.waterTemp -6
scoreboard players operation @s tmp.waterAmt < @s tmp.waterTemp
scoreboard players set @s tmp.waterTime 90
scoreboard players operation @s tmp.waterTime *= #second tmp.variable

advancement revoke @s from temperature:consumable/root