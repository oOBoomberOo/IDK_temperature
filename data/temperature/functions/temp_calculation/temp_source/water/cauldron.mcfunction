scoreboard players set @s tmp.wetnessTemp -6
scoreboard players operation @s tmp.wetnessAmt < @s tmp.wetnessTemp
scoreboard players set @s tmp.wetnessTime 60
scoreboard players operation @s tmp.wetnessTime *= #second tmp.variable
execute as @s positioned ~ ~ ~ if block ~ ~ ~ cauldron[level=1] run setblock ~ ~ ~ cauldron[level=0]
execute as @s positioned ~ ~ ~ if block ~ ~ ~ cauldron[level=2] run setblock ~ ~ ~ cauldron[level=1]
execute as @s positioned ~ ~ ~ if block ~ ~ ~ cauldron[level=3] run setblock ~ ~ ~ cauldron[level=2]