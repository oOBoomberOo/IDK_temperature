execute as @s run tag @s add tmp.sky.exposed
execute as @s run tag @s remove tmp.sky.under_helmet
execute as @s run tag @s remove tmp.sky.under_cover

execute as @s unless block ~ ~1 ~ #temperature:temp_calculation/sky/sunlight run tag @s add tmp.sky.under_cover
execute as @s unless block ~ ~2 ~ #temperature:temp_calculation/sky/sunlight run tag @s add tmp.sky.under_cover
execute as @s unless block ~ ~3 ~ #temperature:temp_calculation/sky/sunlight run tag @s add tmp.sky.under_cover
execute as @s unless block ~ ~4 ~ #temperature:temp_calculation/sky/sunlight run tag @s add tmp.sky.under_cover
execute as @s unless block ~ ~5 ~ #temperature:temp_calculation/sky/sunlight run tag @s add tmp.sky.under_cover
execute as @s unless block ~ ~6 ~ #temperature:temp_calculation/sky/sunlight run tag @s add tmp.sky.under_cover
execute as @s unless block ~ ~7 ~ #temperature:temp_calculation/sky/sunlight run tag @s add tmp.sky.under_cover
execute as @s unless block ~ ~8 ~ #temperature:temp_calculation/sky/sunlight run tag @s add tmp.sky.under_cover
execute as @s unless block ~ ~9 ~ #temperature:temp_calculation/sky/sunlight run tag @s add tmp.sky.under_cover
execute as @s unless block ~ ~10 ~ #temperature:temp_calculation/sky/sunlight run tag @s add tmp.sky.under_cover
execute as @s unless block ~ ~11 ~ #temperature:temp_calculation/sky/sunlight run tag @s add tmp.sky.under_cover
execute as @s unless block ~ ~12 ~ #temperature:temp_calculation/sky/sunlight run tag @s add tmp.sky.under_cover
execute as @s unless block ~ ~13 ~ #temperature:temp_calculation/sky/sunlight run tag @s add tmp.sky.under_cover
execute as @s unless block ~ ~14 ~ #temperature:temp_calculation/sky/sunlight run tag @s add tmp.sky.under_cover
execute as @s unless block ~ ~15 ~ #temperature:temp_calculation/sky/sunlight run tag @s add tmp.sky.under_cover
execute as @s unless block ~ ~16 ~ #temperature:temp_calculation/sky/sunlight run tag @s add tmp.sky.under_cover
execute as @s unless block ~ ~17 ~ #temperature:temp_calculation/sky/sunlight run tag @s add tmp.sky.under_cover
execute as @s unless block ~ ~18 ~ #temperature:temp_calculation/sky/sunlight run tag @s add tmp.sky.under_cover
execute as @s unless block ~ ~19 ~ #temperature:temp_calculation/sky/sunlight run tag @s add tmp.sky.under_cover
execute as @s unless block ~ ~20 ~ #temperature:temp_calculation/sky/sunlight run tag @s add tmp.sky.under_cover
execute as @s unless block ~ ~21 ~ #temperature:temp_calculation/sky/sunlight run tag @s add tmp.sky.under_cover
execute as @s unless block ~ ~22 ~ #temperature:temp_calculation/sky/sunlight run tag @s add tmp.sky.under_cover
execute as @s unless block ~ ~23 ~ #temperature:temp_calculation/sky/sunlight run tag @s add tmp.sky.under_cover
execute as @s unless block ~ ~24 ~ #temperature:temp_calculation/sky/sunlight run tag @s add tmp.sky.under_cover
execute as @s unless block ~ ~25 ~ #temperature:temp_calculation/sky/sunlight run tag @s add tmp.sky.under_cover

execute as @s[nbt=!{Dimension:0}] run tag @s add tmp.sky.under_cover
execute as @s[nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet"}]}] run tag @s add tmp.sky.under_helmet
execute as @s[nbt={Inventory:[{Slot:103b,id:"minecraft:turtle_helmet"}]}] run tag @s add tmp.sky.under_helmet
execute as @s[nbt={Inventory:[{Slot:103b,id:"minecraft:chainmail_helmet"}]}] run tag @s add tmp.sky.under_helmet

execute as @s[tag=tmp.sky.under_cover] run tag @s remove tmp.sky.exposed
execute as @s[tag=tmp.sky.under_helmet] run tag @s remove tmp.sky.exposed