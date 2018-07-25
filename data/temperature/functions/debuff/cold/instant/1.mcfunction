scoreboard players add @s cold.blindTime2 1
execute as @s[scores={cold.blindTime2=350..}] run effect give @s blindness 1 0 true
execute as @s[scores={cold.blindTime2=350..}] run scoreboard players set @s cold.blindTime2 0