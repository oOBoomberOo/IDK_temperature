scoreboard players set #cat.calculated.temp bb.variable 0
scoreboard players set #cat.calculated.timer bb.variable 0

summon armor_stand ~ ~ ~ {Tags: ["temperature.armor.marker"], NoGravity: 1b, Marker: 1b, Invisible: 1b, Silent: 1b, Small: 1b}

data modify entity @e[type=armor_stand, tag=temperature.armor.marker, limit=1] ArmorItems[3] set from entity @s Inventory[{Slot: 103b}]
execute as @e[type=armor_stand, tag=temperature.armor.marker] at @s run function temperature:engine/get/armor/helmet

data modify entity @e[type=armor_stand, tag=temperature.armor.marker, limit=1] ArmorItems[3] set from entity @s Inventory[{Slot: 102b}]
execute as @e[type=armor_stand, tag=temperature.armor.marker] at @s run function temperature:engine/get/armor/chestplate

data modify entity @e[type=armor_stand, tag=temperature.armor.marker, limit=1] ArmorItems[3] set from entity @s Inventory[{Slot: 101b}]
execute as @e[type=armor_stand, tag=temperature.armor.marker] at @s run function temperature:engine/get/armor/leggings

data modify entity @e[type=armor_stand, tag=temperature.armor.marker, limit=1] ArmorItems[3] set from entity @s Inventory[{Slot: 100b}]
execute as @e[type=armor_stand, tag=temperature.armor.marker] at @s run function temperature:engine/get/armor/boots

kill @e[type=armor_stand, tag=temperature.armor.marker]