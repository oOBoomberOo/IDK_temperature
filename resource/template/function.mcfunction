scoreboard players set #cat.biome.temp bb.variable <temperature>
scoreboard players set #cat.biome.uid bb.variable <uid>
scoreboard players set #cat.biome.time_multiplier bb.variable <multiplier>
function temperature:engine/biome/handler
advancement revoke @s from temperature:biome/root