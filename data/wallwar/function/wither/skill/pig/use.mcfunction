
title @a title {"translate": "三牲祭","bold": true,"color": "gray"}
scoreboard players reset #wither_skill_pig time

execute as @e[tag=wither_skill_pig_entity] at @s run function wallwar:wither/skill/pig/cast

summon sheep ~ 318 ~ {Tags:["new","wither_skill_pig_entity"],PersistenceRequired:true,CustomNameVisible:true}
summon sheep ~ 318 ~ {Tags:["new","wither_skill_pig_entity"],PersistenceRequired:true,CustomNameVisible:true}
summon sheep ~ 318 ~ {Tags:["new","wither_skill_pig_entity"],PersistenceRequired:true,CustomNameVisible:true}
summon sheep ~ 318 ~ {Tags:["new","wither_skill_pig_entity"],PersistenceRequired:true,CustomNameVisible:true}
summon cow ~ 318 ~ {Tags:["new","wither_skill_pig_entity"],PersistenceRequired:true,CustomNameVisible:true}
summon cow ~ 318 ~ {Tags:["new","wither_skill_pig_entity"],PersistenceRequired:true,CustomNameVisible:true}
summon cow ~ 318 ~ {Tags:["new","wither_skill_pig_entity"],PersistenceRequired:true,CustomNameVisible:true}
summon cow ~ 318 ~ {Tags:["new","wither_skill_pig_entity"],PersistenceRequired:true,CustomNameVisible:true}
summon pig ~ 318 ~ {Tags:["new","wither_skill_pig_entity"],PersistenceRequired:true,CustomNameVisible:true}
summon pig ~ 318 ~ {Tags:["new","wither_skill_pig_entity"],PersistenceRequired:true,CustomNameVisible:true}
summon pig ~ 318 ~ {Tags:["new","wither_skill_pig_entity"],PersistenceRequired:true,CustomNameVisible:true}
summon pig ~ 318 ~ {Tags:["new","wither_skill_pig_entity"],PersistenceRequired:true,CustomNameVisible:true}

scoreboard players operation @e[tag=new] tid = @s tid
execute as @e[tag=new] run function wallwar:system/team/join

spreadplayers ~ ~ 2 15 under 315 false @e[tag=new]

tag @e[tag=new] remove new