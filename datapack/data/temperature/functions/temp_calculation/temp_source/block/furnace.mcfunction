execute as @s if block ~-1 ~-1 ~-1 minecraft:furnace[lit=true] run tag @s add tmp.block.furnace
execute as @s if block ~-1 ~-1 ~0 minecraft:furnace[lit=true] run tag @s add tmp.block.furnace
execute as @s if block ~-1 ~-1 ~1 minecraft:furnace[lit=true] run tag @s add tmp.block.furnace
execute as @s if block ~-1 ~0 ~-1 minecraft:furnace[lit=true] run tag @s add tmp.block.furnace
execute as @s if block ~-1 ~0 ~0 minecraft:furnace[lit=true] run tag @s add tmp.block.furnace
execute as @s if block ~-1 ~0 ~1 minecraft:furnace[lit=true] run tag @s add tmp.block.furnace
execute as @s if block ~-1 ~1 ~-1 minecraft:furnace[lit=true] run tag @s add tmp.block.furnace
execute as @s if block ~-1 ~1 ~0 minecraft:furnace[lit=true] run tag @s add tmp.block.furnace
execute as @s if block ~-1 ~1 ~1 minecraft:furnace[lit=true] run tag @s add tmp.block.furnace
execute as @s if block ~0 ~-1 ~-1 minecraft:furnace[lit=true] run tag @s add tmp.block.furnace
execute as @s if block ~0 ~-1 ~0 minecraft:furnace[lit=true] run tag @s add tmp.block.furnace
execute as @s if block ~0 ~-1 ~1 minecraft:furnace[lit=true] run tag @s add tmp.block.furnace
execute as @s if block ~0 ~0 ~-1 minecraft:furnace[lit=true] run tag @s add tmp.block.furnace
execute as @s if block ~0 ~0 ~0 minecraft:furnace[lit=true] run tag @s add tmp.block.furnace
execute as @s if block ~0 ~0 ~1 minecraft:furnace[lit=true] run tag @s add tmp.block.furnace
execute as @s if block ~0 ~1 ~-1 minecraft:furnace[lit=true] run tag @s add tmp.block.furnace
execute as @s if block ~0 ~1 ~0 minecraft:furnace[lit=true] run tag @s add tmp.block.furnace
execute as @s if block ~0 ~1 ~1 minecraft:furnace[lit=true] run tag @s add tmp.block.furnace
execute as @s if block ~1 ~-1 ~-1 minecraft:furnace[lit=true] run tag @s add tmp.block.furnace
execute as @s if block ~1 ~-1 ~0 minecraft:furnace[lit=true] run tag @s add tmp.block.furnace
execute as @s if block ~1 ~-1 ~1 minecraft:furnace[lit=true] run tag @s add tmp.block.furnace
execute as @s if block ~1 ~0 ~-1 minecraft:furnace[lit=true] run tag @s add tmp.block.furnace
execute as @s if block ~1 ~0 ~0 minecraft:furnace[lit=true] run tag @s add tmp.block.furnace
execute as @s if block ~1 ~0 ~1 minecraft:furnace[lit=true] run tag @s add tmp.block.furnace
execute as @s if block ~1 ~1 ~-1 minecraft:furnace[lit=true] run tag @s add tmp.block.furnace
execute as @s if block ~1 ~1 ~0 minecraft:furnace[lit=true] run tag @s add tmp.block.furnace
execute as @s if block ~1 ~1 ~1 minecraft:furnace[lit=true] run tag @s add tmp.block.furnace

execute as @s[tag=tmp.block.furnace] run scoreboard players set #player.blockTmp tmp.variable 2
execute as @s[tag=tmp.block.furnace] run scoreboard players operation #player.tempBlock tmp.variable += #player.blockTmp tmp.variable
scoreboard players set #player.blockTmp tmp.variable 0
tag @s remove tmp.block.furnace