scoreboard players set @s tmp.g_appleTemp -2
scoreboard players operation @s tmp.g_appleAmt < @s tmp.g_appleTemp
scoreboard players set @s tmp.g_appleTime 180
scoreboard players operation @s tmp.g_appleTime *= #second tmp.variable

advancement revoke @s from temperature:consumable/root