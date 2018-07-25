#---------Hot Debuff---------- 
execute as @s[gamemode=survival,scores={tmp.playerTemp=78..,tmp.hotTime1=2400..}] run function temperature:debuff/hot/soft/1
execute as @s[gamemode=survival,scores={tmp.playerTemp=94..,tmp.hotTime2=1800..}] run function temperature:debuff/hot/soft/2
execute as @s[gamemode=survival,scores={tmp.playerTemp=100..,tmp.hotTime2=1800..}] run function temperature:debuff/hot/soft/3

execute as @s[gamemode=survival,scores={tmp.playerTemp=85..}] run function temperature:debuff/hot/instant/1
execute as @s[gamemode=survival,scores={tmp.playerTemp=110..}] run function temperature:debuff/hot/instant/2

#--------Cold Debuff--------- 
execute as @s[gamemode=survival,scores={tmp.playerTemp=..30,tmp.coldTime1=2400..}] run function temperature:debuff/cold/soft/1
execute as @s[gamemode=survival,scores={tmp.playerTemp=..15,tmp.coldTime2=1200..}] run function temperature:debuff/cold/soft/2

execute as @s[gamemode=survival,scores={tmp.playerTemp=..24}] run function temperature:debuff/cold/instant/1
execute as @s[gamemode=survival,scores={tmp.playerTemp=..20}] run function temperature:debuff/cold/instant/2
execute as @s[gamemode=survival,scores={tmp.playerTemp=..0}] run function temperature:debuff/cold/instant/3
execute as @s[gamemode=survival,scores={tmp.playerTemp=..-10}] run function temperature:debuff/cold/instant/4
