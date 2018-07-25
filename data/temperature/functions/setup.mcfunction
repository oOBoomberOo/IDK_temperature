tellraw @a {"text":"Successfully loaded: ","color":"yellow","extra":[{"text":"Climate and Temperature Pack V1.0","color":"blue","bold":false,"italic":false,"underlined":false},{"text":" by ","color":"yellow"},{"text":"SedarGames, Chuckchuk, TheSaltyPug, Boomber","color":"red","bold":false},{"text":".","color":"yellow"}]}

#Objective
scoreboard objectives add tmp.playerTemp dummy
scoreboard objectives add tmp.totalTemp dummy
scoreboard objectives add tmp.tempSpeed dummy
scoreboard objectives add tmp.calTotalTemp dummy
scoreboard objectives add tmp.resultTemp dummy
scoreboard objectives add tmp.variable dummy

scoreboard objectives add tmp.tempBiome dummy
scoreboard objectives add tmp.spBiome dummy
scoreboard objectives add tmp.humidity dummy

scoreboard objectives add tmp.tempArmor1 dummy
scoreboard objectives add tmp.tempArmor2 dummy
scoreboard objectives add tmp.tempArmor3 dummy
scoreboard objectives add tmp.tempArmor4 dummy

scoreboard objectives add tmp.altitude dummy
scoreboard objectives add tmp.altitudeTemp dummy
scoreboard objectives add tmp.playerAlt dummy

scoreboard objectives add tmp.stayInBiome dummy
scoreboard objectives add tmp.stayInSun dummy
scoreboard objectives add tmp.stayInWater dummy
scoreboard objectives add tmp.sunlightHeat dummy

scoreboard objectives add tmp.wetnessTemp dummy
scoreboard objectives add tmp.wetnessTime dummy
scoreboard objectives add tmp.wetnessAmt dummy

scoreboard objectives add tmp.blockTmp dummy
scoreboard objectives add tmp.tempBlock dummy
scoreboard objectives add tmp.fireTime dummy
scoreboard objectives add tmp.tempFire dummy

scoreboard objectives add tmp.hotTime1 dummy
scoreboard objectives add tmp.hotTime2 dummy
scoreboard objectives add tmp.hotTime3 dummy
scoreboard objectives add tmp.hotTime4 dummy
scoreboard objectives add tmp.hotTemp dummy

scoreboard objectives add tmp.coldTime1 dummy
scoreboard objectives add tmp.coldTime2 dummy
scoreboard objectives add tmp.coldTime3 dummy
scoreboard objectives add tmp.coldTime4 dummy
scoreboard objectives add tmp.coldTime5 dummy
scoreboard objectives add tmp.coldTime6 dummy
scoreboard objectives add tmp.coldTime7 dummy
scoreboard objectives add tmp.coldTemp dummy

scoreboard objectives add hot.witherTime1 dummy
scoreboard objectives add hot.witherTime2 dummy
scoreboard objectives add cold.witherTime1 dummy
scoreboard objectives add cold.witherTime2 dummy

scoreboard objectives add cold.blindTime1 dummy
scoreboard objectives add cold.blindTime2 dummy

scoreboard objectives add hot.nauseaTime1 dummy

function temperature:temp_calculation/scoreboard

#Variable
scoreboard players set #second tmp.variable 20
scoreboard players set #cold_temp tmp.variable -5

gamerule commandBlockOutput false
gamerule logAdminCommands false