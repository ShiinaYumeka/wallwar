execute unless score #ww_phase time matches 2 run return 0
execute unless entity @s[tag=ww_captain,tag=ww_turn] run return 0
execute unless score @s ww_terrain matches 1..4 run return run function wallwar:system/random_teamup/terrain/retry
execute if score @s ww_terrain matches 4 if entity @a[tag=ww_captain,scores={tid=4}] run return run function wallwar:system/random_teamup/terrain/retry
execute if score @s ww_terrain matches 3 if entity @a[tag=ww_captain,scores={tid=3}] run return run function wallwar:system/random_teamup/terrain/retry
execute if score @s ww_terrain matches 1 if entity @a[tag=ww_captain,scores={tid=1}] run return run function wallwar:system/random_teamup/terrain/retry
execute if score @s ww_terrain matches 2 if entity @a[tag=ww_captain,scores={tid=2}] run return run function wallwar:system/random_teamup/terrain/retry
scoreboard players operation @s tid = @s ww_terrain
function wallwar:system/team/join
tag @s add leader
tag @s remove ww_turn
tellraw @a [{selector:"@s"},{text:" 已锁定地形（队伍编号 "},{score:{name:"@s",objective:"tid"}},{text:"）。"}]
scoreboard players set @s ww_terrain 0
scoreboard players add #ww_pick time 1
execute if score #ww_pick time matches ..4 run return run function wallwar:system/random_teamup/terrain/next_terrain
function wallwar:system/random_teamup/terrain/players
