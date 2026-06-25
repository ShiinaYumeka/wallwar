

title @a times 10 20 10


scoreboard players set GAME time 3600
scoreboard players set GAME_PRO time 10

bossbar set gauge8 max 3600
function wallwar:system/bossbar/apple

function wallwar:system/end/cast
effect clear @a wither
effect clear @a poison
effect clear @a hunger
kill @e[type=wither,tag=event_wither_entity]
title @a title {"translate":"果实从树上落地","color":"dark_purple"}
title @a subtitle {"translate":"“蛇对人说，你不一定死。”","color":"white"}
