scoreboard players set #timeTemp tmp.variable 0
execute if score #currentTime tmp.variable matches 0..2000 run scoreboard players set #timeTemp tmp.variable -1
execute if score #currentTime tmp.variable matches 2000..4000 run scoreboard players set #timeTemp tmp.variable 1
execute if score #currentTime tmp.variable matches 4000..6000 run scoreboard players set #timeTemp tmp.variable 2
execute if score #currentTime tmp.variable matches 6000..8000 run scoreboard players set #timeTemp tmp.variable 3
execute if score #currentTime tmp.variable matches 8000..10000 run scoreboard players set #timeTemp tmp.variable 2
execute if score #currentTime tmp.variable matches 10000..12000 run scoreboard players set #timeTemp tmp.variable 1
execute if score #currentTime tmp.variable matches 12000..14000 run scoreboard players set #timeTemp tmp.variable 0
execute if score #currentTime tmp.variable matches 14000..16000 run scoreboard players set #timeTemp tmp.variable -1
execute if score #currentTime tmp.variable matches 16000..18000 run scoreboard players set #timeTemp tmp.variable -2
execute if score #currentTime tmp.variable matches 18000..20000 run scoreboard players set #timeTemp tmp.variable -3
execute if score #currentTime tmp.variable matches 20000..22000 run scoreboard players set #timeTemp tmp.variable -2
execute if score #currentTime tmp.variable matches 22000..24000 run scoreboard players set #timeTemp tmp.variable -2
execute as @s store result score @s tmp.totalTemp run scoreboard players operation @s tmp.totalTemp += #timeTemp tmp.variable