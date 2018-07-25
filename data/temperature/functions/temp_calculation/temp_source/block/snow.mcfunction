execute as @s if block ~0 ~0 ~0 minecraft:snow_layer run tag @s add tmp.block.snow

execute as @s[tag=tmp.block.snow] run scoreboard players set @s tmp.blockTmp -1
execute as @s[tag=tmp.block.snow] run scoreboard players operation @s tmp.tempBlock += @s tmp.blockTmp
scoreboard players set @s tmp.blockTmp 0
tag @s remove tmp.block.snow