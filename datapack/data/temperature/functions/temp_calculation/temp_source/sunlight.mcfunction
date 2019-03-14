execute as @s[tag=tmp.sky.exposed,scores={tmp.stayInSun=..100}] if score #currentTime tmp.variable > #min_day tmp.variable if score #currentTime tmp.variable < #max_day tmp.variable run scoreboard players add @s tmp.stayInSun 1
execute as @s[tag=!tmp.sky.exposed,scores={tmp.stayInSun=0..}] run scoreboard players remove @s tmp.stayInSun 1

execute as @s[scores={tmp.stayInSun=..0}] if score #currentTime tmp.variable > #min_day tmp.variable if score #currentTime tmp.variable < #max_day tmp.variable run scoreboard players set #player.sunlightHeat tmp.variable 0
execute as @s[scores={tmp.stayInSun=1..20}] if score #currentTime tmp.variable > #min_day tmp.variable if score #currentTime tmp.variable < #max_day tmp.variable run scoreboard players set #player.sunlightHeat tmp.variable 1
execute as @s[scores={tmp.stayInSun=21..40}] if score #currentTime tmp.variable > #min_day tmp.variable if score #currentTime tmp.variable < #max_day tmp.variable run scoreboard players set #player.sunlightHeat tmp.variable 2
execute as @s[scores={tmp.stayInSun=41..60}] if score #currentTime tmp.variable > #min_day tmp.variable if score #currentTime tmp.variable < #max_day tmp.variable run scoreboard players set #player.sunlightHeat tmp.variable 3
execute as @s[scores={tmp.stayInSun=61..80}] if score #currentTime tmp.variable > #min_day tmp.variable if score #currentTime tmp.variable < #max_day tmp.variable run scoreboard players set #player.sunlightHeat tmp.variable 4
execute as @s[scores={tmp.stayInSun=81..100}] if score #currentTime tmp.variable > #min_day tmp.variable if score #currentTime tmp.variable < #max_day tmp.variable run scoreboard players set #player.sunlightHeat tmp.variable 5

scoreboard players operation #player.totalTemp tmp.variable += #player.sunlightHeat tmp.variable