effect give @s slowness 60 1 true	
effect give @s nausea 14 1 true

scoreboard players add @s hot.witherTime1 1
execute as @s[scores={hot.witherTime1=400..}] run effect give @s wither 1 1 true
execute as @s[scores={hot.witherTime1=400..}] run scoreboard players set @s hot.witherTime1 0

