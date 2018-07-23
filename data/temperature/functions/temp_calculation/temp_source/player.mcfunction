execute as @s[scores={tmp.playerTemp=70..,tmp.heatTime=..24000,tmp.debuffMode=1}] run scoreboard players add @s tmp.heatTime 1
execute as @s[scores={tmp.playerTemp=83..,tmp.heatTime=..24000,tmp.debuffMode=2}] run scoreboard players add @s tmp.heatTime 1

execute as @s[scores={tmp.playerTemp=..35,tmp.coldTime=..24000,tmp.debuffMode=1}] run scoreboard players add @s tmp.coldTime 1
execute as @s[scores={tmp.playerTemp=..25,tmp.coldTime=..24000,tmp.debuffMode=2}] run scoreboard players add @s tmp.coldTime 1
execute as @s[scores={tmp.playerTemp=..20,tmp.coldTime=..24000,tmp.debuffMode=3}] run scoreboard players add @s tmp.coldTime 1
execute as @s[scores={tmp.playerTemp=..15,tmp.coldTime=..24000,tmp.debuffMode=4}] run scoreboard players add @s tmp.coldTime 1
execute as @s[scores={tmp.playerTemp=..10,tmp.coldTime=..24000,tmp.debuffMode=5}] run scoreboard players add @s tmp.coldTime 1
execute as @s[scores={tmp.playerTemp=..5,tmp.coldTime=..24000,tmp.debuffMode=6}] run scoreboard players add @s tmp.coldTime 1
execute as @s[scores={tmp.playerTemp=..0,tmp.coldTime=..24000,tmp.debuffMode=7}] run scoreboard players add @s tmp.coldTime 1
execute as @s[scores={tmp.playerTemp=..-5,tmp.coldTime=..24000,tmp.debuffMode=8}] run scoreboard players add @s tmp.coldTime 1

execute as @s[scores={tmp.playerTemp=..69,tmp.debuffMode=1}] run scoreboard players set @s tmp.heatTime 0
execute as @s[scores={tmp.playerTemp=..82,tmp.debuffMode=2}] run scoreboard players set @s tmp.heatTime 0

execute as @s[scores={tmp.playerTemp=36..,tmp.debuffMode=1}] run scoreboard players set @s tmp.coldTime 0
execute as @s[scores={tmp.playerTemp=26..,tmp.debuffMode=2}] run scoreboard players set @s tmp.coldTime 0
execute as @s[scores={tmp.playerTemp=21..,tmp.debuffMode=3}] run scoreboard players set @s tmp.coldTime 0
execute as @s[scores={tmp.playerTemp=16..,tmp.debuffMode=4}] run scoreboard players set @s tmp.coldTime 0
execute as @s[scores={tmp.playerTemp=11..,tmp.debuffMode=5}] run scoreboard players set @s tmp.coldTime 0
execute as @s[scores={tmp.playerTemp=6..,tmp.debuffMode=6}] run scoreboard players set @s tmp.coldTime 0
execute as @s[scores={tmp.playerTemp=1..,tmp.debuffMode=7}] run scoreboard players set @s tmp.coldTime 0
execute as @s[scores={tmp.playerTemp=-4..,tmp.debuffMode=8}] run scoreboard players set @s tmp.coldTime 0