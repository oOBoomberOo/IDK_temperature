execute if score cat.query.time cat.query matches 0..500 run function temperature:engine/get/time/day
execute if score cat.query.time cat.query matches 500..1000 run function temperature:engine/get/time/night

scoreboard players operation #cat.query.time bb.calculation *= #cat.temp.time.magnetude bb.config
execute if score #cat.query.time bb.calculation > #cat.temp.time.max bb.config run scoreboard players operation #cat.query.time bb.calculation = #cat.temp.time.max bb.config

scoreboard players operation #cat.temp.time.max bb.calculation = #cat.temp.time.max bb.config
scoreboard players operation #cat.temp.time.max bb.calculation /= #2 bb.variable
scoreboard players operation #cat.query.time bb.calculation -= #cat.temp.time.max bb.calculation
scoreboard players operation #cat.query.time bb.calculation *= @s cat.timeMult

scoreboard players operation #cat.calculated.temp bb.variable = #cat.query.time bb.calculation
scoreboard players set #cat.calculated.timer bb.variable 0