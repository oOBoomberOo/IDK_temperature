# How much should temperature increase per calculation
scoreboard players set #cat.temp.factor bb.config 500

# Magnetude to multiply <time of the day with>
# Should be <cat.temp.time_max>/250
scoreboard players set #cat.temp.time_magnetude bb.config 20

# How much can temperature create by "time of the day" can be
scoreboard players set #cat.temp.time_max bb.config 5000

# Base temperature of "targetTemp"
scoreboard players set #cat.temp.target bb.config 50000

# Starting temperature of player
scoreboard players set #cat.temp.start bb.config 50000

# Base value of "timerTemp"
scoreboard players set #cat.timer bb.config 20

# Lowest possible value of "timerTemp"
scoreboard players set #cat.timer.lower_limit bb.config 1

scoreboard players set #cat.eff.time.cold₁ bb.config 100
scoreboard players set #cat.eff.time.cold₂ bb.config 200

# Number of tick the datapack check for weather
scoreboard players set #cat.query.weather bb.config 20

# Number of tick the datapack check for time
scoreboard players set #cat.query.time bb.config 20

# Full daytime in tick
scoreboard players set #cat.query.daytime bb.config 24000
