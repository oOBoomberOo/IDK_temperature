#Hot
execute as @s[scores={tmp.heatTime=3600..,tmp.debuffMode=1,tmp.playerTemp=78..}] run function temperature:debuff/hot/soft/1
execute as @s[scores={tmp.heatTime=2400..,tmp.debuffMode=2,tmp.playerTemp=94..}] run function temperature:debuff/hot/soft/2
execute as @s[scores={tmp.heatTime=2400..,tmp.debuffMode=2,tmp.playerTemp=100..}] run function temperature:debuff/hot/soft/3

execute as @s[scores={tmp.playerTemp=85..}] run function temperature:debuff/hot/instant/1
execute as @s[scores={tmp.playerTemp=110..}] run function temperature:debuff/hot/instant/2

#Cold
execute as @s[scores={tmp.coldTime=3600..,tmp.debuffMode=1,tmp.playerTemp=..30}] run function temperature:debuff/cold/soft/1
execute as @s[scores={tmp.coldTime=1200..,tmp.debuffMode=2,tmp.playerTemp=..25}] run function temperature:debuff/cold/soft/2
execute as @s[scores={tmp.coldTime=1200..,tmp.debuffMode=3,tmp.playerTemp=..20}] run function temperature:debuff/cold/soft/2
execute as @s[scores={tmp.coldTime=1200..,tmp.debuffMode=4,tmp.playerTemp=..15}] run function temperature:debuff/cold/soft/2
execute as @s[scores={tmp.coldTime=1200..,tmp.debuffMode=5,tmp.playerTemp=..10}] run function temperature:debuff/cold/soft/2
execute as @s[scores={tmp.coldTime=1200..,tmp.debuffMode=6,tmp.playerTemp=..5}] run function temperature:debuff/cold/soft/2
execute as @s[scores={tmp.coldTime=1200..,tmp.debuffMode=7,tmp.playerTemp=..0}] run function temperature:debuff/cold/soft/2
execute as @s[scores={tmp.coldTime=1200..,tmp.debuffMode=8,tmp.playerTemp=..-5}] run function temperature:debuff/cold/soft/2

execute as @s[scores={tmp.debuffMode=3..,tmp.playerTemp=..25}] run function temperature:debuff/cold/soft/2
execute as @s[scores={tmp.debuffMode=4..,tmp.playerTemp=..20}] run function temperature:debuff/cold/soft/2
execute as @s[scores={tmp.debuffMode=5..,tmp.playerTemp=..15}] run function temperature:debuff/cold/soft/2
execute as @s[scores={tmp.debuffMode=6..,tmp.playerTemp=..10}] run function temperature:debuff/cold/soft/2
execute as @s[scores={tmp.debuffMode=7..,tmp.playerTemp=..5}] run function temperature:debuff/cold/soft/2
execute as @s[scores={tmp.debuffMode=8..,tmp.playerTemp=..0}] run function temperature:debuff/cold/soft/2
execute as @s[scores={tmp.debuffMode=9..,tmp.playerTemp=..-5}] run function temperature:debuff/cold/soft/2

execute as @s[scores={tmp.playerTemp=..20}] run function temperature:debuff/cold/instant/1
execute as @s[scores={tmp.playerTemp=..0}] run function temperature:debuff/cold/instant/2