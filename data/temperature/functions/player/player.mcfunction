#Find tmp.resultTemp
execute as @s run scoreboard players set @s tmp.resultTemp 0
execute as @s store result score @s tmp.calTotalTemp run scoreboard players get @s tmp.totalTemp
execute as @s store result score @s tmp.resultTemp run scoreboard players operation @s tmp.calTotalTemp -= @s tmp.playerTemp

#Split everything for better performance
scoreboard players add #tmp.bot_timer tmp.variable 1
execute as @s[scores={tmp.wetnessTime=..0}] if score #tmp.bot_timer tmp.variable matches 40.. if score @s tmp.resultTemp matches -14..14 run function temperature:player/temperature
execute as @s[scores={tmp.wetnessTime=..0}] if score #tmp.bot_timer tmp.variable matches 20.. if score @s tmp.resultTemp matches 15..29 run function temperature:player/temperature
execute as @s[scores={tmp.wetnessTime=..0}] if score #tmp.bot_timer tmp.variable matches 20.. if score @s tmp.resultTemp matches -29..-15 run function temperature:player/temperature
execute as @s[scores={tmp.wetnessTime=..0}] if score #tmp.bot_timer tmp.variable matches 10.. if score @s tmp.resultTemp matches 30.. run function temperature:player/temperature
execute as @s[scores={tmp.wetnessTime=..0}] if score #tmp.bot_timer tmp.variable matches 10.. if score @s tmp.resultTemp matches ..-30 run function temperature:player/temperature

execute as @s[scores={tmp.wetnessTime=1..}] if score #tmp.bot_timer tmp.variable matches 60.. if score @s tmp.resultTemp matches -14..14 run function temperature:player/temperature
execute as @s[scores={tmp.wetnessTime=1..}] if score #tmp.bot_timer tmp.variable matches 40.. if score @s tmp.resultTemp matches 15..29 run function temperature:player/temperature
execute as @s[scores={tmp.wetnessTime=1..}] if score #tmp.bot_timer tmp.variable matches 40.. if score @s tmp.resultTemp matches -29..-15 run function temperature:player/temperature
execute as @s[scores={tmp.wetnessTime=1..}] if score #tmp.bot_timer tmp.variable matches 30.. if score @s tmp.resultTemp matches 30.. run function temperature:player/temperature
execute as @s[scores={tmp.wetnessTime=1..}] if score #tmp.bot_timer tmp.variable matches 30.. if score @s tmp.resultTemp matches ..-30 run function temperature:player/temperature

#Clock, Thermometer?
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:clock"}]},scores={tmp.totalTemp=..-1}] run title @s actionbar ["",{"text":"Your temperature is","color":"light_gray"},{"text":" : ","color":"gray"},{"score":{"name":"@s","objective":"tmp.playerTemp"},"color":"white"}]
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:clock"}]},scores={tmp.totalTemp=0..15}] run title @s actionbar ["",{"text":"Your temperature is","color":"light_gray"},{"text":" : ","color":"gray"},{"score":{"name":"@s","objective":"tmp.playerTemp"},"color":"light_blue"}]
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:clock"}]},scores={tmp.totalTemp=16..25}] run title @s actionbar ["",{"text":"Your temperature is","color":"light_gray"},{"text":" : ","color":"gray"},{"score":{"name":"@s","objective":"tmp.playerTemp"},"color":"blue"}]
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:clock"}]},scores={tmp.totalTemp=26..74}] run title @s actionbar ["",{"text":"Your temperature is","color":"light_gray"},{"text":" : ","color":"gray"},{"score":{"name":"@s","objective":"tmp.playerTemp"},"color":"green"}]
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:clock"}]},scores={tmp.totalTemp=75..100}] run title @s actionbar ["",{"text":"Your temperature is","color":"light_gray"},{"text":" : ","color":"gray"},{"score":{"name":"@s","objective":"tmp.playerTemp"},"color":"yellow"}]
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:clock"}]},scores={tmp.totalTemp=100..115}] run title @s actionbar ["",{"text":"Your temperature is","color":"light_gray"},{"text":" : ","color":"gray"},{"score":{"name":"@s","objective":"tmp.playerTemp"},"color":"red"}]
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:clock"}]},scores={tmp.totalTemp=116..}] run title @s actionbar ["",{"text":"Your temperature is","color":"light_gray"},{"text":" : ","color":"gray"},{"score":{"name":"@s","objective":"tmp.playerTemp"},"color":"dark_red"}]


#Reached Hot Tier 1
execute as @s[scores={tmp.heatTime=4800..,tmp.playerTemp=78..}] run function temperature:debuff/hot/1
execute as @s[scores={tmp.playerTemp=85..}] run function temperature:debuff/hot/2
execute as @s[scores={tmp.playerTemp=92..}] run function temperature:debuff/hot/3