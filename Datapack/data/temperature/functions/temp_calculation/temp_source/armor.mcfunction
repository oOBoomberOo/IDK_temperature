#Helmet
execute as @s if entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet"}]}] run scoreboard players set @s tmp.tempArmor4 3
execute as @s if entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:chainmail_helmet"}]}] run scoreboard players set @s tmp.tempArmor4 0

#Chestplate
execute as @s if entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate"}]}] run scoreboard players set @s tmp.tempArmor3 6
execute as @s if entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:chainmail_chestplate"}]}] run scoreboard players set @s tmp.tempArmor3 0

#Leggings
execute as @s if entity @s[nbt={Inventory:[{Slot:101b,id:"minecraft:leather_leggings"}]}] run scoreboard players set @s tmp.tempArmor2 4
execute as @s if entity @s[nbt={Inventory:[{Slot:101b,id:"minecraft:chainmail_leggings"}]}] run scoreboard players set @s tmp.tempArmor2 0

#Boots
execute as @s if entity @s[nbt={Inventory:[{Slot:100b,id:"minecraft:leather_boots"}]}] run scoreboard players set @s tmp.tempArmor1 2
execute as @s if entity @s[nbt={Inventory:[{Slot:100b,id:"minecraft:chainmail_boots"}]}] run scoreboard players set @s tmp.tempArmor1 0

execute as @s run scoreboard players operation @s tmp.tempArmor += @s tmp.tempArmor1
execute as @s run scoreboard players operation @s tmp.tempArmor += @s tmp.tempArmor2
execute as @s run scoreboard players operation @s tmp.tempArmor += @s tmp.tempArmor3
execute as @s run scoreboard players operation @s tmp.tempArmor += @s tmp.tempArmor4

scoreboard players set @s tmp.tempArmor1 0
scoreboard players set @s tmp.tempArmor2 0
scoreboard players set @s tmp.tempArmor3 0
scoreboard players set @s tmp.tempArmor4 0