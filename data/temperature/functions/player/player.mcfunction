#Find tmp.resultTemp
execute as @s run scoreboard players set @s tmp.resultTemp 0
execute as @s store result score @s tmp.calTotalTemp run scoreboard players get @s tmp.totalTemp
execute as @s store result score @s tmp.resultTemp run scoreboard players operation @s tmp.calTotalTemp -= @s tmp.playerTemp

#Split everything for better performance
scoreboard players add #tmp.bot_timer tmp.variable 1
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

#Reached Hot Tier 1
execute as @s[scores={tmp.heatTime=3600..,tmp.playerTemp=78..}] run function temperature:debuff/hot/soft/1
execute as @s[scores={tmp.heatTime=2400..,tmp.playerTemp=94..}] run function temperature:debuff/hot/soft/2
execute as @s[scores={tmp.heatTime=2400..,tmp.playerTemp=100..}] run function temperature:debuff/hot/soft/3

execute as @s[scores={tmp.playerTemp=85..}] run function temperature:debuff/hot/instant/1