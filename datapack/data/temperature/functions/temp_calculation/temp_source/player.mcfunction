execute as @s run scoreboard players operation @s tmp.totalTemp = #player.totalTemp tmp.variable

# So in this function tmp.playerTemp is use instead of tmp.totalTemp anyone know why this is?
execute as @s run scoreboard players operation @s tmp.playerTemp = #player.totalTemp tmp.variable

execute as @s[scores={tmp.playerTemp=70..,tmp.hotTime1=..24000}] run scoreboard players add @s tmp.hotTime1 1
execute as @s[scores={tmp.playerTemp=83..,tmp.hotTime2=..24000}] run scoreboard players add @s tmp.hotTime2 1

execute as @s[scores={tmp.playerTemp=..69}] run scoreboard players set @s tmp.hotTime1 0
execute as @s[scores={tmp.playerTemp=..82}] run scoreboard players set @s tmp.hotTime2 0

execute as @s[scores={tmp.playerTemp=..30,tmp.coldTime1=..24000}] run scoreboard players add @s tmp.coldTime1 1
execute as @s[scores={tmp.playerTemp=..20,tmp.coldTime2=..24000}] run scoreboard players add @s tmp.coldTime2 1
execute as @s[scores={tmp.playerTemp=..15,tmp.coldTime3=..24000}] run scoreboard players add @s tmp.coldTime3 1
execute as @s[scores={tmp.playerTemp=..10,tmp.coldTime4=..24000}] run scoreboard players add @s tmp.coldTime4 1
execute as @s[scores={tmp.playerTemp=..5,tmp.coldTime5=..24000}] run scoreboard players add @s tmp.coldTime5 1
execute as @s[scores={tmp.playerTemp=..0,tmp.coldTime6=..24000}] run scoreboard players add @s tmp.coldTime6 1
execute as @s[scores={tmp.playerTemp=..-5,tmp.coldTime7=..24000}] run scoreboard players add @s tmp.coldTime7 1

execute as @s[scores={tmp.playerTemp=31..}] run scoreboard players set @s tmp.coldTime1 0
execute as @s[scores={tmp.playerTemp=21..}] run scoreboard players set @s tmp.coldTime2 0
execute as @s[scores={tmp.playerTemp=16..}] run scoreboard players set @s tmp.coldTime3 0
execute as @s[scores={tmp.playerTemp=11..}] run scoreboard players set @s tmp.coldTime4 0
execute as @s[scores={tmp.playerTemp=6..}] run scoreboard players set @s tmp.coldTime5 0
execute as @s[scores={tmp.playerTemp=1..}] run scoreboard players set @s tmp.coldTime6 0
execute as @s[scores={tmp.playerTemp=-4..}] run scoreboard players set @s tmp.coldTime7 0

execute as @s[gamemode=survival] if score #debuff_gamerule tmp.variable matches 1.. run function #temperature:debuff/loop