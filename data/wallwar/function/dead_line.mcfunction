

title @a times 10 20 10


scoreboard players set GAME time 2400
bossbar set gauge5 max 2400
scoreboard players set GAME_PRO time 7

function wallwar:system/bossbar_dead

effect clear @a poison
function wallwar:team_buff/main

title @a title {"translate":"团队增益","color":"gold"}
title @a subtitle {"translate":"团结即是力量……","color":"white"}
