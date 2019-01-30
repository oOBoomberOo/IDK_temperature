#Normal Biome
execute as @s[scores={tmp.altitude=34..45}] run scoreboard players set #player.altitudeTemp tmp.variable 0
execute as @s[scores={tmp.altitude=34..35}] run scoreboard players set #player.totalTemp tmp.variable 55
execute as @s[scores={tmp.altitude=36}] run scoreboard players set #player.totalTemp tmp.variable 54
execute as @s[scores={tmp.altitude=37}] run scoreboard players set #player.totalTemp tmp.variable 52
execute as @s[scores={tmp.altitude=38}] run scoreboard players set #player.totalTemp tmp.variable 50
execute as @s[scores={tmp.altitude=39}] run scoreboard players set #player.totalTemp tmp.variable 49
execute as @s[scores={tmp.altitude=40}] run scoreboard players set #player.totalTemp tmp.variable 48
execute as @s[scores={tmp.altitude=41}] run scoreboard players set #player.totalTemp tmp.variable 46
execute as @s[scores={tmp.altitude=42..45}] run scoreboard players set #player.totalTemp tmp.variable 45

execute as @s[scores={tmp.altitude=60..74}] run scoreboard players set #player.altitudeTemp tmp.variable 0

#Still-Biome Layers
execute as @s[scores={tmp.altitude=46..50}] if score @s tmp.tempBiome matches 76.. run scoreboard players set #player.altitudeTemp tmp.variable -6
execute as @s[scores={tmp.altitude=46..50}] if score @s tmp.tempBiome matches 50..75 run scoreboard players set #player.altitudeTemp tmp.variable -3
execute as @s[scores={tmp.altitude=46..50}] if score @s tmp.tempBiome matches 25..49 run scoreboard players set #player.altitudeTemp tmp.variable 3
execute as @s[scores={tmp.altitude=46..50}] if score @s tmp.tempBiome matches ..24 run scoreboard players set #player.altitudeTemp tmp.variable 6

execute as @s[scores={tmp.altitude=51..56}] if score @s tmp.tempBiome matches 76.. run scoreboard players set #player.altitudeTemp tmp.variable -10
execute as @s[scores={tmp.altitude=51..56}] if score @s tmp.tempBiome matches 50..75 run scoreboard players set #player.altitudeTemp tmp.variable -5
execute as @s[scores={tmp.altitude=51..56}] if score @s tmp.tempBiome matches 25..49 run scoreboard players set #player.altitudeTemp tmp.variable 5
execute as @s[scores={tmp.altitude=51..56}] if score @s tmp.tempBiome matches ..24 run scoreboard players set #player.altitudeTemp tmp.variable 10

execute as @s[scores={tmp.altitude=57..62}] if score @s tmp.tempBiome matches 76.. run scoreboard players set #player.altitudeTemp tmp.variable -5
execute as @s[scores={tmp.altitude=57..62}] if score @s tmp.tempBiome matches 50..75 run scoreboard players set #player.altitudeTemp tmp.variable -3
execute as @s[scores={tmp.altitude=57..62}] if score @s tmp.tempBiome matches 25..49 run scoreboard players set #player.altitudeTemp tmp.variable 3
execute as @s[scores={tmp.altitude=57..62}] if score @s tmp.tempBiome matches ..24 run scoreboard players set #player.altitudeTemp tmp.variable 5	
