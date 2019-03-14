tellraw @a [{"text": "Successfully Loaded : ", "color": "yellow"}, {"text": "Climate & Temperature", "color": "green"}, {"text": ":", "color": "gray"}, {"text": "ReHeated", "color": "dark_red"}, {"text": " v0.0.1", "color": "blue"}, {"text": " "},{"text": "by", "color": "yellow"}, {"text": " "}, {"text": "SedarGames, Chuckchuk, TheSaltyPug, Boomber", "color": "red"}, {"text": ".", "color": "yellow"}]

#Objective
scoreboard objectives add tmp.death minecraft.custom:minecraft.deaths
scoreboard objectives add tmp.playerTemp dummy
scoreboard objectives add tmp.totalTemp dummy
scoreboard objectives add tmp.tempSpeed dummy
scoreboard objectives add tmp.resultTemp dummy
scoreboard objectives add tmp.variable dummy
scoreboard objectives add tmp.calculation dummy
scoreboard objectives add tmp.multiplier dummy
scoreboard objectives add tmp.tempType dummy

scoreboard objectives add tmp.tempStr dummy
scoreboard objectives add tmp.tempBiome dummy
scoreboard objectives add tmp.spBiome dummy
scoreboard objectives add tmp.humidity dummy

scoreboard objectives add tmp.altitude dummy

scoreboard objectives add tmp.stayInBiome dummy
scoreboard objectives add tmp.stayInSun dummy
scoreboard objectives add tmp.stayInWater dummy

scoreboard objectives add tmp.wetnessTime dummy
scoreboard objectives add tmp.wetnessTemp dummy

scoreboard objectives add tmp.tempEffect dummy

function #temperature:consumable/load
function #temperature:debuff/load
function temperature:config/config

#Variable
scoreboard players set #100 tmp.variable 100
scoreboard players set #50 tmp.variable 50
scoreboard players set #second tmp.variable 20
scoreboard players set #cold_temp tmp.variable -5
execute unless score #debuff_gamerule tmp.variable matches 0.. run scoreboard players set #debuff_gamerule tmp.variable 1