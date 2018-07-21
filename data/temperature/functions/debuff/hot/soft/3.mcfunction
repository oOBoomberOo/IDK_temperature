scoreboard players add #debuff.soft.3
execute if score #debuff.soft.3 tmp.variable matches 200.. run effect give @s wither 1 0 true
execute if score #debuff.soft.3 tmp.variable matches 200.. run scoreboard players set #debuff.soft.3 tmp.variable 0