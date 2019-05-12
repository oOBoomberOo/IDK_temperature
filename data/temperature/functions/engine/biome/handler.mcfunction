# If current biome id is not the same as current ID update ID scoreboard 
execute unless score #cat.biome.uid bb.variable = @s cat.biomeID run function temperature:engine/biome/update_biome

function temperature:engine/biome/altitude
function temperature:engine/biome/weather

scoreboard players operation @s cat.biomeTemp = #cat.biome.temp bb.variable
scoreboard players operation @s cat.timeMult = #cat.biome.time_multiplier bb.variable