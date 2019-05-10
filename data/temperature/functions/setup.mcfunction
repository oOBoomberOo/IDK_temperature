scoreboard objectives add bb.variable dummy
scoreboard objectives add bb.calculation dummy
scoreboard objectives add bb.success dummy
scoreboard objectives add bb.config dummy

# Total Temperature
scoreboard objectives add cat.totalTemp dummy
scoreboard objectives add cat.targetTemp dummy
scoreboard objectives add cat.timerTemp dummy

scoreboard players set #cat.timer bb.variable 0

function temperature:config