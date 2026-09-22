
summon wither_skeleton ~1 ~ ~1 {Tags:["new","wither_skeleton"],PersistenceRequired:1b,equipment:{mainhand:{id:"stone_sword",count:1}}}
summon wither_skeleton ~-1 ~ ~1 {Tags:["new","wither_skeleton"],PersistenceRequired:1b,equipment:{mainhand:{id:"stone_sword",count:1}}}
summon wither_skeleton ~ ~ ~ {Tags:["new","wither_skeleton"],PersistenceRequired:1b,equipment:{mainhand:{id:"stone_sword",count:1}}}
summon wither_skeleton ~1 ~ ~-1 {Tags:["new","wither_skeleton"],PersistenceRequired:1b,equipment:{mainhand:{id:"stone_sword",count:1}}}
summon wither_skeleton ~-1 ~ ~-1 {Tags:["new","wither_skeleton"],PersistenceRequired:1b,equipment:{mainhand:{id:"stone_sword",count:1}}}

spreadplayers ~ ~ 5 20 false @e[type=wither_skeleton,tag=new]
tag @e[type=wither_skeleton,tag=new] remove new
