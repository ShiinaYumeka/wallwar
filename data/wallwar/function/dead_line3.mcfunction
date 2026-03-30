

title @a times 10 20 10


scoreboard players set GAME time 3600
scoreboard players set GAME_PRO time 9

bossbar set gauge6 max 3600
function wallwar:system/bossbar_end

function wallwar:system/end/cast
effect clear @a wither
kill @e[type=wither,tag=event_wither_entity]
title @a title {"translate":"果实从树上落地","color":"dark_purple"}
title @a subtitle {"translate":"“蛇对人说，你不一定死”","color":"white"}

