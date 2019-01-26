scoreboard players add @s hot.witherTime2 1
execute as @s[scores={hot.witherTime2=50..}] run effect give @s wither 1 1 true
execute as @s[scores={hot.witherTime2=50..}] run scoreboard players set @s hot.witherTime2 0
