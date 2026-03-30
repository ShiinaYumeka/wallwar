
title @s title {"translate": "高空空气稀薄！"}
title @s subtitle {"translate": "请迅速返回陆地！"}
execute unless entity @s[team=!sp,gamemode=!spectator,y=203,dy=110] run return fail
effect give @s instant_damage 20 5
effect give @s weakness infinite 9
effect give @s slowness infinite 9
effect give @s mining_fatigue infinite 9
effect give @s blindness infinite 9
