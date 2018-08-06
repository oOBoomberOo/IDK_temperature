tag @s remove temperature.metal_armor

tag @s add temperature.player.warming
tag @s add temperature.player.cooling

tag @s[tag=temperature.metal_armor.1] add temperature.metal_armor
tag @s[tag=temperature.metal_armor.2] add temperature.metal_armor
tag @s[tag=temperature.metal_armor.3] add temperature.metal_armor
tag @s[tag=temperature.metal_armor.4] add temperature.metal_armor

tag @s[nbt={ActiveEffects:[{Id:12b}]}] remove temperature.player.warming

execute as @s if score @s tmp.playerTemp > @s tmp.totalTemp run tag @s remove temperature.player.warming
execute as @s if score @s tmp.playerTemp < @s tmp.totalTemp run tag @s remove temperature.player.cooling
execute as @s if score @s tmp.playerTemp = @s tmp.totalTemp run tag @s remove temperature.player.warming
execute as @s if score @s tmp.playerTemp = @s tmp.totalTemp run tag @s remove temperature.player.cooling

execute as @s[tag=!temperature.metal_armor,tag=temperature.player.warming] run function temperature:player/temperature/warming
execute as @s[tag=!temperature.metal_armor,tag=temperature.player.cooling] run function temperature:player/temperature/cooling

execute as @s[tag=temperature.metal_armor] run scoreboard players add @s tmp.metalTemp 1

execute as @s[tag=!temperature.metal_armor] run scoreboard players set @s tmp.metalTemp 0
execute as @s[tag=!temperature.player.warming,tag=!temperature.player.cooling] run scoreboard players set @s tmp.metalTemp 0

execute as @s[tag=temperature.metal_armor,tag=temperature.player.warming,tag=temperature.player.hot] run function temperature:player/temperature/warming
execute as @s[tag=temperature.metal_armor,tag=temperature.player.cooling,tag=temperature.player.hot] if score @s tmp.metalTemp >= #metal_armor_temperature_rate tmp.variable run function temperature:player/temperature/cooling
execute as @s[tag=temperature.metal_armor,tag=temperature.player.warming,tag=temperature.player.cold] if score @s tmp.metalTemp >= #metal_armor_temperature_rate tmp.variable run function temperature:player/temperature/warming
execute as @s[tag=temperature.metal_armor,tag=temperature.player.cooling,tag=temperature.player.cold] run function temperature:player/temperature/cooling

execute as @s[tag=temperature.metal_armor,tag=temperature.player.warming,tag=!temperature.player.hot,tag=!temperature.player.cold] run function temperature:player/temperature/warming
execute as @s[tag=temperature.metal_armor,tag=temperature.player.cooling,tag=!temperature.player.hot,tag=!temperature.player.cold] run function temperature:player/temperature/warming

scoreboard players set @s tmp.tempSpeed 0