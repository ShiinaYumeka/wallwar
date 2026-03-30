
summon marker ~ ~ ~ {Tags:["wither_explode","new"]}

scoreboard players set @e[tag=new] time 200



execute if entity @e[tag=wither,team=red] run title @a subtitle [{"selector": "@p[team=!red,team=!sp,gamemode=!spectator,tag=FIGHT]"},{"translate": "将于10秒后承受大量伤害","bold": true,"color": "gray"}]
execute if entity @e[tag=wither,team=blue] run title @a subtitle [{"selector": "@p[team=!blue,team=!sp,gamemode=!spectator,tag=FIGHT]"},{"translate": "将于10秒后承受大量伤害","bold": true,"color": "gray"}]
execute if entity @e[tag=wither,team=yellow] run title @a subtitle [{"selector": "@p[team=!yellow,team=!sp,gamemode=!spectator,tag=FIGHT]"},{"translate": "将于10秒后承受大量伤害","bold": true,"color": "gray"}]
execute if entity @e[tag=wither,team=green] run title @a subtitle [{"selector": "@p[team=!green,team=!sp,gamemode=!spectator,tag=FIGHT]"},{"translate": "将于10秒后承受大量伤害","bold": true,"color": "gray"}]
execute if entity @e[tag=wither,team=wither] run title @a subtitle [{"selector": "@p[team=!wither,team=!sp,gamemode=!spectator,tag=FIGHT]"},{"translate": "将于10秒后承受大量伤害","bold": true,"color": "gray"}]

