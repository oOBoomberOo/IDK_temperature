scoreboard players operation #cat.calculated.temp bb.variable = @s cat.biomeTemp

#scoreboard players remove #cat.calculated.temp bb.variable 500
scoreboard players operation #cat.calculated.temp bb.variable *= #cat.temp.biome.magnetude bb.config

scoreboard players set #cat.calculated.timer bb.variable 0
