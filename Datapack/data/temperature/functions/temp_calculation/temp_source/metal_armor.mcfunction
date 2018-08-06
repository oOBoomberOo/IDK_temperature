execute as @s run tag @s remove temperature.metal_armor.1
execute as @s run tag @s remove temperature.metal_armor.2
execute as @s run tag @s remove temperature.metal_armor.3
execute as @s run tag @s remove temperature.metal_armor.4

#Helmet
execute as @s if score @s tmp.totalTemp matches 51.. if entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:iron_helmet"}]}] run scoreboard players set @s tmp.metalArmor4 10
execute as @s if score @s tmp.totalTemp matches ..49 if entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:iron_helmet"}]}] run scoreboard players set @s tmp.metalArmor4 10
execute as @s if score @s tmp.totalTemp matches 51.. if entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:diamond_helmet"}]}] run scoreboard players set @s tmp.metalArmor4 10
execute as @s if score @s tmp.totalTemp matches ..49 if entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:diamond_helmet"}]}] run scoreboard players set @s tmp.metalArmor4 10

#Chestplate
execute as @s if score @s tmp.totalTemp matches 51.. if entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:iron_chestplate"}]}] run scoreboard players set @s tmp.metalArmor3 10
execute as @s if score @s tmp.totalTemp matches ..49 if entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:iron_chestplate"}]}] run scoreboard players set @s tmp.metalArmor3 10
execute as @s if score @s tmp.totalTemp matches 51.. if entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:diamond_chestplate"}]}] run scoreboard players set @s tmp.metalArmor3 10
execute as @s if score @s tmp.totalTemp matches ..49 if entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:diamond_chestplate"}]}] run scoreboard players set @s tmp.metalArmor3 10


#Leggings
execute as @s if score @s tmp.totalTemp matches 51.. if entity @s[nbt={Inventory:[{Slot:101b,id:"minecraft:iron_leggings"}]}] run scoreboard players set @s tmp.metalArmor2 10
execute as @s if score @s tmp.totalTemp matches ..49 if entity @s[nbt={Inventory:[{Slot:101b,id:"minecraft:iron_leggings"}]}] run scoreboard players set @s tmp.metalArmor2 10
execute as @s if score @s tmp.totalTemp matches 51.. if entity @s[nbt={Inventory:[{Slot:101b,id:"minecraft:diamond_leggings"}]}] run scoreboard players set @s tmp.metalArmor2 10
execute as @s if score @s tmp.totalTemp matches ..49 if entity @s[nbt={Inventory:[{Slot:101b,id:"minecraft:diamond_leggings"}]}] run scoreboard players set @s tmp.metalArmor2 10


#Boots
execute as @s if entity @s[nbt={Inventory:[{Slot:100b,id:"minecraft:iron_boots"}]}] run scoreboard players set @s tmp.metalArmor1 10
execute as @s if entity @s[nbt={Inventory:[{Slot:100b,id:"minecraft:diamond_boots"}]}] run scoreboard players set @s tmp.metalArmor1 10

execute as @s run function temperature:temp_calculation/armor/metal_armor

execute as @s[scores={tmp.metalArmor1=1..}] run tag @s add temperature.metal_armor.1
execute as @s[scores={tmp.metalArmor2=1..}] run tag @s add temperature.metal_armor.2
execute as @s[scores={tmp.metalArmor3=1..}] run tag @s add temperature.metal_armor.3
execute as @s[scores={tmp.metalArmor4=1..}] run tag @s add temperature.metal_armor.4

scoreboard players set @s tmp.metalArmor1 0
scoreboard players set @s tmp.metalArmor2 0
scoreboard players set @s tmp.metalArmor3 0
scoreboard players set @s tmp.metalArmor4 0