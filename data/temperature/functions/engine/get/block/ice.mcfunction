scoreboard players set #cat.block.count bb.variable 0

execute if block ~ ~ ~ minecraft:ice run scoreboard players add #cat.block.count bb.variable 1
execute if block ~ ~1 ~ minecraft:ice run scoreboard players add #cat.block.count bb.variable 1
execute if block ~ ~1 ~ minecraft:ice run scoreboard players add #cat.block.count bb.variable 1
execute if block ~ ~1 ~ minecraft:ice run scoreboard players add #cat.block.count bb.variable 1
execute if block ~ ~1 ~ minecraft:ice run scoreboard players add #cat.block.count bb.variable 1

scoreboard players operation #cat.block.temp bb.variable = #cat.block.ice bb.variable
scoreboard players operation #cat.block.temp bb.variable *= #cat.block.count bb.variable
scoreboard players operation #cat.calculated.temp bb.variable += #cat.block.temp bb.variable