execute if score #currentTime tmp.variable matches 18000..20000 run scoreboard players set @s tmp.tempBiome <temperature_1>
execute if score #currentTime tmp.variable matches 20000..22000 run scoreboard players set @s tmp.tempBiome <temperature_2>
execute if score #currentTime tmp.variable matches 22000..24000 run scoreboard players set @s tmp.tempBiome <temperature_3>
execute if score #currentTime tmp.variable matches 0..2000 run scoreboard players set @s tmp.tempBiome <temperature_4>
execute if score #currentTime tmp.variable matches 2000..4000 run scoreboard players set @s tmp.tempBiome <temperature_5>
execute if score #currentTime tmp.variable matches 4000..6000 run scoreboard players set @s tmp.tempBiome <temperature_6>
execute if score #currentTime tmp.variable matches 6000..8000 run scoreboard players set @s tmp.tempBiome <temperature_7>
execute if score #currentTime tmp.variable matches 8000..10000 run scoreboard players set @s tmp.tempBiome <temperature_8>
execute if score #currentTime tmp.variable matches 10000..12000 run scoreboard players set @s tmp.tempBiome <temperature_9>
execute if score #currentTime tmp.variable matches 12000..14000 run scoreboard players set @s tmp.tempBiome <temperature_10>
execute if score #currentTime tmp.variable matches 14000..16000 run scoreboard players set @s tmp.tempBiome <temperature_11>
execute if score #currentTime tmp.variable matches 16000..18000 run scoreboard players set @s tmp.tempBiome <temperature_12>
scoreboard players set @s tmp.spBiome <sp_biome>
scoreboard players set @s tmp.stayInBiome 0
scoreboard players set @s tmp.humidity <humidity>

advancement revoke @s from <datapack_id>:find_biome/root