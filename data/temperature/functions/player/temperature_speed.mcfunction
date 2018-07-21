#Default
execute as @s unless score @s tmp.humidity matches 1.. if score #tmp.bot_timer tmp.variable matches 40.. if score @s tmp.resultTemp matches -14..14 run function temperature:player/temperature
execute as @s unless score @s tmp.humidity matches 1.. if score #tmp.bot_timer tmp.variable matches 20.. if score @s tmp.resultTemp matches 15..29 run function temperature:player/temperature
execute as @s unless score @s tmp.humidity matches 1.. if score #tmp.bot_timer tmp.variable matches 20.. if score @s tmp.resultTemp matches -29..-15 run function temperature:player/temperature
execute as @s unless score @s tmp.humidity matches 1.. if score #tmp.bot_timer tmp.variable matches 10.. if score @s tmp.resultTemp matches 30.. run function temperature:player/temperature
execute as @s unless score @s tmp.humidity matches 1.. if score #tmp.bot_timer tmp.variable matches 10.. if score @s tmp.resultTemp matches ..-30 run function temperature:player/temperature

#Dry
execute as @s[scores={tmp.humidity=1}] if score #tmp.bot_timer tmp.variable matches 40.. if score @s tmp.resultTemp matches -14..14 run function temperature:player/temperature
execute as @s[scores={tmp.humidity=1}] if score #tmp.bot_timer tmp.variable matches 20.. if score @s tmp.resultTemp matches 15..29 run function temperature:player/temperature
execute as @s[scores={tmp.humidity=1}] if score #tmp.bot_timer tmp.variable matches 20.. if score @s tmp.resultTemp matches -29..-15 run function temperature:player/temperature
execute as @s[scores={tmp.humidity=1}] if score #tmp.bot_timer tmp.variable matches 10.. if score @s tmp.resultTemp matches 30.. run function temperature:player/temperature
execute as @s[scores={tmp.humidity=1}] if score #tmp.bot_timer tmp.variable matches 10.. if score @s tmp.resultTemp matches ..-30 run function temperature:player/temperature

#Mild Dry
execute as @s[scores={tmp.humidity=2}] if score #tmp.bot_timer tmp.variable matches 40.. if score @s tmp.resultTemp matches -14..14 run function temperature:player/temperature
execute as @s[scores={tmp.humidity=2}] if score #tmp.bot_timer tmp.variable matches 20.. if score @s tmp.resultTemp matches 15..29 run function temperature:player/temperature
execute as @s[scores={tmp.humidity=2}] if score #tmp.bot_timer tmp.variable matches 20.. if score @s tmp.resultTemp matches -29..-15 run function temperature:player/temperature
execute as @s[scores={tmp.humidity=2}] if score #tmp.bot_timer tmp.variable matches 10.. if score @s tmp.resultTemp matches 30.. run function temperature:player/temperature
execute as @s[scores={tmp.humidity=2}] if score #tmp.bot_timer tmp.variable matches 10.. if score @s tmp.resultTemp matches ..-30 run function temperature:player/temperature

#Regular
execute as @s[scores={tmp.humidity=3}] if score #tmp.bot_timer tmp.variable matches 40.. if score @s tmp.resultTemp matches -14..14 run function temperature:player/temperature
execute as @s[scores={tmp.humidity=3}] if score #tmp.bot_timer tmp.variable matches 20.. if score @s tmp.resultTemp matches 15..29 run function temperature:player/temperature
execute as @s[scores={tmp.humidity=3}] if score #tmp.bot_timer tmp.variable matches 20.. if score @s tmp.resultTemp matches -29..-15 run function temperature:player/temperature
execute as @s[scores={tmp.humidity=3}] if score #tmp.bot_timer tmp.variable matches 10.. if score @s tmp.resultTemp matches 30.. run function temperature:player/temperature
execute as @s[scores={tmp.humidity=3}] if score #tmp.bot_timer tmp.variable matches 10.. if score @s tmp.resultTemp matches ..-30 run function temperature:player/temperature

#Mild Humid
execute as @s[scores={tmp.humidity=4}] if score #tmp.bot_timer tmp.variable matches 40.. if score @s tmp.resultTemp matches -14..14 run function temperature:player/temperature
execute as @s[scores={tmp.humidity=4}] if score #tmp.bot_timer tmp.variable matches 20.. if score @s tmp.resultTemp matches 15..29 run function temperature:player/temperature
execute as @s[scores={tmp.humidity=4}] if score #tmp.bot_timer tmp.variable matches 20.. if score @s tmp.resultTemp matches -29..-15 run function temperature:player/temperature
execute as @s[scores={tmp.humidity=4}] if score #tmp.bot_timer tmp.variable matches 10.. if score @s tmp.resultTemp matches 30.. run function temperature:player/temperature
execute as @s[scores={tmp.humidity=4}] if score #tmp.bot_timer tmp.variable matches 10.. if score @s tmp.resultTemp matches ..-30 run function temperature:player/temperature

#Humid
execute as @s[scores={tmp.humidity=5}] if score #tmp.bot_timer tmp.variable matches 40.. if score @s tmp.resultTemp matches -14..14 run function temperature:player/temperature
execute as @s[scores={tmp.humidity=5}] if score #tmp.bot_timer tmp.variable matches 20.. if score @s tmp.resultTemp matches 15..29 run function temperature:player/temperature
execute as @s[scores={tmp.humidity=5}] if score #tmp.bot_timer tmp.variable matches 20.. if score @s tmp.resultTemp matches -29..-15 run function temperature:player/temperature
execute as @s[scores={tmp.humidity=5}] if score #tmp.bot_timer tmp.variable matches 10.. if score @s tmp.resultTemp matches 30.. run function temperature:player/temperature
execute as @s[scores={tmp.humidity=5}] if score #tmp.bot_timer tmp.variable matches 10.. if score @s tmp.resultTemp matches ..-30 run function temperature:player/temperature
