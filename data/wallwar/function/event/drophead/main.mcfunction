

execute store result score #killer temp at @a[tag=killer,limit=1,sort=nearest] run loot give @a[tag=killer,limit=1,sort=nearest] loot wallwar:kill3
execute unless score #killer temp matches 1.. at @a[tag=killer,limit=1,sort=nearest] run loot spawn ~ ~ ~ loot wallwar:kill3

tag @e[tag=ctp] remove event_drophead