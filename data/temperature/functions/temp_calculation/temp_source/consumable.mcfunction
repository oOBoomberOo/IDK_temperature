execute as @s[scores={tmp.waterTime=1..}] run scoreboard players operation @s tmp.totalTemp += @s tmp.waterAmt 
execute as @s[scores={tmp.waterTime=1..}] run scoreboard players remove @s tmp.waterTime 1 
execute as @s[scores={tmp.waterTime=..0}] run scoreboard players set @s tmp.waterAmt 0 
execute as @s[scores={tmp.soupTime=1..}] run scoreboard players operation @s tmp.totalTemp += @s tmp.soupAmt 
execute as @s[scores={tmp.soupTime=1..}] run scoreboard players remove @s tmp.soupTime 1 
execute as @s[scores={tmp.soupTime=..0}] run scoreboard players set @s tmp.soupAmt 0 
