#1 The Scoreboard to increment/decrement the scores slowly
execute as @a run function temperature:player/player
execute as @a run function temperature:temp_calculation/main

#2 Clock on Offhand: TELL YOUR TEMPERATURE


#Set the score of anyone who doesn't have it
execute as @a unless score @s tmp.playerTemp matches -100.. run scoreboard players set @s tmp.playerTemp 50
execute as @a unless score @s tmp.heatTime matches 0.. run scoreboard players set @s tmp.heatTime 0
execute as @a unless score @s tmp.coldTime matches 0.. run scoreboard players set @s tmp.coldTime 0
execute as @a unless score @s tmp.stayInWater matches 0.. run scoreboard players set @s tmp.stayInWater 0

#Can't find any score involve playerTimer aka 'int tmp.playerTimer is never used'
execute as @a unless score @s tmp.playerTimer matches -1.. run scoreboard players set @s tmp.playerTimer 50