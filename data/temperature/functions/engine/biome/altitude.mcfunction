# Reduce temperature as the elevation go up
# Accoording to Minecraft Wiki
execute store result score #cat.biome.y bb.calculation run data get entity @s Pos[1]
scoreboard players remove #cat.biome.y bb.calculation 64
execute if score #cat.biome.y bb.calculation matches ..-1 run scoreboard players set #cat.biome.y bb.calculation 0

scoreboard players operation #cat.biome.y bb.calculation /= #cat.biome.altitude_spacing bb.config
scoreboard players operation #cat.biome.y bb.calculation *= #cat.biome.altitude_temp bb.config
scoreboard players operation #cat.biome.temp bb.variable -= #cat.biome.y bb.calculation