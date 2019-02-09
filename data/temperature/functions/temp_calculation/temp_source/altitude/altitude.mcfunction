execute as @s[scores={tmp.altitude=0..4}] run scoreboard players set #player.totalTemp tmp.variable 78
execute as @s[scores={tmp.altitude=5}] run scoreboard players set #player.totalTemp tmp.variable 76
execute as @s[scores={tmp.altitude=6}] run scoreboard players set #player.totalTemp tmp.variable 75
execute as @s[scores={tmp.altitude=7}] run scoreboard players set #player.totalTemp tmp.variable 74
execute as @s[scores={tmp.altitude=8}] run scoreboard players set #player.totalTemp tmp.variable 73
execute as @s[scores={tmp.altitude=9..10}] run scoreboard players set #player.totalTemp tmp.variable 72
execute as @s[scores={tmp.altitude=11}] run scoreboard players set #player.totalTemp tmp.variable 71
execute as @s[scores={tmp.altitude=12..13}] run scoreboard players set #player.totalTemp tmp.variable 70
execute as @s[scores={tmp.altitude=14..16}] run scoreboard players set #player.totalTemp tmp.variable 69
execute as @s[scores={tmp.altitude=17..20}] run scoreboard players set #player.totalTemp tmp.variable 68
execute as @s[scores={tmp.altitude=21..22}] run scoreboard players set #player.totalTemp tmp.variable 67
execute as @s[scores={tmp.altitude=23..25}] run scoreboard players set #player.totalTemp tmp.variable 66
execute as @s[scores={tmp.altitude=26}] run scoreboard players set #player.totalTemp tmp.variable 63
execute as @s[scores={tmp.altitude=27}] run scoreboard players set #player.totalTemp tmp.variable 62
execute as @s[scores={tmp.altitude=28..29}] run scoreboard players set #player.totalTemp tmp.variable 61
execute as @s[scores={tmp.altitude=30}] run scoreboard players set #player.totalTemp tmp.variable 60
execute as @s[scores={tmp.altitude=31}] run scoreboard players set #player.totalTemp tmp.variable 59
execute as @s[scores={tmp.altitude=32}] run scoreboard players set #player.totalTemp tmp.variable 58
execute as @s[scores={tmp.altitude=33}] run scoreboard players set #player.totalTemp tmp.variable 56

execute as @s[scores={tmp.altitude=0..33}] run scoreboard players set #player.altitudeTemp tmp.variable 0

execute as @s if score @s tmp.spBiome matches 1.. run function temperature:temp_calculation/temp_source/altitude/sp_biome
execute as @s if score @s tmp.spBiome matches ..0 run function temperature:temp_calculation/temp_source/altitude/normal_biome

execute as @s[scores={tmp.altitude=75..82}] run scoreboard players set #player.altitudeTemp tmp.variable -1
execute as @s[scores={tmp.altitude=83..92}] run scoreboard players set #player.altitudeTemp tmp.variable -2
execute as @s[scores={tmp.altitude=93..100}] run scoreboard players set #player.altitudeTemp tmp.variable -3
execute as @s[scores={tmp.altitude=101..106}] run scoreboard players set #player.altitudeTemp tmp.variable -4
execute as @s[scores={tmp.altitude=107..112}] run scoreboard players set #player.altitudeTemp tmp.variable -5
execute as @s[scores={tmp.altitude=113..117}] run scoreboard players set #player.altitudeTemp tmp.variable -6
execute as @s[scores={tmp.altitude=118..121}] run scoreboard players set #player.altitudeTemp tmp.variable -7
execute as @s[scores={tmp.altitude=122..130}] run scoreboard players set #player.altitudeTemp tmp.variable -8
execute as @s[scores={tmp.altitude=131..139}] run scoreboard players set #player.altitudeTemp tmp.variable -9
execute as @s[scores={tmp.altitude=140..160}] run scoreboard players set #player.altitudeTemp tmp.variable -10
execute as @s[scores={tmp.altitude=161..180}] run scoreboard players set #player.altitudeTemp tmp.variable -11
execute as @s[scores={tmp.altitude=181..190}] run scoreboard players set #player.altitudeTemp tmp.variable -12
execute as @s[scores={tmp.altitude=191..200}] run scoreboard players set #player.altitudeTemp tmp.variable -13
execute as @s[scores={tmp.altitude=201..215}] run scoreboard players set #player.altitudeTemp tmp.variable -14
execute as @s[scores={tmp.altitude=216..225}] run scoreboard players set #player.altitudeTemp tmp.variable -15
execute as @s[scores={tmp.altitude=226..235}] run scoreboard players set #player.altitudeTemp tmp.variable -16
execute as @s[scores={tmp.altitude=236..245}] run scoreboard players set #player.altitudeTemp tmp.variable -17
execute as @s[scores={tmp.altitude=246..255}] run scoreboard players set #player.altitudeTemp tmp.variable -18
execute as @s[scores={tmp.altitude=256..}] run scoreboard players set #player.altitudeTemp tmp.variable -20

scoreboard players operation #player.totalTemp tmp.variable += #player.altitudeTemp tmp.variable