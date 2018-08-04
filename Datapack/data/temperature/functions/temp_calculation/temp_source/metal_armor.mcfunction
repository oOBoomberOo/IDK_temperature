execute as @s run tag @s remove temperature.metal_armor.1
execute as @s run tag @s remove temperature.metal_armor.2
execute as @s run tag @s remove temperature.metal_armor.3
execute as @s run tag @s remove temperature.metal_armor.4

#Helmet
execute as @s if entity @s[tag=temperature.player.hot,nbt={Inventory:[{Slot:103b,id:"minecraft:iron_helmet"}]}] run scoreboard players set @s tmp.metalArmor4 4
execute as @s if entity @s[tag=temperature.player.cold,nbt={Inventory:[{Slot:103b,id:"minecraft:iron_helmet"}]}] run scoreboard players set @s tmp.metalArmor4 4

execute as @s if entity @s[tag=temperature.player.hot,nbt={Inventory:[{Slot:103b,id:"minecraft:diamond_helmet"}]}] run scoreboard players set @s tmp.metalArmor4 3
execute as @s if entity @s[tag=temperature.player.cold,nbt={Inventory:[{Slot:103b,id:"minecraft:diamond_helmet"}]}] run scoreboard players set @s tmp.metalArmor4 1



#Chestplate
execute as @s if entity @s[tag=temperature.player.hot,nbt={Inventory:[{Slot:102b,id:"minecraft:iron_chestplate"}]}] run scoreboard players set @s tmp.metalArmor3 12
execute as @s if entity @s[tag=temperature.player.cold,nbt={Inventory:[{Slot:102b,id:"minecraft:iron_chestplate"}]}] run scoreboard players set @s tmp.metalArmor3 12

execute as @s if entity @s[tag=temperature.player.hot,nbt={Inventory:[{Slot:102b,id:"minecraft:diamond_chestplate"}]}] run scoreboard players set @s tmp.metalArmor3 10
execute as @s if entity @s[tag=temperature.player.cold,nbt={Inventory:[{Slot:102b,id:"minecraft:diamond_chestplate"}]}] run scoreboard players set @s tmp.metalArmor3 6



#Leggings
execute as @s if entity @s[tag=temperature.player.hot,nbt={Inventory:[{Slot:101b,id:"minecraft:iron_leggings"}]}] run scoreboard players set @s tmp.metalArmor2 9
execute as @s if entity @s[tag=temperature.player.cold,nbt={Inventory:[{Slot:101b,id:"minecraft:iron_leggings"}]}] run scoreboard players set @s tmp.metalArmor2 9

execute as @s if entity @s[tag=temperature.player.hot,nbt={Inventory:[{Slot:101b,id:"minecraft:diamond_leggings"}]}] run scoreboard players set @s tmp.metalArmor2 8
execute as @s if entity @s[tag=temperature.player.cold,nbt={Inventory:[{Slot:101b,id:"minecraft:diamond_leggings"}]}] run scoreboard players set @s tmp.metalArmor2 4



#Boots
execute as @s if entity @s[tag=temperature.player.hot,nbt={Inventory:[{Slot:100b,id:"minecraft:iron_boots"}]}] run scoreboard players set @s tmp.metalArmor1 3
execute as @s if entity @s[tag=temperature.player.cold,nbt={Inventory:[{Slot:100b,id:"minecraft:iron_boots"}]}] run scoreboard players set @s tmp.metalArmor1 3

execute as @s if entity @s[tag=temperature.player.hot,nbt={Inventory:[{Slot:100b,id:"minecraft:diamond_boots"}]}] run scoreboard players set @s tmp.metalArmor1 3
execute as @s if entity @s[tag=temperature.player.cold,nbt={Inventory:[{Slot:100b,id:"minecraft:diamond_boots"}]}] run scoreboard players set @s tmp.metalArmor1 1



execute as @s[tag=temperature.player.hot] run scoreboard players operation @s tmp.tempArmor += @s tmp.metalArmor1
execute as @s[tag=temperature.player.hot] run scoreboard players operation @s tmp.tempArmor += @s tmp.metalArmor2
execute as @s[tag=temperature.player.hot] run scoreboard players operation @s tmp.tempArmor += @s tmp.metalArmor3
execute as @s[tag=temperature.player.hot] run scoreboard players operation @s tmp.tempArmor += @s tmp.metalArmor4

execute as @s[tag=temperature.player.cold] run scoreboard players operation @s tmp.tempArmor -= @s tmp.metalArmor1
execute as @s[tag=temperature.player.cold] run scoreboard players operation @s tmp.tempArmor -= @s tmp.metalArmor2
execute as @s[tag=temperature.player.cold] run scoreboard players operation @s tmp.tempArmor -= @s tmp.metalArmor3
execute as @s[tag=temperature.player.cold] run scoreboard players operation @s tmp.tempArmor -= @s tmp.metalArmor4

execute as @s run function temperature:temp_calculation/armor/armor

execute as @s[scores={tmp.metalArmor1=1..}] run tag @s add temperature.metal_armor.1
execute as @s[scores={tmp.metalArmor2=1..}] run tag @s add temperature.metal_armor.2
execute as @s[scores={tmp.metalArmor3=1..}] run tag @s add temperature.metal_armor.3
execute as @s[scores={tmp.metalArmor4=1..}] run tag @s add temperature.metal_armor.4

scoreboard players set @s tmp.metalArmor1 0
scoreboard players set @s tmp.metalArmor2 0
scoreboard players set @s tmp.metalArmor3 0
scoreboard players set @s tmp.metalArmor4 0