# 103b = head
# 102b = chest
# 101b = legs
# 100b = feet
# -106b = offhand


#Helmet
execute as @s if entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:iron_helmet"}]}] if score @s tmp.totalTemp matches 70.. run scoreboard players set @s tmp.tempArmor4 4
execute as @s if entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:iron_helmet"}]}] if score @s tmp.totalTemp matches ..34 run scoreboard players set @s tmp.tempArmor4 -4

execute as @s if entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:diamond_helmet"}]}] if score @s tmp.totalTemp matches 70.. run scoreboard players set @s tmp.tempArmor4 3
execute as @s if entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:diamond_helmet"}]}] if score @s tmp.totalTemp matches ..34 run scoreboard players set @s tmp.tempArmor4 -1



#Chestplate
execute as @s if entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:iron_chestplate"}]}] if score @s tmp.totalTemp matches 70.. run scoreboard players set @s tmp.tempArmor3 12
execute as @s if entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:iron_chestplate"}]}] if score @s tmp.totalTemp matches ..34 run scoreboard players set @s tmp.tempArmor3 -12

execute as @s if entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:diamond_chestplate"}]}] if score @s tmp.totalTemp matches 70.. run scoreboard players set @s tmp.tempArmor3 10
execute as @s if entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:diamond_chestplate"}]}] if score @s tmp.totalTemp matches ..34 run scoreboard players set @s tmp.tempArmor3 -6



#Leggings
execute as @s if entity @s[nbt={Inventory:[{Slot:101b,id:"minecraft:iron_leggings"}]}] if score @s tmp.totalTemp matches 70.. run scoreboard players set @s tmp.tempArmor2 9
execute as @s if entity @s[nbt={Inventory:[{Slot:101b,id:"minecraft:iron_leggings"}]}] if score @s tmp.totalTemp matches ..34 run scoreboard players set @s tmp.tempArmor2 -9

execute as @s if entity @s[nbt={Inventory:[{Slot:101b,id:"minecraft:diamond_leggings"}]}] if score @s tmp.totalTemp matches 70.. run scoreboard players set @s tmp.tempArmor2 8
execute as @s if entity @s[nbt={Inventory:[{Slot:101b,id:"minecraft:diamond_leggings"}]}] if score @s tmp.totalTemp matches ..34 run scoreboard players set @s tmp.tempArmor2 -4



#Boots
execute as @s if entity @s[nbt={Inventory:[{Slot:100b,id:"minecraft:iron_boots"}]}] if score @s tmp.totalTemp matches 70.. run scoreboard players set @s tmp.tempArmor1 3
execute as @s if entity @s[nbt={Inventory:[{Slot:100b,id:"minecraft:iron_boots"}]}] if score @s tmp.totalTemp matches ..34 run scoreboard players set @s tmp.tempArmor1 -3

execute as @s if entity @s[nbt={Inventory:[{Slot:100b,id:"minecraft:diamond_boots"}]}] if score @s tmp.totalTemp matches 70.. run scoreboard players set @s tmp.tempArmor1 3
execute as @s if entity @s[nbt={Inventory:[{Slot:100b,id:"minecraft:diamond_boots"}]}] if score @s tmp.totalTemp matches ..34 run scoreboard players set @s tmp.tempArmor1 -1



execute as @s store result score @s tmp.totalTemp run scoreboard players operation @s tmp.totalTemp += @s tmp.tempArmor1
execute as @s store result score @s tmp.totalTemp run scoreboard players operation @s tmp.totalTemp += @s tmp.tempArmor2
execute as @s store result score @s tmp.totalTemp run scoreboard players operation @s tmp.totalTemp += @s tmp.tempArmor3
execute as @s store result score @s tmp.totalTemp run scoreboard players operation @s tmp.totalTemp += @s tmp.tempArmor4

scoreboard players set @s tmp.tempArmor1 0
scoreboard players set @s tmp.tempArmor2 0
scoreboard players set @s tmp.tempArmor3 0
scoreboard players set @s tmp.tempArmor4 0