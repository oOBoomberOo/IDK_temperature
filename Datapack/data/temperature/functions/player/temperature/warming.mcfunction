execute as @s if score @s tmp.playerTemp < @s tmp.totalTemp run scoreboard players add @s tmp.playerTemp 1
scoreboard players set @s tmp.metalTemp 0