

title @a times 10 20 10


scoreboard players set GAME time 1800
scoreboard players set GAME_PRO time 8

bossbar set gauge6 max 1800
function wallwar:system/bossbar_end

effect clear @a poison
title @a title {"translate":"全体凋零","color":"dark_purple"}
title @a subtitle {"translate":"你的命运已经注定……","color":"white"}


execute if score DeathFight time matches 1..10 at 0-0-0-0-1 positioned ~ 295 ~ run setblock ~ ~ ~ command_block{Command:"say 激活这个命令方块并不会提前刷新伊甸之果"} destroy
execute if score DeathFight time matches 11..20 at 0-0-0-0-1 positioned ~ 306 ~ run setblock ~ ~ ~ command_block{Command:"say 激活这个命令方块并不会提前刷新伊甸之果"} destroy
execute if score DeathFight time matches 21..30 at 0-0-0-0-1 positioned ~ 275 ~ run setblock ~ ~ ~ command_block{Command:"say 激活这个命令方块并不会提前刷新伊甸之果"} destroy
execute if score DeathFight time matches 31..40 at 0-0-0-0-1 positioned ~ 300 ~ run setblock ~ ~ ~ command_block{Command:"say 激活这个命令方块并不会提前刷新伊甸之果"} destroy
execute if score DeathFight time matches 41..50 at 0-0-0-0-1 positioned ~ 278 ~ run setblock ~ ~ ~ command_block{Command:"say 激活这个命令方块并不会提前刷新伊甸之果"} destroy
execute if score DeathFight time matches 51..60 at 0-0-0-0-1 positioned ~ 312 ~ run setblock ~ ~ ~ command_block{Command:"say 激活这个命令方块并不会提前刷新伊甸之果"} destroy
execute if score DeathFight time matches -1 at 0-0-0-0-1 positioned ~ 309 ~ run setblock ~ ~ ~ command_block{Command:"say 激活这个命令方块并不会提前刷新伊甸之果"} destroy