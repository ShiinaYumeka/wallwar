

title @a times 10 20 10


scoreboard players set GAME time 1200
bossbar set gauge5 max 1200
scoreboard players set GAME_PRO time 7

function wallwar:system/bossbar_dead

#effect give @a[tag=FIGHT] minecraft:hunger infinite 1


title @a title {"translate":"中毒增强","color":"dark_red"}
title @a subtitle {"translate":"活下去……","color":"white"}

