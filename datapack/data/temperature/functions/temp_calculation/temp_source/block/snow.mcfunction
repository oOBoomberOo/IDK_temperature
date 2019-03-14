execute as @s if block ~0 ~0 ~0 minecraft:snow run tag @s add tmp.block.snow

execute as @s[tag=tmp.block.snow] run scoreboard players set #player.blockTmp tmp.variable -1
execute as @s[tag=tmp.block.snow] run scoreboard players operation #player.tempBlock tmp.variable += #player.blockTmp tmp.variable
scoreboard players set #player.blockTmp tmp.variable 0
tag @s remove tmp.block.snow