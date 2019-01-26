#Boots
execute as @s if entity @s[nbt={Inventory:[{Slot:100b,tag:{Enchantments:[{id:"minecraft:fire_protection",lvl:1s}]}}]}] if score @s tmp.totalTemp matches 70.. run scoreboard players set @s tmp.tempArmor1 -1
execute as @s if entity @s[nbt={Inventory:[{Slot:100b,tag:{Enchantments:[{id:"minecraft:fire_protection",lvl:2s}]}}]}] if score @s tmp.totalTemp matches 70.. run scoreboard players set @s tmp.tempArmor1 -3
execute as @s if entity @s[nbt={Inventory:[{Slot:100b,tag:{Enchantments:[{id:"minecraft:fire_protection",lvl:3s}]}}]}] if score @s tmp.totalTemp matches 70.. run scoreboard players set @s tmp.tempArmor1 -3
execute as @s if entity @s[nbt={Inventory:[{Slot:100b,tag:{Enchantments:[{id:"minecraft:fire_protection",lvl:4s}]}}]}] if score @s tmp.totalTemp matches 70.. run scoreboard players set @s tmp.tempArmor1 -4
                                                                                                              
#Leggings                                                                                                     
execute as @s if entity @s[nbt={Inventory:[{Slot:101b,tag:{Enchantments:[{id:"minecraft:fire_protection",lvl:1s}]}}]}] if score @s tmp.totalTemp matches 70.. run scoreboard players set @s tmp.tempArmor2 -5
execute as @s if entity @s[nbt={Inventory:[{Slot:101b,tag:{Enchantments:[{id:"minecraft:fire_protection",lvl:2s}]}}]}] if score @s tmp.totalTemp matches 70.. run scoreboard players set @s tmp.tempArmor2 -8
execute as @s if entity @s[nbt={Inventory:[{Slot:101b,tag:{Enchantments:[{id:"minecraft:fire_protection",lvl:3s}]}}]}] if score @s tmp.totalTemp matches 70.. run scoreboard players set @s tmp.tempArmor2 -10
execute as @s if entity @s[nbt={Inventory:[{Slot:101b,tag:{Enchantments:[{id:"minecraft:fire_protection",lvl:4s}]}}]}] if score @s tmp.totalTemp matches 70.. run scoreboard players set @s tmp.tempArmor2 -15
                                                                                                              
#Chestplate                                                                                                   
execute as @s if entity @s[nbt={Inventory:[{Slot:102b,tag:{Enchantments:[{id:"minecraft:fire_protection",lvl:1s}]}}]}] if score @s tmp.totalTemp matches 70.. run scoreboard players set @s tmp.tempArmor3 -2
execute as @s if entity @s[nbt={Inventory:[{Slot:102b,tag:{Enchantments:[{id:"minecraft:fire_protection",lvl:2s}]}}]}] if score @s tmp.totalTemp matches 70.. run scoreboard players set @s tmp.tempArmor3 -6
execute as @s if entity @s[nbt={Inventory:[{Slot:102b,tag:{Enchantments:[{id:"minecraft:fire_protection",lvl:3s}]}}]}] if score @s tmp.totalTemp matches 70.. run scoreboard players set @s tmp.tempArmor3 -8
execute as @s if entity @s[nbt={Inventory:[{Slot:102b,tag:{Enchantments:[{id:"minecraft:fire_protection",lvl:4s}]}}]}] if score @s tmp.totalTemp matches 70.. run scoreboard players set @s tmp.tempArmor3 -12
                                                                                                              
#Helmet                                                                                                       
execute as @s if entity @s[nbt={Inventory:[{Slot:103b,tag:{Enchantments:[{id:"minecraft:fire_protection",lvl:1s}]}}]}] if score @s tmp.totalTemp matches 70.. run scoreboard players set @s tmp.tempArmor4 0
execute as @s if entity @s[nbt={Inventory:[{Slot:103b,tag:{Enchantments:[{id:"minecraft:fire_protection",lvl:2s}]}}]}] if score @s tmp.totalTemp matches 70.. run scoreboard players set @s tmp.tempArmor4 -1
execute as @s if entity @s[nbt={Inventory:[{Slot:103b,tag:{Enchantments:[{id:"minecraft:fire_protection",lvl:3s}]}}]}] if score @s tmp.totalTemp matches 70.. run scoreboard players set @s tmp.tempArmor4 -3
execute as @s if entity @s[nbt={Inventory:[{Slot:103b,tag:{Enchantments:[{id:"minecraft:fire_protection",lvl:4s}]}}]}] if score @s tmp.totalTemp matches 70.. run scoreboard players set @s tmp.tempArmor4 -4

#MATH
execute as @s run scoreboard players operation @s tmp.tempArmor += @s tmp.tempArmor1
execute as @s run scoreboard players operation @s tmp.tempArmor += @s tmp.tempArmor2
execute as @s run scoreboard players operation @s tmp.tempArmor += @s tmp.tempArmor3
execute as @s run scoreboard players operation @s tmp.tempArmor += @s tmp.tempArmor4
scoreboard players set @s tmp.tempArmor1 0
scoreboard players set @s tmp.tempArmor2 0
scoreboard players set @s tmp.tempArmor3 0
scoreboard players set @s tmp.tempArmor4 0