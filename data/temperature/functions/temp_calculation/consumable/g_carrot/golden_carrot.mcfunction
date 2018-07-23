scoreboard players set @s tmp.g_carrotTemp -2
scoreboard players operation @s tmp.g_carrotAmt < @s tmp.g_carrotTemp
scoreboard players set @s tmp.g_carrotTime 180
scoreboard players operation @s tmp.g_carrotTime *= #second tmp.variable

advancement revoke @s from temperature:consumable/root