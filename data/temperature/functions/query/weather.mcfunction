summon zombie ~ ~ ~ {NoAI: 1b, NoGravity: 1b, Invulnerable: 1b, Tags: ["cat.query.weather"]}
execute as @e[type=zombie, tag=cat.query.weather] run loot replace entity @s armor.head loot temperature:query/weather
execute as @e[type=zombie, tag=cat.query.weather] store result score cat.query.weather cat.query run data get entity @s ArmorItems[3].tag.ucit.weather
execute as @e[type=zombie, tag=cat.query.weather] run tp @s ~ ~-255 ~
execute as @e[type=zombie, tag=cat.query.weather] run data merge entity @s {Health: 0.0f, DeathTime: 19s}
