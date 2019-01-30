execute as @s store result score #player.fireTime tmp.calculation run data get entity @s Fire 1
execute as @s if score #player.fireTime tmp.calculation matches 1.. run scoreboard players set #player.tempFire tmp.calculation 20
execute as @s if score #player.fireTime tmp.calculation matches ..0 run scoreboard players set #player.tempFire tmp.calculation 0
execute as @s run scoreboard players operation #player.totalTemp tmp.variable += #player.tempFire tmp.calculation