

title @a times 10 20 10


scoreboard players set GAME time 2400
bossbar set gauge7 max 2400
scoreboard players set GAME_PRO time 8

function wallwar:system/bossbar/wither

effect clear @a poison
effect give @a[tag=FIGHT] minecraft:hunger infinite 2 true
title @a title {"translate":"全体饥饿","color":"dark_red"}
title @a subtitle {"translate":"饥饿正在吞噬你的体力……","color":"white"}
