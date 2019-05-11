# Validating scoreboard

# It doesn't make sense for "timerTemp" to have negative value!
execute if score @s cat.timerTemp matches ..0 run scoreboard players operation @s cat.timerTemp = #cat.timer.lower_limit bb.config