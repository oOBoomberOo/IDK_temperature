scoreboard players add @s cold.blindTime1 1
execute as @s[scores={cold.blindTime1=350..}] run effect give @s blindness 1 0 true
execute as @s[scores={cold.blindTime1=350..}] run scoreboard players set @s cold.blindTime1 0