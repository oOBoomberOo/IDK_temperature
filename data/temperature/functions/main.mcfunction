scoreboard players add #cat.timer bb.variable 1

# Initilize temperature for players that doesn't have temperature
execute as @a[tag=!cat.temperature.ignore] unless score @s cat.totalTemp matches -2147483647..2147483647 run function temperature:engine/init

# Updating temperature
execute as @a[tag=!cat.temperature.ignore] at @s run function temperature:engine/main