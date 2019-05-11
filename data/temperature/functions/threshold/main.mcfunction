scoreboard players operation #cat.totalTemp bb.calculation = @s cat.totalTemp
scoreboard players operation #cat.prevTemp bb.calculation = @s cat.prevTemp
scoreboard players operation #cat.totalTemp bb.calculation /= #10000 bb.variable
scoreboard players operation #cat.prevTemp bb.calculation /= #10000 bb.variable

execute unless score #cat.totalTemp bb.calculation = #cat.prevTemp bb.calculation run function temperature:threshold/update
function temperature:threshold/ticking

scoreboard players operation @s cat.prevTemp = @s cat.totalTemp