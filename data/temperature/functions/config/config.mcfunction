scoreboard players set #min_day tmp.variable 0
scoreboard players set #max_day tmp.variable 13000

# Min hot temperature (Affect metal armor) [Default: 70]
scoreboard players set #hot_temperature tmp.variable 65

# Max cold temperature (Affect metal armor) [Default: 34]
scoreboard players set #cold_temperature tmp.variable 35

# The rate of change in temperature [Default: 100]
scoreboard players set #temperature_speed tmp.variable 100

# The temperature of cold biome start at [Default: 22]
scoreboard players set #cold_biome tmp.variable 22

# Metal armor's multiplier [Default: 25]
# One piece of metal armor have 25 = 0.25x and normal temperature speed is 100 = 1x + 0.25x = 1.25x, etc.
# The multiplier can be stacked
scoreboard players set #metal_armor_multiplier tmp.variable 25

# The rate of change of metal armor temperature
scoreboard players set #metal_armor_hot_up_rate tmp.variable 2
scoreboard players set #metal_armor_hot_down_rate tmp.variable 4

scoreboard players set #metal_armor_cold_up_rate tmp.variable 4
scoreboard players set #metal_armor_cold_down_rate tmp.variable 2

scoreboard players set #metal_armor_normal_up_rate tmp.variable 3
scoreboard players set #metal_armor_normal_down_rate tmp.variable 3

# Near Lava's multiplier [Default: 100]
scoreboard players set #lava_near_multiplier tmp.variable 100

# Inside Lava's Multiplier [Default: 300]
# Note: when "inside lava" is activate it will activate "near lava" as well
scoreboard players set #lava_inside_multiplier tmp.variable 300