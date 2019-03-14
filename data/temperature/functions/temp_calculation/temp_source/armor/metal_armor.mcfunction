scoreboard players set #player.armorTemp1 bb.variable 0
scoreboard players set #player.armorTemp2 bb.variable 0
scoreboard players set #player.armorTemp3 bb.variable 0
scoreboard players set #player.armorTemp4 bb.variable 0

#Helmet
execute as @s if score @s tmp.totalTemp matches 51.. if entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:iron_helmet"}]}] run scoreboard players set #player.armorTemp4 bb.variable 10
execute as @s if score @s tmp.totalTemp matches ..49 if entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:iron_helmet"}]}] run scoreboard players set #player.armorTemp4 bb.variable 10

execute as @s if score @s tmp.totalTemp matches 51.. if entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:diamond_helmet"}]}] run scoreboard players set #player.armorTemp4 bb.variable 10
execute as @s if score @s tmp.totalTemp matches ..49 if entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:diamond_helmet"}]}] run scoreboard players set #player.armorTemp4 bb.variable 10

#Chestplate
execute as @s if score @s tmp.totalTemp matches 51.. if entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:iron_chestplate"}]}] run scoreboard players set #player.armorTemp3 bb.variable 10
execute as @s if score @s tmp.totalTemp matches ..49 if entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:iron_chestplate"}]}] run scoreboard players set #player.armorTemp3 bb.variable 10

execute as @s if score @s tmp.totalTemp matches 51.. if entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:diamond_chestplate"}]}] run scoreboard players set #player.armorTemp3 bb.variable 10
execute as @s if score @s tmp.totalTemp matches ..49 if entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:diamond_chestplate"}]}] run scoreboard players set #player.armorTemp3 bb.variable 10

#Leggings
execute as @s if score @s tmp.totalTemp matches 51.. if entity @s[nbt={Inventory:[{Slot:101b,id:"minecraft:iron_leggings"}]}] run scoreboard players set #player.armorTemp2 bb.variable 10
execute as @s if score @s tmp.totalTemp matches ..49 if entity @s[nbt={Inventory:[{Slot:101b,id:"minecraft:iron_leggings"}]}] run scoreboard players set #player.armorTemp2 bb.variable 10

execute as @s if score @s tmp.totalTemp matches 51.. if entity @s[nbt={Inventory:[{Slot:101b,id:"minecraft:diamond_leggings"}]}] run scoreboard players set #player.armorTemp2 bb.variable 10
execute as @s if score @s tmp.totalTemp matches ..49 if entity @s[nbt={Inventory:[{Slot:101b,id:"minecraft:diamond_leggings"}]}] run scoreboard players set #player.armorTemp2 bb.variable 10

#Boots
execute as @s if score @s tmp.totalTemp matches 51.. if entity @s[nbt={Inventory:[{Slot:100b,id:"minecraft:iron_boots"}]}] run scoreboard players set #player.armorTemp1 bb.variable 10
execute as @s if score @s tmp.totalTemp matches ..49 if entity @s[nbt={Inventory:[{Slot:100b,id:"minecraft:iron_boots"}]}] run scoreboard players set #player.armorTemp1 bb.variable 10

execute as @s if score @s tmp.totalTemp matches 51.. if entity @s[nbt={Inventory:[{Slot:100b,id:"minecraft:diamond_boots"}]}] run scoreboard players set #player.armorTemp1 bb.variable 10
execute as @s if score @s tmp.totalTemp matches ..49 if entity @s[nbt={Inventory:[{Slot:100b,id:"minecraft:diamond_boots"}]}] run scoreboard players set #player.armorTemp1 bb.variable 10

execute as @s if score #player.armorTemp1 tmp.variable matches 1.. run tag @s add temperature.metal_armor.1
execute as @s if score #player.armorTemp2 tmp.variable matches 1.. run tag @s add temperature.metal_armor.2
execute as @s if score #player.armorTemp3 tmp.variable matches 1.. run tag @s add temperature.metal_armor.3
execute as @s if score #player.armorTemp4 tmp.variable matches 1.. run tag @s add temperature.metal_armor.4
