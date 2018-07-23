execute as @s store result score @s tmp.calDebuffM run scoreboard players get @s tmp.debuffMode
execute as @s run scoreboard players set @s tmp.debuffMode 0
#Heat
execute as @s[scores={tmp.playerTemp=70..}] run scoreboard players set @s tmp.debuffMode 1
execute as @s[scores={tmp.playerTemp=83..}] run scoreboard players set @s tmp.debuffMode 2

#Cold
execute as @s[scores={tmp.playerTemp=..35}] run scoreboard players set @s tmp.debuffMode 1
execute as @s[scores={tmp.playerTemp=..25}] run scoreboard players set @s tmp.debuffMode 2
execute as @s[scores={tmp.playerTemp=..20}] run scoreboard players set @s tmp.debuffMode 3
execute as @s[scores={tmp.playerTemp=..15}] run scoreboard players set @s tmp.debuffMode 4
execute as @s[scores={tmp.playerTemp=..10}] run scoreboard players set @s tmp.debuffMode 5
execute as @s[scores={tmp.playerTemp=..5}] run scoreboard players set @s tmp.debuffMode 6
execute as @s[scores={tmp.playerTemp=..0}] run scoreboard players set @s tmp.debuffMode 7
execute as @s[scores={tmp.playerTemp=..-5}] run scoreboard players set @s tmp.debuffMode 8

execute as @s run scoreboard players operation @s tmp.calDebuffM -= @s tmp.debuffMode
execute as @s unless score @s tmp.calDebuffM matches 0 run scoreboard players set @s tmp.heatTime 0
execute as @s unless score @s tmp.calDebuffM matches 0 run scoreboard players set @s tmp.coldTime 0
execute as @s unless score @s tmp.calDebuffM matches 0 run scoreboard players set @s tmp.debuffTime 0