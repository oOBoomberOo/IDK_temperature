#Helmet
execute as @s store result score @s tmp.calTotalTemp run scoreboard players get @s tmp.totalTemp
execute as @s store result score @s tmp.calTotalTemp run scoreboard players operation @s tmp.calTotalTemp -= #50 tmp.variable
execute as @s store result score @s tmp.calMetal run scoreboard players get @s tmp.metalArmor1
#execute as @s store result score @s tmp.calMetal run scoreboard players operation @s tmp.calMetal += #100 tmp.variable
execute as @s store result score @s tmp.calTotalTemp run scoreboard players operation @s tmp.calTotalTemp *= @s tmp.calMetal
execute as @s store result score @s tmp.calTotalTemp run scoreboard players operation @s tmp.calTotalTemp /= #100 tmp.variable
execute as @s run scoreboard players operation @s tmp.tempArmor += @s tmp.calTotalTemp

#Chestplate
execute as @s store result score @s tmp.calTotalTemp run scoreboard players get @s tmp.totalTemp
execute as @s store result score @s tmp.calTotalTemp run scoreboard players operation @s tmp.calTotalTemp -= #50 tmp.variable
execute as @s store result score @s tmp.calMetal run scoreboard players get @s tmp.metalArmor2
#execute as @s store result score @s tmp.calMetal run scoreboard players operation @s tmp.calMetal += #100 tmp.variable
execute as @s store result score @s tmp.calTotalTemp run scoreboard players operation @s tmp.calTotalTemp *= @s tmp.calMetal
execute as @s store result score @s tmp.calTotalTemp run scoreboard players operation @s tmp.calTotalTemp /= #100 tmp.variable
execute as @s run scoreboard players operation @s tmp.tempArmor += @s tmp.calTotalTemp

#Leggings
execute as @s store result score @s tmp.calTotalTemp run scoreboard players get @s tmp.totalTemp
execute as @s store result score @s tmp.calTotalTemp run scoreboard players operation @s tmp.calTotalTemp -= #50 tmp.variable
execute as @s store result score @s tmp.calMetal run scoreboard players get @s tmp.metalArmor3
#execute as @s store result score @s tmp.calMetal run scoreboard players operation @s tmp.calMetal += #100 tmp.variable
execute as @s store result score @s tmp.calTotalTemp run scoreboard players operation @s tmp.calTotalTemp *= @s tmp.calMetal
execute as @s store result score @s tmp.calTotalTemp run scoreboard players operation @s tmp.calTotalTemp /= #100 tmp.variable
execute as @s run scoreboard players operation @s tmp.tempArmor += @s tmp.calTotalTemp

#Boots
execute as @s store result score @s tmp.calTotalTemp run scoreboard players get @s tmp.totalTemp
execute as @s store result score @s tmp.calTotalTemp run scoreboard players operation @s tmp.calTotalTemp -= #50 tmp.variable
execute as @s store result score @s tmp.calMetal run scoreboard players get @s tmp.metalArmor4
#execute as @s store result score @s tmp.calMetal run scoreboard players operation @s tmp.calMetal += #100 tmp.variable
execute as @s store result score @s tmp.calTotalTemp run scoreboard players operation @s tmp.calTotalTemp *= @s tmp.calMetal
execute as @s store result score @s tmp.calTotalTemp run scoreboard players operation @s tmp.calTotalTemp /= #100 tmp.variable
execute as @s run scoreboard players operation @s tmp.tempArmor += @s tmp.calTotalTemp