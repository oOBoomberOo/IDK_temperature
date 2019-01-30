scoreboard players set #player.tempBlock tmp.variable 0

execute as @s run function temperature:temp_calculation/temp_source/block/lava_near
execute as @s run function temperature:temp_calculation/temp_source/block/lava_inside
execute as @s run function temperature:temp_calculation/temp_source/block/furnace
execute as @s run function temperature:temp_calculation/temp_source/block/fire
execute as @s run function temperature:temp_calculation/temp_source/block/ice
execute as @s run function temperature:temp_calculation/temp_source/block/packed_ice
execute as @s run function temperature:temp_calculation/temp_source/block/blue_ice
execute as @s run function temperature:temp_calculation/temp_source/block/snow
execute as @s run function temperature:temp_calculation/temp_source/block/torch_standing
execute as @s run function temperature:temp_calculation/temp_source/block/torch_wall
execute as @s run function temperature:temp_calculation/temp_source/block/redstone_torch_standing
execute as @s run function temperature:temp_calculation/temp_source/block/redstone_torch_wall
execute as @s run function temperature:temp_calculation/temp_source/block/nether_brick

execute as @s run scoreboard players operation #player.totalTemp tmp.variable += #player.tempBlock tmp.variable