#Helmet

#Chestplate

#Leggings

#Boots

execute as @s run scoreboard players operation @s tmp.tempArmor += @s tmp.tempArmor1
execute as @s run scoreboard players operation @s tmp.tempArmor += @s tmp.tempArmor2
execute as @s run scoreboard players operation @s tmp.tempArmor += @s tmp.tempArmor3
execute as @s run scoreboard players operation @s tmp.tempArmor += @s tmp.tempArmor4

scoreboard players set @s tmp.tempArmor1 0
scoreboard players set @s tmp.tempArmor2 0
scoreboard players set @s tmp.tempArmor3 0
scoreboard players set @s tmp.tempArmor4 0