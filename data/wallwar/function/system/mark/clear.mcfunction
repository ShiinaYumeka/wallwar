

execute store result score #killer temp at @a[tag=killer,limit=1,sort=nearest] run loot give @a[tag=killer,limit=1,sort=nearest] loot wallwar:kill2
execute unless score #killer temp matches 1.. at @a[tag=killer,limit=1,sort=nearest] run loot spawn ~ ~ ~ loot wallwar:kill2

execute as @p[tag=killer] run function wallwar:system/mark/fix

tag @a remove marking_team
tellraw @a {"translate": "“君主国”已经陨落","color": "red"}