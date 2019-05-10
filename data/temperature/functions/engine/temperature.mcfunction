execute if score @s cat.totalTemp < @s cat.targetTemp run scoreboard players operation @s cat.totalTemp += #cat.temp.factor bb.config
execute if score @s cat.totalTemp > @s cat.targetTemp run scoreboard players operation @s cat.totalTemp -= #cat.temp.factor bb.config
