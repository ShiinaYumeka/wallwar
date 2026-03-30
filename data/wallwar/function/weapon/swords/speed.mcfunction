
scoreboard players reset @s weapon_haku
scoreboard players reset @s weapon_rokan


execute unless entity @s[level=10..] run return run tellraw @s {"translate": "你的等级不足"}

effect give @s speed 2 5 true
xp add @s -1 levels
