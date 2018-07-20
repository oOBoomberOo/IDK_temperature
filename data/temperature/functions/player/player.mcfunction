#Find tmp.resultTemp
execute as @s run scoreboard players set @s tmp.resultTemp 0
execute as @s store result score @s tmp.calTotalTemp run scoreboard players get @s tmp.totalTemp
execute as @s store result score @s tmp.resultTemp run scoreboard players operation @s tmp.calTotalTemp -= @s tmp.playerTemp

#Split everything for better performance
scoreboard players add #tmp.bot_timer tmp.variable 1
execute as @s if score #tmp.bot_timer tmp.variable matches 40.. if score @s tmp.resultTemp matches -14..14 run function temperature:player/temperature
execute as @s if score #tmp.bot_timer tmp.variable matches 20.. if score @s tmp.resultTemp matches 15..29 run function temperature:player/temperature
execute as @s if score #tmp.bot_timer tmp.variable matches 20.. if score @s tmp.resultTemp matches -29..-15 run function temperature:player/temperature
execute as @s if score #tmp.bot_timer tmp.variable matches 10.. if score @s tmp.resultTemp matches 30..44 run function temperature:player/temperature
execute as @s if score #tmp.bot_timer tmp.variable matches 10.. if score @s tmp.resultTemp matches -44..-30 run function temperature:player/temperature
execute as @s if score #tmp.bot_timer tmp.variable matches 5.. if score @s tmp.resultTemp matches 45.. run function temperature:player/temperature
execute as @s if score #tmp.bot_timer tmp.variable matches 5.. if score @s tmp.resultTemp matches ..-45 run function temperature:player/temperature

#Reached Hot Tier 1
execute as @s[scores={tmp.playerTemp=75..85}] run function temperature:debuff/hot_tier_1

#Reached Hot Tier 2
execute as @s[scores={tmp.playerTemp=85..95}] run function temperature:debuff/hot_tier_2
