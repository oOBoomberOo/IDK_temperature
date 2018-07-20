scoreboard players set @s tmp.waterTemp -5
scoreboard players operation @s tmp.waterAmt < @s tmp.waterTemp
scoreboard players set @s tmp.waterTime 60
scoreboard players operation @s tmp.waterTime *= #second tmp.variable

advancement revoke @s from temperature:consumable/root