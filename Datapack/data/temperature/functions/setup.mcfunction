tellraw @a [{"translate":"Successfully Loaded","color":"yellow"},{"text":" : ","color":"yellow"},{"translate":"Climate & Temperature","color":"blue"},{"text":" Pack v0.2.2","color":"blue"},{"text":" "},{"translate":"by","color":"yellow"},{"text":" "},{"translate":"SedarGames, Chuckchuk, TheSaltyPug, Boomber","color":"red"},{"text":".","color":"yellow"}]

#Objective
scoreboard objectives add tmp.death minecraft.custom:minecraft.deaths
scoreboard objectives add tmp.playerTemp dummy
scoreboard objectives add tmp.totalTemp dummy
scoreboard objectives add tmp.tempSpeed dummy
scoreboard objectives add tmp.calTotalTemp dummy
scoreboard objectives add tmp.calMetal dummy
scoreboard objectives add tmp.resultTemp dummy
scoreboard objectives add tmp.variable dummy
scoreboard objectives add tmp.multiplier dummy
scoreboard objectives add tmp.tempType dummy

scoreboard objectives add tmp.tempStr dummy
scoreboard objectives add tmp.tempBiome dummy
scoreboard objectives add tmp.spBiome dummy
scoreboard objectives add tmp.humidity dummy
scoreboard objectives add tmp.metalTemp dummy
scoreboard objectives add tmp.metalArmor dummy

scoreboard objectives add tmp.tempArmor1 dummy
scoreboard objectives add tmp.tempArmor2 dummy
scoreboard objectives add tmp.tempArmor3 dummy
scoreboard objectives add tmp.tempArmor4 dummy
scoreboard objectives add tmp.metalArmor1 dummy
scoreboard objectives add tmp.metalArmor2 dummy
scoreboard objectives add tmp.metalArmor3 dummy
scoreboard objectives add tmp.metalArmor4 dummy

scoreboard objectives add tmp.tempArmor dummy

scoreboard objectives add tmp.altitude dummy
scoreboard objectives add tmp.altitudeTemp dummy
scoreboard objectives add tmp.playerAlt dummy

scoreboard objectives add tmp.stayInBiome dummy
scoreboard objectives add tmp.stayInSun dummy
scoreboard objectives add tmp.stayInWater dummy
scoreboard objectives add tmp.sunlightHeat dummy

scoreboard objectives add tmp.wetnessTemp dummy
scoreboard objectives add tmp.wetnessTtemp dummy
scoreboard objectives add tmp.wetnessTime dummy
scoreboard objectives add tmp.wetnessAmt dummy

scoreboard objectives add tmp.blockTmp dummy
scoreboard objectives add tmp.tempBlock dummy
scoreboard objectives add tmp.fireTime dummy
scoreboard objectives add tmp.tempFire dummy
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