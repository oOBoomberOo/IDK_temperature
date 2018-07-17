execute as @s if entity @s[nbt={Inventory:[{Slot:100b,tag:{temp:{type:"melting"}}}]}] run scoreboard players operation @s tmp.tempArmor1 += #melting tmp.variable
execute as @s if entity @s[nbt={Inventory:[{Slot:100b,tag:{temp:{type:"hot"}}}]}] run scoreboard players operation @s tmp.tempArmor1 += #hot tmp.variable
execute as @s if entity @s[nbt={Inventory:[{Slot:100b,tag:{temp:{type:"warm"}}}]}] run scoreboard players operation @s tmp.tempArmor1 += #warm tmp.variable
execute as @s if entity @s[nbt={Inventory:[{Slot:100b,tag:{temp:{type:"normal"}}}]}] run scoreboard players operation @s tmp.tempArmor1 += #normal tmp.variable
execute as @s if entity @s[nbt={Inventory:[{Slot:100b,tag:{temp:{type:"cool"}}}]}] run scoreboard players operation @s tmp.tempArmor1 += #cool tmp.variable
execute as @s if entity @s[nbt={Inventory:[{Slot:100b,tag:{temp:{type:"cold"}}}]}] run scoreboard players operation @s tmp.tempArmor1 += #cold tmp.variable
execute as @s if entity @s[nbt={Inventory:[{Slot:100b,tag:{temp:{type:"freezing"}}}]}] run scoreboard players operation @s tmp.tempArmor1 += #freezing tmp.variable

execute as @s if entity @s[nbt={Inventory:[{Slot:101b,tag:{temp:{type:"melting"}}}]}] run scoreboard players operation @s tmp.tempArmor2 += #melting tmp.variable
execute as @s if entity @s[nbt={Inventory:[{Slot:101b,tag:{temp:{type:"hot"}}}]}] run scoreboard players operation @s tmp.tempArmor2 += #hot tmp.variable
execute as @s if entity @s[nbt={Inventory:[{Slot:101b,tag:{temp:{type:"warm"}}}]}] run scoreboard players operation @s tmp.tempArmor2 += #warm tmp.variable
execute as @s if entity @s[nbt={Inventory:[{Slot:101b,tag:{temp:{type:"normal"}}}]}] run scoreboard players operation @s tmp.tempArmor2 += #normal tmp.variable
execute as @s if entity @s[nbt={Inventory:[{Slot:101b,tag:{temp:{type:"cool"}}}]}] run scoreboard players operation @s tmp.tempArmor2 += #cool tmp.variable
execute as @s if entity @s[nbt={Inventory:[{Slot:101b,tag:{temp:{type:"cold"}}}]}] run scoreboard players operation @s tmp.tempArmor2 += #cold tmp.variable
execute as @s if entity @s[nbt={Inventory:[{Slot:101b,tag:{temp:{type:"freezing"}}}]}] run scoreboard players operation @s tmp.tempArmor2 += #freezing tmp.variable

execute as @s if entity @s[nbt={Inventory:[{Slot:102b,tag:{temp:{type:"melting"}}}]}] run scoreboard players operation @s tmp.tempArmor3 += #melting tmp.variable
execute as @s if entity @s[nbt={Inventory:[{Slot:102b,tag:{temp:{type:"hot"}}}]}] run scoreboard players operation @s tmp.tempArmor3 += #hot tmp.variable
execute as @s if entity @s[nbt={Inventory:[{Slot:102b,tag:{temp:{type:"warm"}}}]}] run scoreboard players operation @s tmp.tempArmor3 += #warm tmp.variable
execute as @s if entity @s[nbt={Inventory:[{Slot:102b,tag:{temp:{type:"normal"}}}]}] run scoreboard players operation @s tmp.tempArmor3 += #normal tmp.variable
execute as @s if entity @s[nbt={Inventory:[{Slot:102b,tag:{temp:{type:"cool"}}}]}] run scoreboard players operation @s tmp.tempArmor3 += #cool tmp.variable
execute as @s if entity @s[nbt={Inventory:[{Slot:102b,tag:{temp:{type:"cold"}}}]}] run scoreboard players operation @s tmp.tempArmor3 += #cold tmp.variable
execute as @s if entity @s[nbt={Inventory:[{Slot:102b,tag:{temp:{type:"freezing"}}}]}] run scoreboard players operation @s tmp.tempArmor3 += #freezing tmp.variable

execute as @s if entity @s[nbt={Inventory:[{Slot:103b,tag:{temp:{type:"melting"}}}]}] run scoreboard players operation @s tmp.tempArmor4 += #melting tmp.variable
execute as @s if entity @s[nbt={Inventory:[{Slot:103b,tag:{temp:{type:"hot"}}}]}] run scoreboard players operation @s tmp.tempArmor4 += #hot tmp.variable
execute as @s if entity @s[nbt={Inventory:[{Slot:103b,tag:{temp:{type:"warm"}}}]}] run scoreboard players operation @s tmp.tempArmor4 += #warm tmp.variable
execute as @s if entity @s[nbt={Inventory:[{Slot:103b,tag:{temp:{type:"normal"}}}]}] run scoreboard players operation @s tmp.tempArmor4 += #normal tmp.variable
execute as @s if entity @s[nbt={Inventory:[{Slot:103b,tag:{temp:{type:"cool"}}}]}] run scoreboard players operation @s tmp.tempArmor4 += #cool tmp.variable
execute as @s if entity @s[nbt={Inventory:[{Slot:103b,tag:{temp:{type:"cold"}}}]}] run scoreboard players operation @s tmp.tempArmor4 += #cold tmp.variable
execute as @s if entity @s[nbt={Inventory:[{Slot:103b,tag:{temp:{type:"freezing"}}}]}] run scoreboard players operation @s tmp.tempArmor4 += #freezing tmp.variable

execute as @s store result score @s tmp.totalTemp run scoreboard players operation @s tmp.totalTemp += @s tmp.tempArmor1
execute as @s store result score @s tmp.totalTemp run scoreboard players operation @s tmp.totalTemp += @s tmp.tempArmor2
execute as @s store result score @s tmp.totalTemp run scoreboard players operation @s tmp.totalTemp += @s tmp.tempArmor3
execute as @s store result score @s tmp.totalTemp run scoreboard players operation @s tmp.totalTemp += @s tmp.tempArmor4
scoreboard players set @s tmp.tempArmor1 0
scoreboard players set @s tmp.tempArmor2 0
scoreboard players set @s tmp.tempArmor3 0
scoreboard players set @s tmp.tempArmor4 0