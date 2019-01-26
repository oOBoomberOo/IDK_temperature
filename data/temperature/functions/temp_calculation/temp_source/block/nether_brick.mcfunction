execute as @s if block ~-1 ~-1 ~-1 minecraft:nether_bricks run tag @s add tmp.block.nether_brick
execute as @s if block ~-1 ~-1 ~0 minecraft:nether_bricks run tag @s add tmp.block.nether_brick
execute as @s if block ~-1 ~-1 ~1 minecraft:nether_bricks run tag @s add tmp.block.nether_brick
execute as @s if block ~-1 ~0 ~-1 minecraft:nether_bricks run tag @s add tmp.block.nether_brick
execute as @s if block ~-1 ~0 ~0 minecraft:nether_bricks run tag @s add tmp.block.nether_brick
execute as @s if block ~-1 ~0 ~1 minecraft:nether_bricks run tag @s add tmp.block.nether_brick
execute as @s if block ~-1 ~1 ~-1 minecraft:nether_bricks run tag @s add tmp.block.nether_brick
execute as @s if block ~-1 ~1 ~0 minecraft:nether_bricks run tag @s add tmp.block.nether_brick
execute as @s if block ~-1 ~1 ~1 minecraft:nether_bricks run tag @s add tmp.block.nether_brick
execute as @s if block ~0 ~-1 ~-1 minecraft:nether_bricks run tag @s add tmp.block.nether_brick
execute as @s if block ~0 ~-1 ~0 minecraft:nether_bricks run tag @s add tmp.block.nether_brick
execute as @s if block ~0 ~-1 ~1 minecraft:nether_bricks run tag @s add tmp.block.nether_brick
execute as @s if block ~0 ~0 ~-1 minecraft:nether_bricks run tag @s add tmp.block.nether_brick
execute as @s if block ~0 ~0 ~0 minecraft:nether_bricks run tag @s add tmp.block.nether_brick
execute as @s if block ~0 ~0 ~1 minecraft:nether_bricks run tag @s add tmp.block.nether_brick
execute as @s if block ~0 ~1 ~-1 minecraft:nether_bricks run tag @s add tmp.block.nether_brick
execute as @s if block ~0 ~1 ~0 minecraft:nether_bricks run tag @s add tmp.block.nether_brick
execute as @s if block ~0 ~1 ~1 minecraft:nether_bricks run tag @s add tmp.block.nether_brick
execute as @s if block ~1 ~-1 ~-1 minecraft:nether_bricks run tag @s add tmp.block.nether_brick
execute as @s if block ~1 ~-1 ~0 minecraft:nether_bricks run tag @s add tmp.block.nether_brick
execute as @s if block ~1 ~-1 ~1 minecraft:nether_bricks run tag @s add tmp.block.nether_brick
execute as @s if block ~1 ~0 ~-1 minecraft:nether_bricks run tag @s add tmp.block.nether_brick
execute as @s if block ~1 ~0 ~0 minecraft:nether_bricks run tag @s add tmp.block.nether_brick
execute as @s if block ~1 ~0 ~1 minecraft:nether_bricks run tag @s add tmp.block.nether_brick
execute as @s if block ~1 ~1 ~-1 minecraft:nether_bricks run tag @s add tmp.block.nether_brick
execute as @s if block ~1 ~1 ~0 minecraft:nether_bricks run tag @s add tmp.block.nether_brick
execute as @s if block ~1 ~1 ~1 minecraft:nether_bricks run tag @s add tmp.block.nether_brick

execute as @s[tag=tmp.block.nether_brick] run scoreboard players set @s tmp.blockTmp -4
execute as @s[tag=tmp.block.nether_brick] run scoreboard players operation @s tmp.tempBlock += @s tmp.blockTmp
scoreboard players set @s tmp.blockTmp 0
tag @s remove tmp.block.nether_brick