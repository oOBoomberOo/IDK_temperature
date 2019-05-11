scoreboard players operation #cat.timer.local bb.variable = #cat.timer bb.variable
scoreboard players operation #cat.timer.local bb.variable %= #cat.query.weather bb.config

# Query weather state
# -> cat.query.weather cat.query: weather state
execute if score #cat.timer.local bb.variable matches 0 run function temperature:query/weather

scoreboard players operation #cat.timer.local bb.variable = #cat.timer bb.variable
scoreboard players operation #cat.timer.local bb.variable %= #cat.query.time bb.config

# Query daytime and day
# -> cat.query.day cat.query: the amount of day
# -> cat.query.daytime cat.query: percentage of the whole day
execute if score #cat.timer.local bb.variable matches 0 run function temperature:query/time