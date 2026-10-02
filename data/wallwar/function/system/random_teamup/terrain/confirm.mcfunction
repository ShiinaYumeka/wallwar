execute unless score #ww_phase time matches 1 run return 0
execute unless entity @s[tag=ww_captain,tag=!ww_confirmed] run return 0
tag @s add ww_confirmed
tellraw @a [{selector:"@s"},{text:" 已确认担任队长。",color:"green"}]
execute unless entity @a[tag=ww_captain,tag=!ww_confirmed] run function wallwar:system/random_teamup/terrain/random_order
