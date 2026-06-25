

title @a times 10 20 10


scoreboard players set GAME time 1200
bossbar set gauge6 max 1200
scoreboard players set GAME_PRO time 7

function wallwar:system/bossbar/hunger

effect clear @a conduit_power
effect clear @a invisibility
effect clear @a resistance
title @a title {"translate":"全体中毒","color":"dark_red"}
title @a subtitle {"translate":"没时间可以浪费了……","color":"white"}
