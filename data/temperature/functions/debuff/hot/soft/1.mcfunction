effect give @s slowness 60 0 true
scoreboard players add @s tmp.debuffTime 1
execute as @s[scores={tmp.debuffTime=400..}] run effect give @s nausea 6 0 true
execute as @s[scores={tmp.debuffTime=400..}] run scoreboard players set @s tmp.debuffTime 0