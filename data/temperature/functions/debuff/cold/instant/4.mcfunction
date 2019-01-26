scoreboard players add @s cold.witherTime2 1
execute as @s[scores={cold.witherTime2=50..}] run effect give @s wither 1 1 true
execute as @s[scores={cold.witherTime2=50..}] run scoreboard players set @s cold.witherTime2 0
