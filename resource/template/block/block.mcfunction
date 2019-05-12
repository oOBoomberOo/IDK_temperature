scoreboard players set #cat.block.count bb.variable 0

<block>

scoreboard players operation #cat.block.temp bb.variable = #cat.block.<id>.temp bb.config
scoreboard players operation #cat.block.temp bb.variable *= #cat.block.count bb.variable
scoreboard players operation #cat.calculated.temp bb.variable += #cat.block.temp bb.variable

scoreboard players operation #cat.calculated.timer bb.variable += #cat.block.<id>.timer bb.config
