execute if score #cat.biome.temp bb.variable <= #cat.biome.snowable bb.config run function temperature:engine/biome/weather/snowable
execute if score #cat.biome.temp bb.variable > #cat.biome.snowable bb.config if score #cat.biome.temp bb.variable <= #cat.biome.rainable bb.config run function temperature:engine/biome/weather/rainable
execute if score #cat.biome.temp bb.variable > #cat.biome.snowable bb.config if score #cat.biome.temp bb.variable > #cat.biome.rainable bb.config run function temperature:engine/biome/weather/dry

execute if score cat.query.weather cat.weather matches 1.. run function temperature:engine/biome/weather/calculate