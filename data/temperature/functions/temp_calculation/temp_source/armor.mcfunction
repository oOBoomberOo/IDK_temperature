# 103b = head
# 102b = chest
# 101b = legs
# 100b = feet
# -106b = offhand


#Helmet
execute as @s if entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet"}]},nbt=!{Inventory:[{Slot:103b,tag:{global:{custom_item:1b}}}]}] run scoreboard players operation @s tmp.tempArmor4 += #waiting_for_value tmp.variable


#Chestplate
execute as @s if entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate"}]},nbt=!{Inventory:[{Slot:102b,tag:{global:{custom_item:1b}}}]}] run scoreboard players operation @s tmp.tempArmor3 += #waiting_for_value tmp.variable


#Leggings
execute as @s if entity @s[nbt={Inventory:[{Slot:101b,id:"minecraft:leather_leggings"}]},nbt=!{Inventory:[{Slot:101b,tag:{global:{custom_item:1b}}}]}] run scoreboard players operation @s tmp.tempArmor2 += #waiting_for_value tmp.variable

#Boots
execute as @s if entity @s[nbt={Inventory:[{Slot:100b,id:"minecraft:leather_boot"}]},nbt=!{Inventory:[{Slot:100b,tag:{global:{custom_item:1b}}}]}] run scoreboard players operation @s tmp.tempArmor1 += #waiting_for_value tmp.variable

execute as @s store result score @s tmp.totalTemp run scoreboard players operation @s tmp.totalTemp += @s tmp.tempArmor1
execute as @s store result score @s tmp.totalTemp run scoreboard players operation @s tmp.totalTemp += @s tmp.tempArmor2
execute as @s store result score @s tmp.totalTemp run scoreboard players operation @s tmp.totalTemp += @s tmp.tempArmor3
execute as @s store result score @s tmp.totalTemp run scoreboard players operation @s tmp.totalTemp += @s tmp.tempArmor4

scoreboard players set @s tmp.tempArmor1 0
scoreboard players set @s tmp.tempArmor2 0
scoreboard players set @s tmp.tempArmor3 0
scoreboard players set @s tmp.tempArmor4 0