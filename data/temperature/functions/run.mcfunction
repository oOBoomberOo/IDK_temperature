#Temperature calculation
execute as @a run function temperature:temp_calculation/main

#Player event
execute as @a run function temperature:player/player
execute as @a run function #temperature:advancements

#First time join server
execute as @a unless score @s tmp.playerTemp matches -100.. run scoreboard players set @s tmp.playerTemp 50
execute as @a unless score @s tmp.stayInWater matches 0.. run scoreboard players set @s tmp.stayInWater 0
execute as @a unless score @s tmp.stayInSun matches 0.. run scoreboard players set @s tmp.stayInSun 0

execute as @a unless score @s tmp.heatTime1 matches 0.. run scoreboard players set @s tmp.heatTime1 0
execute as @a unless score @s tmp.heatTime2 matches 0.. run scoreboard players set @s tmp.heatTime2 0

execute as @a unless score @s tmp.coldTime1 matches 0.. run scoreboard players set @s tmp.coldTime1 0
execute as @a unless score @s tmp.coldTime2 matches 0.. run scoreboard players set @s tmp.coldTime2 0
execute as @a unless score @s tmp.coldTime3 matches 0.. run scoreboard players set @s tmp.coldTime3 0
execute as @a unless score @s tmp.coldTime4 matches 0.. run scoreboard players set @s tmp.coldTime4 0
execute as @a unless score @s tmp.coldTime5 matches 0.. run scoreboard players set @s tmp.coldTime5 0
execute as @a unless score @s tmp.coldTime6 matches 0.. run scoreboard players set @s tmp.coldTime6 0
execute as @a unless score @s tmp.coldTime7 matches 0.. run scoreboard players set @s tmp.coldTime7 0
