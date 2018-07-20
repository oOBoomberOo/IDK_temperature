execute as @s[scores={tmp.altitude=0..8}] runn scoreboard players set @s tmp.totalTemp 78
execute as @s[scores={tmp.altitude=9..16}] run scoreboard players set @s tmp.totalTemp 75
execute as @s[scores={tmp.altitude=17..20}] run scoreboard players set @s tmp.totalTemp 70
execute as @s[scores={tmp.altitude=21..25}] run scoreboard players set @s tmp.totalTemp 65

#Normal Biome
execute as @s[scores={tmp.altitude=26..35}] unless score @s tmp.spBiome matches 42 run scoreboard players set @s tmp.totalTemp 55
execute as @s[scores={tmp.altitude=35..50}] unless score @s tmp.spBiome matches 42 run scoreboard players set @s tmp.totalTemp 45
execute as @s[scores={tmp.altitude=60..74}] unless score @s tmp.spBiome matches 42 run scoreboard players set @s tmp.altitudeTemp 0

#Ocean Biome
execute as @s[scores={tmp.altitude=26..28}] if score @s tmp.spBiome matches 42 run scoreboard players set @s tmp.altitudeTemp -6
execute as @s[scores={tmp.altitude=29..34}] if score @s tmp.spBiome matches 42 run scoreboard players set @s tmp.altitudeTemp -8
execute as @s[scores={tmp.altitude=35..39}] if score @s tmp.spBiome matches 42 run scoreboard players set @s tmp.altitudeTemp -7
execute as @s[scores={tmp.altitude=40..43}] if score @s tmp.spBiome matches 42 run scoreboard players set @s tmp.altitudeTemp -6
execute as @s[scores={tmp.altitude=44..47}] if score @s tmp.spBiome matches 42 run scoreboard players set @s tmp.altitudeTemp -5
execute as @s[scores={tmp.altitude=48..51}] if score @s tmp.spBiome matches 42 run scoreboard players set @s tmp.altitudeTemp -4
execute as @s[scores={tmp.altitude=52..56}] if score @s tmp.spBiome matches 42 run scoreboard players set @s tmp.altitudeTemp -3
execute as @s[scores={tmp.altitude=57..59}] if score @s tmp.spBiome matches 42 run scoreboard players set @s tmp.altitudeTemp -2
execute as @s[scores={tmp.altitude=60..63}] if score @s tmp.spBiome matches 42 run scoreboard players set @s tmp.altitudeTemp -1
execute as @s[scores={tmp.altitude=64..74}] if score @s tmp.spBiome matches 42 run scoreboard players set @s tmp.altitudeTemp 0

execute as @s[scores={tmp.altitude=51..59}] if score @s tmp.tempBiome matches 76.. unless score @s tmp.spBiome matches 42 run scoreboard players set @s tmp.altitudeTemp -10
execute as @s[scores={tmp.altitude=51..59}] if score @s tmp.tempBiome matches 50..75 unless score @s tmp.spBiome matches 42 run scoreboard players set @s tmp.altitudeTemp -5
execute as @s[scores={tmp.altitude=51..59}] if score @s tmp.tempBiome matches 25..49 unless score @s tmp.spBiome matches 42 run scoreboard players set @s tmp.altitudeTemp 5
execute as @s[scores={tmp.altitude=51..59}] if score @s tmp.tempBiome matches ..24 unless score @s tmp.spBiome matches 42 run scoreboard players set @s tmp.altitudeTemp 10	

execute as @s[scores={tmp.altitude=75..82}] run scoreboard players set @s tmp.altitudeTemp -1
execute as @s[scores={tmp.altitude=83..92}] run scoreboard players set @s tmp.altitudeTemp -2
execute as @s[scores={tmp.altitude=93..100}] run scoreboard players set @s tmp.altitudeTemp -3
execute as @s[scores={tmp.altitude=101..106}] run scoreboard players set @s tmp.altitudeTemp -4
execute as @s[scores={tmp.altitude=106..112}] run scoreboard players set @s tmp.altitudeTemp -5
execute as @s[scores={tmp.altitude=113..117}] run scoreboard players set @s tmp.altitudeTemp -6
execute as @s[scores={tmp.altitude=118..121}] run scoreboard players set @s tmp.altitudeTemp -7
execute as @s[scores={tmp.altitude=122..130}] run scoreboard players set @s tmp.altitudeTemp -8
execute as @s[scores={tmp.altitude=131..139}] run scoreboard players set @s tmp.altitudeTemp -9
execute as @s[scores={tmp.altitude=140..160}] run scoreboard players set @s tmp.altitudeTemp -10
execute as @s[scores={tmp.altitude=161..180}] run scoreboard players set @s tmp.altitudeTemp -11
execute as @s[scores={tmp.altitude=181..190}] run scoreboard players set @s tmp.altitudeTemp -12
execute as @s[scores={tmp.altitude=191..200}] run scoreboard players set @s tmp.altitudeTemp -13

execute as @s run scoreboard players operation @s tmp.totalTemp += @s tmp.altitudeTemp