scoreboard players set #player.armorTemp1 bb.variable 0
scoreboard players set #player.armorTemp2 bb.variable 0
scoreboard players set #player.armorTemp3 bb.variable 0
scoreboard players set #player.armorTemp4 bb.variable 0

#Helmet
execute as @s if entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet"}]}] run scoreboard players set #player.armorTemp4 bb.variable 3
execute as @s if entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:chainmail_helmet"}]}] run scoreboard players set #player.armorTemp4 bb.variable 0

#Chestplate
execute as @s if entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate"}]}] run scoreboard players set #player.armorTemp3 bb.variable 6
execute as @s if entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:chainmail_chestplate"}]}] run scoreboard players set #player.armorTemp3 bb.variable 0

#Leggings
execute as @s if entity @s[nbt={Inventory:[{Slot:101b,id:"minecraft:leather_leggings"}]}] run scoreboard players set #player.armorTemp2 bb.variable 4
execute as @s if entity @s[nbt={Inventory:[{Slot:101b,id:"minecraft:chainmail_leggings"}]}] run scoreboard players set #player.armorTemp2 bb.variable 0

#Boots
execute as @s if entity @s[nbt={Inventory:[{Slot:100b,id:"minecraft:leather_boots"}]}] run scoreboard players set #player.armorTemp1 bb.variable 2
execute as @s if entity @s[nbt={Inventory:[{Slot:100b,id:"minecraft:chainmail_boots"}]}] run scoreboard players set #player.armorTemp1 bb.variable 0

execute as @s run scoreboard players operation #player.armorTemp bb.variable += #player.armorTemp1 bb.variable
execute as @s run scoreboard players operation #player.armorTemp bb.variable += #player.armorTemp2 bb.variable
execute as @s run scoreboard players operation #player.armorTemp bb.variable += #player.armorTemp3 bb.variable
execute as @s run scoreboard players operation #player.armorTemp bb.variable += #player.armorTemp4 bb.variable
