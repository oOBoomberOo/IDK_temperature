#Temperature calculation
execute as @a run function temperature:temp_calculation/main

#Player event
execute as @a run function temperature:player/player
execute as @a run function #temperature:advancements

execute as @a run scoreboard players set @s tmp.tempStr 0

#First time join server
execute as @a unless score @s tmp.playerTemp matches -100.. run scoreboard players set @s tmp.playerTemp 50
execute as @a unless score @s tmp.stayInWater matches 0.. run scoreboard players set @s tmp.stayInWater 0
execute as @a unless score @s tmp.stayInSun matches 0.. run scoreboard players set @s tmp.stayInSun 0
execute as @a unless score @s tmp.multiplier matches 0.. run scoreboard players set @s tmp.multiplier 100