effect give @s slowness 60 0 true
scoreboard players add #debuff.soft.1 tmp.variable 1
execute if score #debuff.soft.1 tmp.variable matches 400.. run effect give @s nausea 6 0 true
execute if score #debuff.soft.1 tmp.variable matches 400.. run scoreboard players set #debuff.soft.1 tmp.variable 0