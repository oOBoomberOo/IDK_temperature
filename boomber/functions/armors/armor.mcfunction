execute as @s if entity @s[nbt={Inventory:[{Slot:100b,tag:{boomber:{temp:1}}}]}] run scoreboard players set @s bb.temp1 1
execute as @s if entity @s[nbt={Inventory:[{Slot:100b,tag:{boomber:{temp:-1}}}]}] run scoreboard players set @s bb.temp1 -1
execute as @s if entity @s[nbt={Inventory:[{Slot:101b,tag:{boomber:{temp:1}}}]}] run scoreboard players set @s bb.temp2 1
execute as @s if entity @s[nbt={Inventory:[{Slot:101b,tag:{boomber:{temp:-1}}}]}] run scoreboard players set @s bb.temp2 -1
execute as @s if entity @s[nbt={Inventory:[{Slot:102b,tag:{boomber:{temp:1}}}]}] run scoreboard players set @s bb.temp3 1
execute as @s if entity @s[nbt={Inventory:[{Slot:102b,tag:{boomber:{temp:-1}}}]}] run scoreboard players set @s bb.temp3 -1
execute as @s if entity @s[nbt={Inventory:[{Slot:103b,tag:{boomber:{temp:1}}}]}] run scoreboard players set @s bb.temp4 1
execute as @s if entity @s[nbt={Inventory:[{Slot:103b,tag:{boomber:{temp:-1}}}]}] run scoreboard players set @s bb.temp4 -1
execute as @s run function boomber:armors/modifiers
execute as @s run function boomber:armors/total_temperature