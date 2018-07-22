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

execute as @s[tag=tmp.block.furnace] run scoreboard players set @s tmp.blockTmp 2
execute as @s[tag=tmp.block.furnace] run scoreboard players operation @s tmp.tempBlock += @s tmp.blockTmp
scoreboard players set @s tmp.blockTmp 0
tag @s remove tmp.block.furnace