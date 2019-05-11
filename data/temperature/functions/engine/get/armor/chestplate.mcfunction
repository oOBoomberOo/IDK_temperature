execute if entity @s[nbt={ArmorItems:[{}, {}, {}, {id: "minecraft:diamond_chestplate"}]}] run scoreboard players remove #cat.calculated.temp bb.variable 5000
execute if entity @s[nbt={ArmorItems:[{}, {}, {}, {id: "minecraft:diamond_chestplate"}]}] run scoreboard players remove #cat.calculated.timer bb.variable 1

function temperature:engine/get/armor/enchantment/chestplate