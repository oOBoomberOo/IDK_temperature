scoreboard players set @s tmp.goldenTmp -2
scoreboard players operation @s tmp.goldenAmt < @s tmp.goldenTmp
scoreboard players set @s tmp.goldenTm 180
scoreboard players operation @s tmp.goldenTm *= #second tmp.variable
scoreboard players operation @s tmp.goldenTme > @s tmp.goldenTm

advancement revoke @s from temperature:consumable/root