effect give @s slowness 60 0 true

scoreboard players add @s hot.nauseaTime1 1
execute as @s[scores={hot.nauseaTime1=400..}] run effect give @s nausea 6 0 true
execute as @s[scores={hot.nauseaTime1=400..}] run scoreboard players set @s hot.nauseaTime1 0