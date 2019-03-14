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

execute as @s run scoreboard players operation #player.armorTemp bb.variable += #player.armorTemp1 bb.variable
execute as @s run scoreboard players operation #player.armorTemp bb.variable += #player.armorTemp2 bb.variable
execute as @s run scoreboard players operation #player.armorTemp bb.variable += #player.armorTemp3 bb.variable
execute as @s run scoreboard players operation #player.armorTemp bb.variable += #player.armorTemp4 bb.variable
