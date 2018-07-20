execute as @s[scores={tmp.playerTemp=70..,tmp.heat=..24000}] run scoreboard players add @s tmp.heatTime 1
execute as @s[scores={tmp.playerTemp=..20,tmp.cold=..24000}] run scoreboard players add @s tmp.coldTime 1
execute as @s[scores={tmp.playerTemp=21..69,tmp.cold=..24000}] run scoreboard players set @s tmp.heatTime 0
execute as @s[scores={tmp.playerTemp=21..69,tmp.cold=..24000}] run scoreboard players set @s tmp.coldTime 0