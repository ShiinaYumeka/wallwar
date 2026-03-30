

title @a times 10 20 10


scoreboard players set GAME time 1800
bossbar set gauge4 max 1800
scoreboard players set GAME_PRO time 6

function wallwar:system/bossbar_hunger

#effect give @a[tag=FIGHT] minecraft:hunger infinite 1

title @a title {"translate":"全体中毒","color":"dark_red"}
title @a subtitle {"translate":"没时间可以浪费了……","color":"white"}

