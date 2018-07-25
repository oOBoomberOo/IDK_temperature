effect give @s slowness 60 2 true
effect give @s mining_fatigue 60 2 true

scoreboard players add @s cold.witherTime1 1
execute as @s[scores={cold.witherTime1=100..}] run effect give @s wither 1 1 true
execute as @s[scores={cold.witherTime1=100..}] run scoreboard players set @s cold.witherTime1 0



