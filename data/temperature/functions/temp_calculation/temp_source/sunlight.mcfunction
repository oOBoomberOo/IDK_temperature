execute as @s[tag=!tmp.altitude.no_direct_sunlight,scores={tmp.stayInSun=..100}] if score #currentTime tmp.variable matches 0..13000 run scoreboard players add @s tmp.stayInSun 1
execute as @s[tag=tmp.altitude.no_direct_sunlight,scores={tmp.stayInSun=0..}] run scoreboard players remove @s tmp.stayInSun 1

execute as @s[scores={tmp.stayInSun=..0}] if score #currentTime tmp.variable matches 0..13000 run scoreboard players set @s tmp.sunlightHeat 0
execute as @s[scores={tmp.stayInSun=1..20}] if score #currentTime tmp.variable matches 0..13000 run scoreboard players set @s tmp.sunlightHeat 1
execute as @s[scores={tmp.stayInSun=21..40}] if score #currentTime tmp.variable matches 0..13000 run scoreboard players set @s tmp.sunlightHeat 2
execute as @s[scores={tmp.stayInSun=41..60}] if score #currentTime tmp.variable matches 0..13000 run scoreboard players set @s tmp.sunlightHeat 3
execute as @s[scores={tmp.stayInSun=61..80}] if score #currentTime tmp.variable matches 0..13000 run scoreboard players set @s tmp.sunlightHeat 4
execute as @s[scores={tmp.stayInSun=81..100}] if score #currentTime tmp.variable matches 0..13000 run scoreboard players set @s tmp.sunlightHeat 5

execute as @s run scoreboard players operation @s tmp.totalTemp += @s tmp.sunlightHeat