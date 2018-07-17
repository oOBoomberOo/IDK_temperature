
#Timer
scoreboard players add @a[scores={tmp.playerTemp=85..95}] tmp.playerTimer 1
execute at @a[scores={tmp.playerTimer=350..}] run scoreboard players set @p tmp.playerTimer 0

#effects
effect give @p minecraft:slowness 90 1 true
effect give @p[scores={tmp.playerTimer=349}] minecraft:nausea 6 5 true