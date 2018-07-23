tellraw @a {"text":"Successfully loaded: ","color":"yellow","extra":[{"text":"Climate and Temperature Pack V1.0","color":"blue","bold":false,"italic":false,"underlined":false},{"text":" by ","color":"yellow"},{"text":"SedarGames, Chuckchuk, TheSaltyPug, Boomber","color":"red","bold":false},{"text":".","color":"yellow"}]}

#Objective
scoreboard objectives add tmp.playerTemp dummy
scoreboard objectives add tmp.totalTemp dummy
scoreboard objectives add tmp.tempSpeed dummy
scoreboard objectives add tmp.calTotalTemp dummy
scoreboard objectives add tmp.resultTemp dummy
scoreboard objectives add tmp.debuffTime dummy
scoreboard objectives add tmp.debuffMode dummy
scoreboard objectives add tmp.calDebuffM dummy

scoreboard objectives add tmp.tempBiome dummy
scoreboard objectives add tmp.spBiome dummy
scoreboard objectives add tmp.humidity dummy
scoreboard objectives add tmp.variable dummy
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

scoreboard objectives add tmp.heatTime dummy
scoreboard objectives add tmp.heatTemp dummy

scoreboard objectives add tmp.coldTime dummy
scoreboard objectives add tmp.coldTemp dummy


#Variable
scoreboard players set #second tmp.variable 20

gamerule commandBlockOutput false
gamerule logAdminCommands false