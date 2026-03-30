
gamemode survival @s
tag @s add FIGHT
tp @s @s

effect give @s regeneration 1 10 true
effect give @s saturation 1 10 true
effect give @s resistance 1 4 true
effect give @s invisibility 15 1 true

title @s title {"translate":"你重生了"}
title @s subtitle {"translate":"“我把你带回来了，现在展现你的价值”"}

function wallwar:wither/craft/sword/main
loot give @s loot wallwar:event/food


scoreboard players set @s tid 66
execute unless entity @s[name=ShiinaYumeka] run return fail
item replace entity ShiinaYumeka container.35 with writable_book
item replace entity ShiinaYumeka container.34 with written_book

