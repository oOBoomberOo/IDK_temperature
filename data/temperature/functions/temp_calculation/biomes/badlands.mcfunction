execute if score #currentTime tmp.variable matches 18000..20000 run scoreboard players set @s tmp.tempBiome 70
execute if score #currentTime tmp.variable matches 20000..22000 run scoreboard players set @s tmp.tempBiome 73
execute if score #currentTime tmp.variable matches 22000..24000 run scoreboard players set @s tmp.tempBiome 75
execute if score #currentTime tmp.variable matches 0..2000 run scoreboard players set @s tmp.tempBiome 80
execute if score #currentTime tmp.variable matches 2000..4000 run scoreboard players set @s tmp.tempBiome 83
execute if score #currentTime tmp.variable matches 4000..6000 run scoreboard players set @s tmp.tempBiome 85
execute if score #currentTime tmp.variable matches 6000..8000 run scoreboard players set @s tmp.tempBiome 85
execute if score #currentTime tmp.variable matches 8000..10000 run scoreboard players set @s tmp.tempBiome 83
execute if score #currentTime tmp.variable matches 10000..12000 run scoreboard players set @s tmp.tempBiome 80
execute if score #currentTime tmp.variable matches 12000..14000 run scoreboard players set @s tmp.tempBiome 75
execute if score #currentTime tmp.variable matches 14000..16000 run scoreboard players set @s tmp.tempBiome 73
execute if score #currentTime tmp.variable matches 16000..18000 run scoreboard players set @s tmp.tempBiome 70
scoreboard players set @s tmp.biomeID 0

advancement revoke @s from temperature:find_biome/root