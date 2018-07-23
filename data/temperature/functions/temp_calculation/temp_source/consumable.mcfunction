execute as @s[scores={tmp.waterTime=1..}] run scoreboard players operation @s tmp.totalTemp += @s tmp.waterAmt 
execute as @s[scores={tmp.waterTime=1..}] run scoreboard players remove @s tmp.waterTime 1 
execute as @s[scores={tmp.waterTime=..0}] run scoreboard players set @s tmp.waterAmt 0 
execute as @s[scores={tmp.soupTime=1..}] run scoreboard players operation @s tmp.totalTemp += @s tmp.soupAmt 
execute as @s[scores={tmp.soupTime=1..}] run scoreboard players remove @s tmp.soupTime 1 
execute as @s[scores={tmp.soupTime=..0}] run scoreboard players set @s tmp.soupAmt 0 
execute as @s[scores={tmp.g_appleTime=1..}] run scoreboard players operation @s tmp.totalTemp += @s tmp.g_appleAmt 
execute as @s[scores={tmp.g_appleTime=1..}] run scoreboard players remove @s tmp.g_appleTime 1 
execute as @s[scores={tmp.g_appleTime=..0}] run scoreboard players set @s tmp.g_appleAmt 0 
execute as @s[scores={tmp.g_carrotTime=1..}] run scoreboard players operation @s tmp.totalTemp += @s tmp.g_carrotAmt 
execute as @s[scores={tmp.g_carrotTime=1..}] run scoreboard players remove @s tmp.g_carrotTime 1 
execute as @s[scores={tmp.g_carrotTime=..0}] run scoreboard players set @s tmp.g_carrotAmt 0 
execute as @s[scores={tmp.meatTime=1..}] run scoreboard players operation @s tmp.totalTemp += @s tmp.meatAmt 
execute as @s[scores={tmp.meatTime=1..}] run scoreboard players remove @s tmp.meatTime 1 
execute as @s[scores={tmp.meatTime=..0}] run scoreboard players set @s tmp.meatAmt 0 
