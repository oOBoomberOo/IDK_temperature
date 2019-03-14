execute as @s if block ~0 ~0 ~0 minecraft:lava run tag @s add tmp.block.lava_inside

execute as @s[tag=tmp.block.lava_inside] run scoreboard players add @s tmp.multiplier 300
execute as @s[tag=tmp.block.lava_inside] run scoreboard players set #player.blockTmp tmp.variable 75
execute as @s[tag=tmp.block.lava_inside] run scoreboard players operation #player.tempBlock tmp.variable += #player.blockTmp tmp.variable
scoreboard players set #player.blockTmp tmp.variable 0
tag @s remove tmp.block.lava_inside