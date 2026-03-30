
advancement grant @s only wallwar/misc/ender_delete
clear @a enchanted_golden_apple[custom_data~{"death_fight_end":1b}]
kill @e[nbt={Item:{components:{"minecraft:custom_data":{death_fight_end:1b}}}}]

execute if items entity @s enderchest.* enchanted_golden_apple[custom_data~{"death_fight_end":1b}] run item replace entity @s enderchest.0 with air
execute if items entity @s enderchest.1 enchanted_golden_apple[custom_data~{"death_fight_end":1b}] run item replace entity @s enderchest.1 with air
execute if items entity @s enderchest.2 enchanted_golden_apple[custom_data~{"death_fight_end":1b}] run item replace entity @s enderchest.2 with air
execute if items entity @s enderchest.3 enchanted_golden_apple[custom_data~{"death_fight_end":1b}] run item replace entity @s enderchest.3 with air
execute if items entity @s enderchest.8 enchanted_golden_apple[custom_data~{"death_fight_end":1b}] run item replace entity @s enderchest.8 with air
execute if items entity @s enderchest.26 enchanted_golden_apple[custom_data~{"death_fight_end":1b}] run item replace entity @s enderchest.26 with air

title @a times 10 20 10


scoreboard players set GAME time 99999
scoreboard players set GAME_PRO time 10

function wallwar:system/bossbar_end

#function wallwar:system/end/cast

title @a title {"translate":"万物凋零！","color":"dark_purple"}
title @a subtitle {"translate":"是时候结束了……","color":"white"}

