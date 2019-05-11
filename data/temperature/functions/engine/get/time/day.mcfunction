scoreboard players operation #cat.query.time bb.calculation = cat.query.time cat.query
scoreboard players remove #cat.query.time bb.calculation 250

# |x|
execute if score #cat.query.time bb.calculation matches ..-1 run scoreboard players operation #cat.query.time bb.calculation *= #-1 bb.variable

scoreboard players operation #cat.calculated.temp bb.variable = #cat.temp.time_max bb.config
scoreboard players set #cat.calculated.timer bb.variable 0

scoreboard players operation #cat.query.time bb.calculation *= #cat.temp.time_magnetude bb.config
execute if score #cat.query.time bb.calculation > #cat.temp.time_max bb.config run scoreboard players operation #cat.query.time bb.calculation = #cat.temp.time_max bb.config

scoreboard players operation #cat.calculated.temp bb.variable -= #cat.query.time bb.calculation
