<block_detection>
execute as @s[tag=tmp.block.<file_id>] run scoreboard players set @s tmp.blockTmp <temperature>
execute as @s[tag=tmp.block.<file_id>] run scoreboard players operation @s tmp.tempBlock += @s tmp.blockTmp
scoreboard players set @s tmp.blockTmp 0
tag @s remove tmp.block.<file_id>