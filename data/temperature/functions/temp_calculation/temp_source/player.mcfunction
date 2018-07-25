execute as @s[scores={tmp.playerTemp=70..,tmp.hotTime1=..24000}] run scoreboard players add @s tmp.hotTime1 1
execute as @s[scores={tmp.playerTemp=83..,tmp.hotTime2=..24000}] run scoreboard players add @s tmp.hotTime2 1

execute as @s[scores={tmp.playerTemp=..69}] run scoreboard players set @s tmp.hotTime1 0
execute as @s[scores={tmp.playerTemp=..82}] run scoreboard players set @s tmp.hotTime2 0

execute as @s[scores={tmp.playerTemp=..30,tmp.coldTime1=..24000}] run scoreboard players add @s tmp.coldTime1 1
execute as @s[scores={tmp.playerTemp=..20,tmp.coldTime2=..24000}] run scoreboard players add @s tmp.coldTime2 1

execute as @s[scores={tmp.playerTemp=31..}] run scoreboard players set @s tmp.coldTime1 0
execute as @s[scores={tmp.playerTemp=21..}] run scoreboard players set @s tmp.coldTime2 0