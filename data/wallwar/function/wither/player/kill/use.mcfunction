

effect clear @s

effect give @s resistance 1 4 true
effect give @s absorption 60 0 true
effect give @s regeneration 5 1 true
effect give @s instant_health 1 0 true
effect give @s speed 3 2 true
effect give @s[tag=!no_nightvision] night_vision infinite 0 true

execute at @s run playsound item.totem.use player @a ~ ~ ~
execute at @s run particle totem_of_undying ~ ~1 ~ 0 0 0 1 200 force

summon wither_skeleton ~ 318 ~ {Tags:["new"],PersistenceRequired:true,HandItems:[{id:"stone_sword",count:1},{}],CustomNameVisible:true}
execute if entity @s[team=red] run team join red @e[tag=new]
execute if entity @s[team=yellow] run team join yellow @e[tag=new]
execute if entity @s[team=green] run team join green @e[tag=new]
execute if entity @s[team=blue] run team join blue @e[tag=new]
tag @e[tag=new] remove new

function wallwar:wither/player/hp/par