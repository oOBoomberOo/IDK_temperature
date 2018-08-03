execute as @s store result score @s tmp.fireTime run data get entity @s Fire 1
execute as @s[scores={tmp.fireTime=1..}] run scoreboard players set @s tmp.tempFire 20
execute as @s[scores={tmp.fireTime=..0}] run scoreboard players set @s tmp.tempFire 0
execute as @s run scoreboard players operation @s tmp.totalTemp += @s tmp.tempFire