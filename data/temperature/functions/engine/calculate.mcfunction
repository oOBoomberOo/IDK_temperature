# Make a lot of sense if you installed "fira code" font

# T = @s cat.totalTemp
# t = totalTemp - targetTemp
# f = #cat.temp.factor bb.config
scoreboard players operation #cat.totalTemp bb.calculation = @s cat.totalTemp
scoreboard players operation #cat.targetTemp bb.calculation = @s cat.targetTemp
scoreboard players operation #cat.totalTemp bb.calculation -= #cat.targetTemp bb.calculation

scoreboard players operation #-cat.totalTemp bb.calculation = #cat.totalTemp bb.calculation
scoreboard players operation #-cat.totalTemp bb.calculation *= #-1 bb.variable
scoreboard players operation #+cat.temp.factor bb.calculation = #cat.temp.factor bb.config
scoreboard players operation #-cat.temp.factor bb.calculation = #+cat.temp.factor bb.calculation
scoreboard players operation #-cat.temp.factor bb.calculation *= #-1 bb.variable

# -f < -t && t < f -> Tᵣ = Tᵢ - t
execute if score #-cat.temp.factor bb.calculation < #-cat.totalTemp bb.calculation if score #cat.totalTemp bb.calculation < #+cat.temp.factor bb.calculation run scoreboard players operation @s cat.totalTemp -= #cat.totalTemp bb.calculation

# t <= -f -> Tᵣ = Tᵢ + f
execute if score #cat.totalTemp bb.calculation <= #-cat.temp.factor bb.calculation run scoreboard players operation @s cat.totalTemp += #cat.temp.factor bb.config

# t >= f -> Tᵣ = Tᵢ - f
execute if score #cat.totalTemp bb.calculation >= #+cat.temp.factor bb.calculation run scoreboard players operation @s cat.totalTemp -= #cat.temp.factor bb.config