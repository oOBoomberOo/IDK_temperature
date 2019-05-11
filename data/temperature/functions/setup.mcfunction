scoreboard objectives add bb.variable dummy
scoreboard objectives add bb.calculation dummy
scoreboard objectives add bb.success dummy
scoreboard objectives add bb.config dummy

# Total Temperature
scoreboard objectives add cat.totalTemp dummy

# Target Temperature that totalTemp need to reach
scoreboard objectives add cat.targetTemp dummy

# Time Interval between each temperature calculation
scoreboard objectives add cat.timerTemp dummy

scoreboard objectives add cat.prevTemp dummy
scoreboard objectives add cat.thTimer dummy
scoreboard objectives add cat.thTempLvl dummy

scoreboard players set #cat.timer bb.variable 0

function temperature:config