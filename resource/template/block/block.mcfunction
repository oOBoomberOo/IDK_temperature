<temp setup>

<block>

scoreboard players set #cat.block.temp.stack bb.variable 1000

<temp calculation>

scoreboard players operation #cat.calculated.timer bb.variable += #cat.block.<id>.timer bb.config
