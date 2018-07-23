execute as @s run scoreboard players add @s tmp.debuffTime 1
execute as @s[scores={tmp.debuffTime=20..}] run effect give @s minecraft:blindness 1 0 true
execute as @s[scores={tmp.debuffTime=20..}] run scoreboard players set @s tmp.debuffTime 0