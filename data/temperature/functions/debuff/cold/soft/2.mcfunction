effect give @s slowness 60 1 true
effect give @s mining_fatigue 60 1 true

scoreboard players add @s cold.blindTime1 1
execute as @s[scores={cold.blindTime1=340..}] run effect give @s blindness 1 0 true
execute as @s[scores={cold.blindTime1=340..}] run scoreboard players set @s cold.blindTime1 0




