# The temperature in which the game will count you as in hot temperature (Affect metal armor) [Default: 70]
scoreboard players set #hot_temperature tmp.variable 70

# The temperature in which the game will count you as in cold temperature (Affect metal armor) [Default: 34]
scoreboard players set #cold_temperature tmp.variable 34

# The speed of when temperature is changing in percent [Default: 100]
scoreboard players set #temperature_speed tmp.variable 100

# The temperature in which the game will count you as being inside cold biome [Default: 22]
scoreboard players set #cold_biome tmp.variable 22

# The amount of multiplier when wearing metal armor on temperature speed [Default: 25]
# One piece of metal armor have 25 = 0.25x and normal temperature speed is 100 = 1x + 0.25x = 1.25x, etc.
# The multiplier can be stacked
scoreboard players set #metal_armor_multiplier tmp.variable 25

# The rate of metal armor temperature speed [Default: 4]
# When in hot temperature affect the time it take to cool you down
# When in cold temperature affect the time it take to heat you up
scoreboard players set #metal_armor_temperature_rate tmp.variable 4

# The amount of multiplier when near lava on temperature speed [Default: 100]
scoreboard players set #lava_near_multiplier tmp.variable 100

# The amount of multiplier when inside lava on temperature speed [Default: 300]
# Note: when "inside lava" is activate it will activate "near lava" as well
scoreboard players set #lava_inside_multiplier tmp.variable 300