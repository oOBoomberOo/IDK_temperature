execute as @s if block ~-1 ~-1 ~-1 minecraft:ice run tag @s add tmp.block.ice
execute as @s if block ~-1 ~-1 ~0 minecraft:ice run tag @s add tmp.block.ice
execute as @s if block ~-1 ~-1 ~1 minecraft:ice run tag @s add tmp.block.ice
execute as @s if block ~-1 ~0 ~-1 minecraft:ice run tag @s add tmp.block.ice
execute as @s if block ~-1 ~0 ~0 minecraft:ice run tag @s add tmp.block.ice
execute as @s if block ~-1 ~0 ~1 minecraft:ice run tag @s add tmp.block.ice
execute as @s if block ~-1 ~1 ~-1 minecraft:ice run tag @s add tmp.block.ice
execute as @s if block ~-1 ~1 ~0 minecraft:ice run tag @s add tmp.block.ice
execute as @s if block ~-1 ~1 ~1 minecraft:ice run tag @s add tmp.block.ice
execute as @s if block ~0 ~-1 ~-1 minecraft:ice run tag @s add tmp.block.ice
execute as @s if block ~0 ~-1 ~0 minecraft:ice run tag @s add tmp.block.ice
execute as @s if block ~0 ~-1 ~1 minecraft:ice run tag @s add tmp.block.ice
execute as @s if block ~0 ~0 ~-1 minecraft:ice run tag @s add tmp.block.ice
execute as @s if block ~0 ~0 ~0 minecraft:ice run tag @s add tmp.block.ice
execute as @s if block ~0 ~0 ~1 minecraft:ice run tag @s add tmp.block.ice
execute as @s if block ~0 ~1 ~-1 minecraft:ice run tag @s add tmp.block.ice
execute as @s if block ~0 ~1 ~0 minecraft:ice run tag @s add tmp.block.ice
execute as @s if block ~0 ~1 ~1 minecraft:ice run tag @s add tmp.block.ice
execute as @s if block ~1 ~-1 ~-1 minecraft:ice run tag @s add tmp.block.ice
execute as @s if block ~1 ~-1 ~0 minecraft:ice run tag @s add tmp.block.ice
execute as @s if block ~1 ~-1 ~1 minecraft:ice run tag @s add tmp.block.ice
execute as @s if block ~1 ~0 ~-1 minecraft:ice run tag @s add tmp.block.ice
execute as @s if block ~1 ~0 ~0 minecraft:ice run tag @s add tmp.block.ice
execute as @s if block ~1 ~0 ~1 minecraft:ice run tag @s add tmp.block.ice
execute as @s if block ~1 ~1 ~-1 minecraft:ice run tag @s add tmp.block.ice
execute as @s if block ~1 ~1 ~0 minecraft:ice run tag @s add tmp.block.ice
execute as @s if block ~1 ~1 ~1 minecraft:ice run tag @s add tmp.block.ice

execute as @s[tag=tmp.block.ice] run scoreboard players set @s tmp.blockTmp -3
execute as @s[tag=tmp.block.ice] run scoreboard players operation @s tmp.tempBlock += @s tmp.blockTmp
scoreboard players set @s tmp.blockTmp 0
tag @s remove tmp.block.ice