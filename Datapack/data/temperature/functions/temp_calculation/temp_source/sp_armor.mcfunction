#Helmet
execute as @s if entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:golden_helmet"}]},nbt=!{Dimension:-1}] if score @s tmp.totalTemp matches 50.. run scoreboard players set @s tmp.tempArmor4 2
execute as @s if entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:golden_helmet"}]},nbt=!{Dimension:-1}] if score @s tmp.totalTemp matches ..49 run scoreboard players set @s tmp.tempArmor4 -2
execute as @s if entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:golden_helmet"}]},nbt={Dimension:-1}] run scoreboard players set @s tmp.tempArmor4 -1

#Chestplate
execute as @s if entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:golden_chestplate"}]},nbt=!{Dimension:-1}] if score @s tmp.totalTemp matches 50.. run scoreboard players set @s tmp.tempArmor3 9
execute as @s if entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:golden_chestplate"}]},nbt=!{Dimension:-1}] if score @s tmp.totalTemp matches ..49 run scoreboard players set @s tmp.tempArmor3 -9
execute as @s if entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:golden_chestplate"}]},nbt={Dimension:-1}] run scoreboard players set @s tmp.tempArmor3 -2

#Leggings
execute as @s if entity @s[nbt={Inventory:[{Slot:101b,id:"minecraft:golden_leggings"}]},nbt=!{Dimension:-1}] if score @s tmp.totalTemp matches 50.. run scoreboard players set @s tmp.tempArmor2 7
execute as @s if entity @s[nbt={Inventory:[{Slot:101b,id:"minecraft:golden_leggings"}]},nbt=!{Dimension:-1}] if score @s tmp.totalTemp matches ..49 run scoreboard players set @s tmp.tempArmor2 -7
execute as @s if entity @s[nbt={Inventory:[{Slot:101b,id:"minecraft:golden_leggings"}]},nbt={Dimension:-1}] run scoreboard players set @s tmp.tempArmor2 -2

#Boots
execute as @s if entity @s[nbt={Inventory:[{Slot:100b,id:"minecraft:golden_boots"}]},nbt=!{Dimension:-1}] if score @s tmp.totalTemp matches 50.. run scoreboard players set @s tmp.tempArmor1 2
execute as @s if entity @s[nbt={Inventory:[{Slot:100b,id:"minecraft:golden_boots"}]},nbt=!{Dimension:-1}] if score @s tmp.totalTemp matches ..49 run scoreboard players set @s tmp.tempArmor1 -2
execute as @s if entity @s[nbt={Inventory:[{Slot:100b,id:"minecraft:golden_boots"}]},nbt={Dimension:-1}] run scoreboard players set @s tmp.tempArmor1 -1



execute as @s store result score @s tmp.totalTemp run scoreboard players operation @s tmp.totalTemp += @s tmp.tempArmor1
execute as @s store result score @s tmp.totalTemp run scoreboard players operation @s tmp.totalTemp += @s tmp.tempArmor2
execute as @s store result score @s tmp.totalTemp run scoreboard players operation @s tmp.totalTemp += @s tmp.tempArmor3
execute as @s store result score @s tmp.totalTemp run scoreboard players operation @s tmp.totalTemp += @s tmp.tempArmor4

scoreboard players set @s tmp.tempArmor1 0
scoreboard players set @s tmp.tempArmor2 0
scoreboard players set @s tmp.tempArmor3 0
scoreboard players set @s tmp.tempArmor4 0