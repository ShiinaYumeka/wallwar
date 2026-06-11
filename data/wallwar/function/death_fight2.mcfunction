

title @a times 10 20 10


scoreboard players set GAME time 2400
bossbar set gauge5 max 2400
scoreboard players set GAME_PRO time 6

function wallwar:system/bossbar_dead

#effect give @a[tag=FIGHT] minecraft:hunger infinite 1

title @a title {"translate":"饥饿增强","color":"dark_red"}
title @a subtitle {"translate":"终点早已在我掌中刻好…","color":"white"}

