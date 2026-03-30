
execute if entity @e[tag=ctp,tag=event_drophead] run return run function wallwar:event/drophead/main
execute if entity @s[tag=marking_team] run return run function wallwar:system/mark/clear

execute store result score #killer temp at @a[tag=killer,limit=1,sort=nearest] run loot give @a[tag=killer,limit=1,sort=nearest] loot wallwar:kill
execute unless score #killer temp matches 1.. at @a[tag=killer,limit=1,sort=nearest] run loot spawn ~ ~ ~ loot wallwar:kill

scoreboard players add @a[tag=killer] kill_player 1
