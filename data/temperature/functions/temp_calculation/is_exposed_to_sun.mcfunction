execute as @s run scoreboard players add @s tmp.altitude 1
execute as @s[nbt={Dimension:0},scores={tmp.altitude=..255}] positioned ~ ~ ~ if block ~ ~1 ~ #temperature:temp_calculation/sunlight positioned ~ ~1 ~ run function temperature:temp_calculation/is_exposed_to_sun
execute as @s[scores={tmp.altitude=..255}] unless block ~ ~1 ~ #temperature:temp_calculation/sunlight run tag @s add tmp.altitude.no_direct_sunlight
execute as @s[nbt=!{Dimension:0}] run tag @s add tmp.altitude.no_direct_sunlight
execute as @s[nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet"}]}] run tag @s add tmp.altitude.no_direct_sunlight
execute as @s[nbt={Inventory:[{Slot:103b,id:"minecraft:turtle_helmet"}]}] run tag @s add tmp.altitude.no_direct_sunlight
execute as @s[nbt={Inventory:[{Slot:103b,id:"minecraft:chainmail_helmet"}]}] run tag @s add tmp.altitude.no_direct_sunlight
