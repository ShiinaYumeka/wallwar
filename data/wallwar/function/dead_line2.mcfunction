

title @a times 10 20 10


scoreboard players set GAME time 1800
scoreboard players set GAME_PRO time 8

bossbar set gauge6 max 1800
function wallwar:system/bossbar_dead

effect clear @a absorption
effect clear @a resistance
effect clear @a strength
effect clear @a invisibility
effect clear @a poison
title @a title {"translate":"凋零降临","color":"dark_purple"}
title @a subtitle {"translate":"你的命运已经注定……","color":"white"}
