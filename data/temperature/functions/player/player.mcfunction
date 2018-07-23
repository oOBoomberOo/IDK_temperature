#Find tmp.resultTemp
execute as @s run scoreboard players set @s tmp.resultTemp 0
execute as @s store result score @s tmp.calTotalTemp run scoreboard players get @s tmp.totalTemp
execute as @s store result score @s tmp.resultTemp run scoreboard players operation @s tmp.calTotalTemp -= @s tmp.playerTemp

#Split everything for better performance
scoreboard players add #temperature_speed tmp.variable 1
execute as @s run function temperature:player/temperature_speed

#Clock, Thermometer?
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:clock"}]},scores={tmp.totalTemp=..-1}] run title @s actionbar ["",{"text":"Your temperature is","color":"white"},{"text":" : ","color":"gray"},{"score":{"name":"@s","objective":"tmp.playerTemp"},"color":"white"}]
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:clock"}]},scores={tmp.totalTemp=0..15}] run title @s actionbar ["",{"text":"Your temperature is","color":"white"},{"text":" : ","color":"gray"},{"score":{"name":"@s","objective":"tmp.playerTemp"},"color":"blue"}]
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:clock"}]},scores={tmp.totalTemp=16..25}] run title @s actionbar ["",{"text":"Your temperature is","color":"white"},{"text":" : ","color":"gray"},{"score":{"name":"@s","objective":"tmp.playerTemp"},"color":"dark_blue"}]
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:clock"}]},scores={tmp.totalTemp=26..74}] run title @s actionbar ["",{"text":"Your temperature is","color":"white"},{"text":" : ","color":"gray"},{"score":{"name":"@s","objective":"tmp.playerTemp"},"color":"green"}]
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:clock"}]},scores={tmp.totalTemp=75..100}] run title @s actionbar ["",{"text":"Your temperature is","color":"white"},{"text":" : ","color":"gray"},{"score":{"name":"@s","objective":"tmp.playerTemp"},"color":"yellow"}]
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:clock"}]},scores={tmp.totalTemp=100..115}] run title @s actionbar ["",{"text":"Your temperature is","color":"white"},{"text":" : ","color":"gray"},{"score":{"name":"@s","objective":"tmp.playerTemp"},"color":"red"}]
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:clock"}]},scores={tmp.totalTemp=116..}] run title @s actionbar ["",{"text":"Your temperature is","color":"white"},{"text":" : ","color":"gray"},{"score":{"name":"@s","objective":"tmp.playerTemp"},"color":"dark_red"}]

execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:clock",tag:{boomber:{temperature:{id:"debug"}}}}]}] run title @s actionbar ["",{"text":"Your temperature is","color":"white"},{"text":" : ","color":"gray"},{"score":{"name":"@s","objective":"tmp.playerTemp"},"color":"green"},{"text":" / ","color":"gray"},{"score":{"name":"@s","objective":"tmp.totalTemp"},"color":"red"}]

execute as @s at @s anchored eyes positioned ~ ~ ~ run function temperature:player/effect
