execute as @s[scores={tmp.death=1..}] run function temperature:player/death

#Find tmp.resultTemp
execute as @s run scoreboard players set @s tmp.resultTemp 0
execute as @s store result score @s tmp.calTotalTemp run scoreboard players get @s tmp.totalTemp
execute as @s store result score @s tmp.resultTemp run scoreboard players operation @s tmp.calTotalTemp -= @s tmp.playerTemp

execute as @s run scoreboard players add @s tmp.tempSpeed 1
execute as @s run function temperature:player/temperature_speed

execute as @s run function temperature:player/thermometer

execute as @s at @s anchored eyes positioned ~ ~ ~ run function temperature:player/effect
