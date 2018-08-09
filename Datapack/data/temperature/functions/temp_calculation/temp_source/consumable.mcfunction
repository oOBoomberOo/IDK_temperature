execute as @s[scores={tmp.waterTme=1..}] run scoreboard players operation @s tmp.totalTemp += @s tmp.waterAmt 
execute as @s[scores={tmp.waterTme=1..}] run scoreboard players remove @s tmp.waterTme 1 
execute as @s[scores={tmp.waterTme=..0}] run scoreboard players set @s tmp.waterAmt 0 
execute as @s[scores={tmp.goldenTme=1..}] run scoreboard players operation @s tmp.totalTemp += @s tmp.goldenAmt 
execute as @s[scores={tmp.goldenTme=1..}] run scoreboard players remove @s tmp.goldenTme 1 
execute as @s[scores={tmp.goldenTme=..0}] run scoreboard players set @s tmp.goldenAmt 0 
execute as @s[scores={tmp.organicTme=1..}] run scoreboard players operation @s tmp.totalTemp += @s tmp.organicAmt 
execute as @s[scores={tmp.organicTme=1..}] run scoreboard players remove @s tmp.organicTme 1 
execute as @s[scores={tmp.organicTme=..0}] run scoreboard players set @s tmp.organicAmt 0 
execute as @s[scores={tmp.soupTme=1..}] run scoreboard players operation @s tmp.totalTemp += @s tmp.soupAmt 
execute as @s[scores={tmp.soupTme=1..}] run scoreboard players remove @s tmp.soupTme 1 
execute as @s[scores={tmp.soupTme=..0}] run scoreboard players set @s tmp.soupAmt 0 
execute as @s[scores={tmp.meatTme=1..,tmp.playerTemp=..60}] run scoreboard players operation @s tmp.totalTemp += @s tmp.meatAmt 
execute as @s[scores={tmp.meatTme=1..}] run scoreboard players remove @s tmp.meatTme 1 
execute as @s[scores={tmp.meatTme=..0}] run scoreboard players set @s tmp.meatAmt 0 
execute as @s[scores={tmp.bakedTme=1..}] run scoreboard players operation @s tmp.totalTemp += @s tmp.bakedAmt 
execute as @s[scores={tmp.bakedTme=1..}] run scoreboard players remove @s tmp.bakedTme 1 
execute as @s[scores={tmp.bakedTme=..0}] run scoreboard players set @s tmp.bakedAmt 0 
