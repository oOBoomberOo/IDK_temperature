#Helmet
execute as @s store result score #player.totalTemp tmp.calculation run scoreboard players get #player.totalTemp tmp.variable
execute as @s store result score #player.totalTemp tmp.calculation run scoreboard players operation #player.totalTemp tmp.calculation -= #50 tmp.variable
execute as @s store result score #player.metalTemp tmp.calculation run scoreboard players get #player.armorTemp1 tmp.variable
#execute as @s store result score #player.metalTemp tmp.calculation run scoreboard players operation #player.metalTemp tmp.calculation += #100 tmp.variable
execute as @s store result score #player.totalTemp tmp.calculation run scoreboard players operation #player.totalTemp tmp.calculation *= #player.metalTemp tmp.calculation
execute as @s store result score #player.totalTemp tmp.calculation run scoreboard players operation #player.totalTemp tmp.calculation /= #100 tmp.variable
execute as @s run scoreboard players operation #player.armorTemp tmp.variable += #player.totalTemp tmp.calculation

#Chestplate
execute as @s store result score #player.totalTemp tmp.calculation run scoreboard players get #player.totalTemp tmp.variable
execute as @s store result score #player.totalTemp tmp.calculation run scoreboard players operation #player.totalTemp tmp.calculation -= #50 tmp.variable
execute as @s store result score #player.metalTemp tmp.calculation run scoreboard players get #player.armorTemp2 tmp.variable
#execute as @s store result score #player.metalTemp tmp.calculation run scoreboard players operation #player.metalTemp tmp.calculation += #100 tmp.variable
execute as @s store result score #player.totalTemp tmp.calculation run scoreboard players operation #player.totalTemp tmp.calculation *= #player.metalTemp tmp.calculation
execute as @s store result score #player.totalTemp tmp.calculation run scoreboard players operation #player.totalTemp tmp.calculation /= #100 tmp.variable
execute as @s run scoreboard players operation #player.armorTemp tmp.variable += #player.totalTemp tmp.calculation

#Leggings
execute as @s store result score #player.totalTemp tmp.calculation run scoreboard players get #player.totalTemp tmp.variable
execute as @s store result score #player.totalTemp tmp.calculation run scoreboard players operation #player.totalTemp tmp.calculation -= #50 tmp.variable
execute as @s store result score #player.metalTemp tmp.calculation run scoreboard players get #player.armorTemp3 tmp.variable
#execute as @s store result score #player.metalTemp tmp.calculation run scoreboard players operation #player.metalTemp tmp.calculation += #100 tmp.variable
execute as @s store result score #player.totalTemp tmp.calculation run scoreboard players operation #player.totalTemp tmp.calculation *= #player.metalTemp tmp.calculation
execute as @s store result score #player.totalTemp tmp.calculation run scoreboard players operation #player.totalTemp tmp.calculation /= #100 tmp.variable
execute as @s run scoreboard players operation #player.armorTemp tmp.variable += #player.totalTemp tmp.calculation

#Boots
execute as @s store result score #player.totalTemp tmp.calculation run scoreboard players get #player.totalTemp tmp.variable
execute as @s store result score #player.totalTemp tmp.calculation run scoreboard players operation #player.totalTemp tmp.calculation -= #50 tmp.variable
execute as @s store result score #player.metalTemp tmp.calculation run scoreboard players get #player.armorTemp4 tmp.variable
#execute as @s store result score #player.metalTemp tmp.calculation run scoreboard players operation #player.metalTemp tmp.calculation += #100 tmp.variable
execute as @s store result score #player.totalTemp tmp.calculation run scoreboard players operation #player.totalTemp tmp.calculation *= #player.metalTemp tmp.calculation
execute as @s store result score #player.totalTemp tmp.calculation run scoreboard players operation #player.totalTemp tmp.calculation /= #100 tmp.variable
execute as @s run scoreboard players operation #player.armorTemp tmp.variable += #player.totalTemp tmp.calculation