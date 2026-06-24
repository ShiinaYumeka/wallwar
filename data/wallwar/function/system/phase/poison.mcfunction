

title @a times 10 20 10


scoreboard players set GAME time 2400
bossbar set gauge6 max 2400
scoreboard players set GAME_PRO time 7

function wallwar:system/bossbar/wither

#effect give @a[tag=FIGHT] minecraft:hunger infinite 1

effect clear @a absorption
effect clear @a resistance
effect clear @a strength
effect clear @a conduit_power
effect clear @a invisibility
effect clear @a poison
title @a title {"translate":"全体中毒","color":"dark_red"}
title @a subtitle {"translate":"没时间可以浪费了……","color":"white"}

