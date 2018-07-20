execute as @s[nbt={Dimension:0b},scores={tmp.altitude=..255}] if block ~ ~ ~ #temperature:temp_calculation/sunlight positioned ~ ~1 ~ run function temperature:temp_calculation/is_exposed_to_sun
execute as @s[scores={tmp.altitude=..255}] unless block ~ ~ ~ #temperature:temp_calculation/sunlight run tag @s add tmp.altitude.no_direct_sunlight
execute as @s[nbt=!{Dimension:0b}scores={tmp.altitude=..255}] run tag @s add tmp.altitude.no_direct_sunlight
execute as @s run scoreboard players add @s tmp.altitude 1
