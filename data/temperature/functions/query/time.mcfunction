execute store result score cat.query.time cat.query run time query daytime
execute store result score cat.query.day cat.query run time query day

scoreboard players operation cat.query.time cat.query *= #1000 bb.variable
scoreboard players operation cat.query.time cat.query /= #cat.query.daytime bb.config