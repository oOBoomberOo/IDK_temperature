execute as @s[tag=!tmp.altitude.no_direct_sunlight,scores={tmp.stayInSun=..180}] if score #currentTime tmp.variable matches 0..13000 run scoreboard players add @s tmp.stayInSun 1
execute as @s[tag=!tmp.altitude.no_direct_sunlight,scores={tmp.stayInSun=0..}] run scoreboard players remove @s tmp.stayInSun 1

execute as @s[scores={tmp.stayInSun=1..40}] if score #currentTime tmp.variable matches 0..13000 run scoreboard players set @s tmp.sunlightHeat 1
execute as @s[scores={tmp.stayInSun=41..80}] if score #currentTime tmp.variable matches 0..13000 run scoreboard players set @s tmp.sunlightHeat 2
execute as @s[scores={tmp.stayInSun=81..100}] if score #currentTime tmp.variable matches 0..13000 run scoreboard players set @s tmp.sunlightHeat 3
execute as @s[scores={tmp.stayInSun=101..140}] if score #currentTime tmp.variable matches 0..13000 run scoreboard players set @s tmp.sunlightHeat 4
execute as @s[scores={tmp.stayInSun=141..180}] if score #currentTime tmp.variable matches 0..13000 run scoreboard players set @s tmp.sunlightHeat 5