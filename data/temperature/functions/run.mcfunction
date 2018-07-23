#Temperature calculation
execute as @a run function temperature:temp_calculation/main

#Player event
execute as @a run function temperature:player/player

#First time join server
execute as @a unless score @s tmp.playerTemp matches -100.. run scoreboard players set @s tmp.playerTemp 50
execute as @a unless score @s tmp.heatTime matches 0.. run scoreboard players set @s tmp.heatTime 0
execute as @a unless score @s tmp.coldTime matches 0.. run scoreboard players set @s tmp.coldTime 0
execute as @a unless score @s tmp.stayInWater matches 0.. run scoreboard players set @s tmp.stayInWater 0
execute as @a unless score @s tmp.stayInSun matches 0.. run scoreboard players set @s tmp.stayInSun 0