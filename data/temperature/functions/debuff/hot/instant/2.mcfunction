execute as @s run scoreboard players add @s tmp.debuffTime 1
execute as @s[scores={tmp.debuffTime=40..}] run effect give @s wither 1 1 true
execute as @s[scores={tmp.debuffTime=40..}] run scoreboard players set @s tmp.debuffTime 0