# Starting temperature of player
scoreboard players set #cat.init.start bb.config 50000

# Starting temperature of player
scoreboard players set #cat.init.target bb.config 0

# How much should temperature increase per calculation
scoreboard players set #cat.temp.factor bb.config 500

# Magnetude to multiply <time of the day with>
# Should be <cat.temp.time_max>/500
scoreboard players set #cat.temp.time.magnetude bb.config 10

# How much can temperature create by "time of the day" can be
scoreboard players set #cat.temp.time.max bb.config 5000

# Magnetude of biome temperature
scoreboard players set #cat.temp.biome.magnetude bb.config 10

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

scoreboard players set #cat.biome.altitude_temp bb.config 1
scoreboard players set #cat.biome.altitude_spacing bb.config 5
scoreboard players set #cat.biome.weather.clear bb.config 1000
scoreboard players set #cat.biome.weather.rain bb.config 500
scoreboard players set #cat.biome.weather.snow bb.config 250

scoreboard players set #cat.biome.weather.snowable bb.config 150
scoreboard players set #cat.biome.weather.rainable bb.config 950


scoreboard players set #cat.block.ice.temp bb.config -4
scoreboard players set #cat.block.ice.timer bb.config 0