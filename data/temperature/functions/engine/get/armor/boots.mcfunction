execute if entity @s[nbt={ArmorItems:[{}, {}, {}, {id: "minecraft:diamond_boots"}]}] run scoreboard players remove #cat.calculated.temp bb.variable 2000
execute if entity @s[nbt={ArmorItems:[{}, {}, {}, {id: "minecraft:diamond_boots"}]}] run scoreboard players remove #cat.calculated.timer bb.variable 1

function temperature:engine/get/armor/enchantment/boots