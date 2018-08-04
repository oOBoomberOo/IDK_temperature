#Default
execute as @s[nbt=!{Dimension:-1}] unless score @s tmp.humidity matches 1.. if score @s tmp.tempSpeed matches 4000.. if score @s tmp.resultTemp matches -14..14 run function temperature:player/temperature
execute as @s[nbt=!{Dimension:-1}] unless score @s tmp.humidity matches 1.. if score @s tmp.tempSpeed matches 3000.. if score @s tmp.resultTemp matches 15..29 run function temperature:player/temperature
execute as @s[nbt=!{Dimension:-1}] unless score @s tmp.humidity matches 1.. if score @s tmp.tempSpeed matches 3000.. if score @s tmp.resultTemp matches -29..-15 run function temperature:player/temperature
execute as @s[nbt=!{Dimension:-1}] unless score @s tmp.humidity matches 1.. if score @s tmp.tempSpeed matches 2500.. if score @s tmp.resultTemp matches 30.. run function temperature:player/temperature
execute as @s[nbt=!{Dimension:-1}] unless score @s tmp.humidity matches 1.. if score @s tmp.tempSpeed matches 2500.. if score @s tmp.resultTemp matches ..-30 run function temperature:player/temperature

#Dry
execute as @s[scores={tmp.humidity=1},nbt=!{Dimension:-1}] if score @s tmp.tempSpeed matches 5500.. if score @s tmp.resultTemp matches -14..14 run function temperature:player/temperature
execute as @s[scores={tmp.humidity=1},nbt=!{Dimension:-1}] if score @s tmp.tempSpeed matches 4500.. if score @s tmp.resultTemp matches 15..29 run function temperature:player/temperature
execute as @s[scores={tmp.humidity=1},nbt=!{Dimension:-1}] if score @s tmp.tempSpeed matches 4500.. if score @s tmp.resultTemp matches -29..-15 run function temperature:player/temperature
execute as @s[scores={tmp.humidity=1},nbt=!{Dimension:-1}] if score @s tmp.tempSpeed matches 4000.. if score @s tmp.resultTemp matches 30.. run function temperature:player/temperature
execute as @s[scores={tmp.humidity=1},nbt=!{Dimension:-1}] if score @s tmp.tempSpeed matches 4000.. if score @s tmp.resultTemp matches ..-30 run function temperature:player/temperature

#Mild Dry
execute as @s[scores={tmp.humidity=2},nbt=!{Dimension:-1}] if score @s tmp.tempSpeed matches 4500.. if score @s tmp.resultTemp matches -14..14 run function temperature:player/temperature
execute as @s[scores={tmp.humidity=2},nbt=!{Dimension:-1}] if score @s tmp.tempSpeed matches 3500.. if score @s tmp.resultTemp matches 15..29 run function temperature:player/temperature
execute as @s[scores={tmp.humidity=2},nbt=!{Dimension:-1}] if score @s tmp.tempSpeed matches 3500.. if score @s tmp.resultTemp matches -29..-15 run function temperature:player/temperature
execute as @s[scores={tmp.humidity=2},nbt=!{Dimension:-1}] if score @s tmp.tempSpeed matches 3000.. if score @s tmp.resultTemp matches 30.. run function temperature:player/temperature
execute as @s[scores={tmp.humidity=2},nbt=!{Dimension:-1}] if score @s tmp.tempSpeed matches 3000.. if score @s tmp.resultTemp matches ..-30 run function temperature:player/temperature

#Regular
execute as @s[scores={tmp.humidity=3},nbt=!{Dimension:-1}] if score @s tmp.tempSpeed matches 4000.. if score @s tmp.resultTemp matches -14..14 run function temperature:player/temperature
execute as @s[scores={tmp.humidity=3},nbt=!{Dimension:-1}] if score @s tmp.tempSpeed matches 3000.. if score @s tmp.resultTemp matches 15..29 run function temperature:player/temperature
execute as @s[scores={tmp.humidity=3},nbt=!{Dimension:-1}] if score @s tmp.tempSpeed matches 3000.. if score @s tmp.resultTemp matches -29..-15 run function temperature:player/temperature
execute as @s[scores={tmp.humidity=3},nbt=!{Dimension:-1}] if score @s tmp.tempSpeed matches 2500.. if score @s tmp.resultTemp matches 30.. run function temperature:player/temperature
execute as @s[scores={tmp.humidity=3},nbt=!{Dimension:-1}] if score @s tmp.tempSpeed matches 2500.. if score @s tmp.resultTemp matches ..-30 run function temperature:player/temperature

#Mild Humid
execute as @s[scores={tmp.humidity=4},nbt=!{Dimension:-1}] if score @s tmp.tempSpeed matches 3500.. if score @s tmp.resultTemp matches -14..14 run function temperature:player/temperature
execute as @s[scores={tmp.humidity=4},nbt=!{Dimension:-1}] if score @s tmp.tempSpeed matches 2500.. if score @s tmp.resultTemp matches 15..29 run function temperature:player/temperature
execute as @s[scores={tmp.humidity=4},nbt=!{Dimension:-1}] if score @s tmp.tempSpeed matches 2500.. if score @s tmp.resultTemp matches -29..-15 run function temperature:player/temperature
execute as @s[scores={tmp.humidity=4},nbt=!{Dimension:-1}] if score @s tmp.tempSpeed matches 2000.. if score @s tmp.resultTemp matches 30.. run function temperature:player/temperature
execute as @s[scores={tmp.humidity=4},nbt=!{Dimension:-1}] if score @s tmp.tempSpeed matches 2000.. if score @s tmp.resultTemp matches ..-30 run function temperature:player/temperature

#Humid
execute as @s[scores={tmp.humidity=5},nbt=!{Dimension:-1}] if score @s tmp.tempSpeed matches 2500.. if score @s tmp.resultTemp matches -14..14 run function temperature:player/temperature
execute as @s[scores={tmp.humidity=5},nbt=!{Dimension:-1}] if score @s tmp.tempSpeed matches 1500.. if score @s tmp.resultTemp matches 15..29 run function temperature:player/temperature
execute as @s[scores={tmp.humidity=5},nbt=!{Dimension:-1}] if score @s tmp.tempSpeed matches 1500.. if score @s tmp.resultTemp matches -29..-15 run function temperature:player/temperature
execute as @s[scores={tmp.humidity=5},nbt=!{Dimension:-1}] if score @s tmp.tempSpeed matches 1000.. if score @s tmp.resultTemp matches 30.. run function temperature:player/temperature
execute as @s[scores={tmp.humidity=5},nbt=!{Dimension:-1}] if score @s tmp.tempSpeed matches 1000.. if score @s tmp.resultTemp matches ..-30 run function temperature:player/temperature

#Nether
execute as @s[nbt={Dimension:-1}] if score @s tmp.tempSpeed matches 10000.. if score @s tmp.resultTemp matches -14..14 run function temperature:player/temperature
execute as @s[nbt={Dimension:-1}] if score @s tmp.tempSpeed matches 8000.. if score @s tmp.resultTemp matches 15..29 run function temperature:player/temperature
execute as @s[nbt={Dimension:-1}] if score @s tmp.tempSpeed matches 8000.. if score @s tmp.resultTemp matches -29..-15 run function temperature:player/temperature
execute as @s[nbt={Dimension:-1}] if score @s tmp.tempSpeed matches 7000.. if score @s tmp.resultTemp matches 30.. run function temperature:player/temperature
execute as @s[nbt={Dimension:-1}] if score @s tmp.tempSpeed matches 7000.. if score @s tmp.resultTemp matches ..-30 run function temperature:player/temperature
