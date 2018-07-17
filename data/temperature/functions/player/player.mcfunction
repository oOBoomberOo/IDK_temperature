#Split everything for better performance
execute if score #tmp.bot_timer tmp.variable matches 39 as @s run function temperature:player/temperature

#Reached Hot Tier 1
execute as @s[scores={tmp.playerTemp=75..85}] run function temperature:debuff/hot_tier_1

#Reached Hot Tier 2
execute as @s[scores={tmp.playerTemp=85..95}] run function temperature:debuff/hot_tier_2
