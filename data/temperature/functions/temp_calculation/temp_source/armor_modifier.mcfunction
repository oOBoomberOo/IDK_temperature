#Boots
execute as @s if entity @s[nbt={Inventory:[{Slot:100b,tag:{temp:{type:"melting"}}}]}] run scoreboard players operation @s tmp.tempArmor1 += #melting tmp.variable

#Leggings
execute as @s if entity @s[nbt={Inventory:[{Slot:101b,tag:{temp:{type:"melting"}}}]}] run scoreboard players operation @s tmp.tempArmor2 += #melting tmp.variable

#Chestplate
execute as @s if entity @s[nbt={Inventory:[{Slot:102b,tag:{temp:{type:"melting"}}}]}] run scoreboard players operation @s tmp.tempArmor3 += #melting tmp.variable

#Helmet
execute as @s if entity @s[nbt={Inventory:[{Slot:103b,tag:{temp:{type:"melting"}}}]}] run scoreboard players operation @s tmp.tempArmor4 += #melting tmp.variable

#MATH
execute as @s store result score @s tmp.totalTemp run scoreboard players operation @s tmp.totalTemp += @s tmp.tempArmor1
execute as @s store result score @s tmp.totalTemp run scoreboard players operation @s tmp.totalTemp += @s tmp.tempArmor2
execute as @s store result score @s tmp.totalTemp run scoreboard players operation @s tmp.totalTemp += @s tmp.tempArmor3
execute as @s store result score @s tmp.totalTemp run scoreboard players operation @s tmp.totalTemp += @s tmp.tempArmor4
scoreboard players set @s tmp.tempArmor1 0
scoreboard players set @s tmp.tempArmor2 0
scoreboard players set @s tmp.tempArmor3 0
scoreboard players set @s tmp.tempArmor4 0