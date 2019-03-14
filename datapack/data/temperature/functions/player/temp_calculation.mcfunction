execute as @s[tag=temperature.metal_armor.1] run scoreboard players operation @s tmp.multiplier += #metal_armor_multiplier tmp.variable
execute as @s[tag=temperature.metal_armor.2] run scoreboard players operation @s tmp.multiplier += #metal_armor_multiplier tmp.variable
execute as @s[tag=temperature.metal_armor.3] run scoreboard players operation @s tmp.multiplier += #metal_armor_multiplier tmp.variable
execute as @s[tag=temperature.metal_armor.4] run scoreboard players operation @s tmp.multiplier += #metal_armor_multiplier tmp.variable

execute as @s run scoreboard players operation @s tmp.tempSpeed *= @s tmp.multiplier
execute as @s run scoreboard players operation @s tmp.tempSpeed /= #100 tmp.variable