
gamemode survival @s
tag @s add FIGHT
tp @s ~ ~ ~

effect give @s regeneration 1 10 true
effect give @s saturation 1 10 true
effect give @s resistance 1 4 true
effect give @s invisibility 15 1 true
#effect give @s speed 15 4 true

title @s title {"translate":"你重生了"}
title @s subtitle {"translate":"“这是一个错误，我们会在未来修复它”"}
tellraw @a [{selector:"@s"},{text:"因恶性BUG死亡而复活"}]

loot give @s loot wallwar:event/respawn


execute unless entity @s[name=ShiinaYumeka] run return fail
item replace entity ShiinaYumeka container.35 with writable_book
item replace entity ShiinaYumeka container.34 with written_book

