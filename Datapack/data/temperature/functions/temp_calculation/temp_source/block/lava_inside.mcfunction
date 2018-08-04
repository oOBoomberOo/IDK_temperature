execute as @s if block ~0 ~0 ~0 minecraft:lava run tag @s add tmp.block.lava_inside

execute as @s[tag=tmp.block.lava_inside] run scoreboard players set @s tmp.blockTmp 75
execute as @s[tag=tmp.block.lava_inside] run scoreboard players operation @s tmp.multiplier += #lava_inside_multiplier tmp.variable
execute as @s[tag=tmp.block.lava_inside] run scoreboard players operation @s tmp.tempBlock += @s tmp.blockTmp
scoreboard players set @s tmp.blockTmp 0
tag @s remove tmp.block.lava_inside