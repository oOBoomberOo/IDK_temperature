execute as @s if block ~0 ~0 ~0 minecraft:lava run tag @s add tmp.block.lava_inside

execute as @s[tag=tmp.block.lava_inside] run scoreboard players add @s tmp.tempBlock 75
tag @s remove tmp.block.lava_inside