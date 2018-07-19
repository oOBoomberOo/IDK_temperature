#If Total Temp is Greater, Add 1
#Should not limit it to player that has score bigger than -100 in case some player bug out and have score lower than -100 it will not set score back
execute as @s if score @s tmp.playerTemp < @s tmp.totalTemp run scoreboard players add @s tmp.playerTemp 1

#If Total Temp is Less, Subtract 1
execute as @s if score @s tmp.playerTemp > @s tmp.totalTemp run scoreboard players remove @s tmp.playerTemp 1

scoreboard players set #tmp.bot_timer tmp.variable 0