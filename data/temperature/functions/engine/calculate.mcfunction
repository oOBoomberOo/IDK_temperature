function temperature:engine/calculation/armor
scoreboard players operation @s cat.targetTemp += #cat.calculated.temp bb.variable
scoreboard players operation @s cat.timerTemp += #cat.calculated.timer bb.variable

function temperature:engine/calculation/validated