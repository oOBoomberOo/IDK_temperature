execute as @s[scores={tmp.playerAlt=0..8}] run scoreboard players set @s tmp.totalTemp 78
execute as @s[scores={tmp.playerAlt=0..8}] run scoreboard players set @s tmp.altitudeTemp 0
execute as @s[scores={tmp.playerAlt=9..16}] run scoreboard players set @s tmp.totalTemp 75
execute as @s[scores={tmp.playerAlt=9..16}] run scoreboard players set @s tmp.altitudeTemp 0
execute as @s[scores={tmp.playerAlt=17..20}] run scoreboard players set @s tmp.totalTemp 70
execute as @s[scores={tmp.playerAlt=17..20}] run scoreboard players set @s tmp.altitudeTemp 0
execute as @s[scores={tmp.playerAlt=21..25}] run scoreboard players set @s tmp.totalTemp 65
execute as @s[scores={tmp.playerAlt=21..25}] run scoreboard players set @s tmp.altitudeTemp 0

#Normal Biome
execute as @s[scores={tmp.playerAlt=26..35}] unless score @s tmp.spBiome matches 42 run scoreboard players set @s tmp.totalTemp 55
execute as @s[scores={tmp.playerAlt=35..50}] unless score @s tmp.spBiome matches 42 run scoreboard players set @s tmp.altitudeTemp 0
execute as @s[scores={tmp.playerAlt=35..50}] unless score @s tmp.spBiome matches 42 run scoreboard players set @s tmp.totalTemp 45
execute as @s[scores={tmp.playerAlt=60..74}] unless score @s tmp.spBiome matches 42 run scoreboard players set @s tmp.altitudeTemp 0

#Ocean Biome
execute as @s[scores={tmp.playerAlt=26..28}] if score @s tmp.spBiome matches 42 run scoreboard players set @s tmp.altitudeTemp -6
execute as @s[scores={tmp.playerAlt=29..34}] if score @s tmp.spBiome matches 42 run scoreboard players set @s tmp.altitudeTemp -8
execute as @s[scores={tmp.playerAlt=35..39}] if score @s tmp.spBiome matches 42 run scoreboard players set @s tmp.altitudeTemp -7
execute as @s[scores={tmp.playerAlt=40..43}] if score @s tmp.spBiome matches 42 run scoreboard players set @s tmp.altitudeTemp -6
execute as @s[scores={tmp.playerAlt=44..47}] if score @s tmp.spBiome matches 42 run scoreboard players set @s tmp.altitudeTemp -5
execute as @s[scores={tmp.playerAlt=48..51}] if score @s tmp.spBiome matches 42 run scoreboard players set @s tmp.altitudeTemp -4
execute as @s[scores={tmp.playerAlt=52..56}] if score @s tmp.spBiome matches 42 run scoreboard players set @s tmp.altitudeTemp -3
execute as @s[scores={tmp.playerAlt=57..59}] if score @s tmp.spBiome matches 42 run scoreboard players set @s tmp.altitudeTemp -2
execute as @s[scores={tmp.playerAlt=60..63}] if score @s tmp.spBiome matches 42 run scoreboard players set @s tmp.altitudeTemp -1
execute as @s[scores={tmp.playerAlt=64..74}] if score @s tmp.spBiome matches 42 run scoreboard players set @s tmp.altitudeTemp 0

execute as @s[scores={tmp.playerAlt=51..59}] if score @s tmp.tempBiome matches 76.. unless score @s tmp.spBiome matches 42 run scoreboard players set @s tmp.altitudeTemp -10
execute as @s[scores={tmp.playerAlt=51..59}] if score @s tmp.tempBiome matches 50..75 unless score @s tmp.spBiome matches 42 run scoreboard players set @s tmp.altitudeTemp -5
execute as @s[scores={tmp.playerAlt=51..59}] if score @s tmp.tempBiome matches 25..49 unless score @s tmp.spBiome matches 42 run scoreboard players set @s tmp.altitudeTemp 5
execute as @s[scores={tmp.playerAlt=51..59}] if score @s tmp.tempBiome matches ..24 unless score @s tmp.spBiome matches 42 run scoreboard players set @s tmp.altitudeTemp 10	

execute as @s[scores={tmp.playerAlt=75..82}] run scoreboard players set @s tmp.altitudeTemp -1
execute as @s[scores={tmp.playerAlt=83..92}] run scoreboard players set @s tmp.altitudeTemp -2
execute as @s[scores={tmp.playerAlt=93..100}] run scoreboard players set @s tmp.altitudeTemp -3
execute as @s[scores={tmp.playerAlt=101..106}] run scoreboard players set @s tmp.altitudeTemp -4
execute as @s[scores={tmp.playerAlt=107..112}] run scoreboard players set @s tmp.altitudeTemp -5
execute as @s[scores={tmp.playerAlt=113..117}] run scoreboard players set @s tmp.altitudeTemp -6
execute as @s[scores={tmp.playerAlt=118..121}] run scoreboard players set @s tmp.altitudeTemp -7
execute as @s[scores={tmp.playerAlt=122..130}] run scoreboard players set @s tmp.altitudeTemp -8
execute as @s[scores={tmp.playerAlt=131..139}] run scoreboard players set @s tmp.altitudeTemp -9
execute as @s[scores={tmp.playerAlt=140..160}] run scoreboard players set @s tmp.altitudeTemp -10
execute as @s[scores={tmp.playerAlt=161..180}] run scoreboard players set @s tmp.altitudeTemp -11
execute as @s[scores={tmp.playerAlt=181..190}] run scoreboard players set @s tmp.altitudeTemp -12
execute as @s[scores={tmp.playerAlt=191..200}] run scoreboard players set @s tmp.altitudeTemp -13
execute as @s[scores={tmp.playerAlt=201..215}] run scoreboard players set @s tmp.altitudeTemp -14
execute as @s[scores={tmp.playerAlt=216..225}] run scoreboard players set @s tmp.altitudeTemp -15
execute as @s[scores={tmp.playerAlt=226..235}] run scoreboard players set @s tmp.altitudeTemp -16
execute as @s[scores={tmp.playerAlt=236..245}] run scoreboard players set @s tmp.altitudeTemp -17
execute as @s[scores={tmp.playerAlt=246..255}] run scoreboard players set @s tmp.altitudeTemp -18
execute as @s[scores={tmp.playerAlt=256..}] run scoreboard players set @s tmp.altitudeTemp -20

execute as @s run scoreboard players operation @s tmp.totalTemp += @s tmp.altitudeTemp