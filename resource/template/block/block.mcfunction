<setup>

<block>

scoreboard players set #cat.block.temp.stack bb.variable 1000

<calculation>

scoreboard players operation #cat.calculated.timer bb.variable += #cat.block.<id>.timer bb.config
