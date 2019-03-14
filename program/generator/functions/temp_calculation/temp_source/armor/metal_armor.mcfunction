scoreboard players set #player.armorTemp1 bb.variable 0
scoreboard players set #player.armorTemp2 bb.variable 0
scoreboard players set #player.armorTemp3 bb.variable 0
scoreboard players set #player.armorTemp4 bb.variable 0

# Helmet
<helmet>

# Chestplate
<chestplate>

# Leggings
<leggings>

# Boots
<boots>

execute as @s if score #player.armorTemp1 tmp.variable matches 1.. run tag @s add temperature.metal_armor.1
execute as @s if score #player.armorTemp2 tmp.variable matches 1.. run tag @s add temperature.metal_armor.2
execute as @s if score #player.armorTemp3 tmp.variable matches 1.. run tag @s add temperature.metal_armor.3
execute as @s if score #player.armorTemp4 tmp.variable matches 1.. run tag @s add temperature.metal_armor.4
