execute store result score cat.query.time cat.query run time query daytime
execute store result score cat.query.day cat.query run time query day

# Shift the time scale to midnight
scoreboard players add cat.query.time cat.query 6000
scoreboard players operation cat.query.time cat.query %= #cat.query.daytime bb.config

scoreboard players operation cat.query.time cat.query *= #1000 bb.variable
scoreboard players operation cat.query.time cat.query /= #cat.query.daytime bb.config