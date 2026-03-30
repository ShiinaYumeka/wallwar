

execute as 0-0-0-0-1 at @s run summon wither_skeleton ~ 318 ~ {Tags:["new","wither_skeleton"],PersistenceRequired:true,HandItems:[{id:"stone_sword",count:1},{}],CustomNameVisible:true}
scoreboard players remove #wither_temp temp 1
execute if score #wither_temp temp matches 1.. run function wallwar:wither/summon/carrot
