

title @a times 10 20 10


scoreboard players set GAME time 1800
bossbar set gauge5 max 1800
scoreboard players set GAME_PRO time 7

function wallwar:system/bossbar_dead

#effect give @a[tag=FIGHT] minecraft:hunger infinite 1


title @a title {"translate":"全体凋零","color":"dark_purple"}
title @a subtitle {"translate":"你的命运已经注定……","color":"white"}

