#1 Set the score of anyone in this biome
scoreboard players set @s tmp.tempBiome 40

advancement revoke @s from temperature:find_biome/root
execute as @s run function temperature:temp_calculation/biomes/tags
tag @s add tmp.biome.ocean
