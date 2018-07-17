#1 Set the score of anyone in this biome 
#---(SOON TO ADD DAYTIME DETECTION)--- Added

execute if score #currentTime tmp.variable matches 0..3000 run scoreboard players set @s tmp.tempBiome 60
execute if score #currentTime tmp.variable matches 3000..5000 run scoreboard players set @s tmp.tempBiome 75
execute if score #currentTime tmp.variable matches 5000..7000 run scoreboard players set @s tmp.tempBiome 85
execute if score #currentTime tmp.variable matches 7000..10000 run scoreboard players set @s tmp.tempBiome 80
execute if score #currentTime tmp.variable matches 10000..13000 run scoreboard players set @s tmp.tempBiome 75
execute if score #currentTime tmp.variable matches 13000..15000 run scoreboard players set @s tmp.tempBiome 60
execute if score #currentTime tmp.variable matches 15000..160000 run scoreboard players set @s tmp.tempBiome 42
execute if score #currentTime tmp.variable matches 16000..170000 run scoreboard players set @s tmp.tempBiome 30
execute if score #currentTime tmp.variable matches 17000..190000 run scoreboard players set @s tmp.tempBiome 24
execute if score #currentTime tmp.variable matches 19000..200000 run scoreboard players set @s tmp.tempBiome 30
execute if score #currentTime tmp.variable matches 20000..240000 run scoreboard players set @s tmp.tempBiome 42

advancement revoke @s from temperature:find_biome/root
execute as @s run function temperature:temp_calculation/biomes/tags
tag @s add tmp.biome.desert