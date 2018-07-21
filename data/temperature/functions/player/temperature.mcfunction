#If Total Temp is Greater, Add 1
execute as @s[nbt=!{ActiveEffects:[{Id:12b}]}] if score @s tmp.playerTemp < @s tmp.totalTemp run scoreboard players add @s tmp.playerTemp 1

#If Total Temp is Less, Subtract 1
execute as @s if score @s tmp.playerTemp > @s tmp.totalTemp run scoreboard players remove @s tmp.playerTemp 1

scoreboard players set #tmp.bot_timer tmp.variable 0