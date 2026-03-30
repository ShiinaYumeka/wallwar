

scoreboard players operation #wither_skill_explode temp = @s time
scoreboard players operation #wither_skill_explode temp /= 20 const


execute if entity @e[tag=wither,team=red] run tellraw @a [{"translate": "<声音> 【毁灭】倒计时：","bold": true,"color": "gray"},{"score":{"name": "#wither_skill_explode","objective": "temp"}},{"translate": " 锁定目标：","bold": true,"color": "gray"},{"selector": "@p[team=!red,team=!sp,gamemode=!spectator,tag=FIGHT]"}]
execute if entity @e[tag=wither,team=blue] run tellraw @a [{"translate": "<声音> 【毁灭】倒计时：","bold": true,"color": "gray"},{"score":{"name": "#wither_skill_explode","objective": "temp"}},{"translate": " 锁定目标：","bold": true,"color": "gray"},{"selector": "@p[team=!blue,team=!sp,gamemode=!spectator,tag=FIGHT]"}]
execute if entity @e[tag=wither,team=yellow] run tellraw @a [{"translate": "<声音> 【毁灭】倒计时：","bold": true,"color": "gray"},{"score":{"name": "#wither_skill_explode","objective": "temp"}},{"translate": " 锁定目标：","bold": true,"color": "gray"},{"selector": "@p[team=!yellow,team=!sp,gamemode=!spectator,tag=FIGHT]"}]
execute if entity @e[tag=wither,team=green] run tellraw @a [{"translate": "<声音> 【毁灭】倒计时：","bold": true,"color": "gray"},{"score":{"name": "#wither_skill_explode","objective": "temp"}},{"translate": " 锁定目标：","bold": true,"color": "gray"},{"selector": "@p[team=!green,team=!sp,gamemode=!spectator,tag=FIGHT]"}]
execute if entity @e[tag=wither,team=wither] run tellraw @a [{"translate": "<声音> 【毁灭】倒计时：","bold": true,"color": "gray"},{"score":{"name": "#wither_skill_explode","objective": "temp"}},{"translate": " 锁定目标：","bold": true,"color": "gray"},{"selector": "@p[team=!wither,team=!sp,gamemode=!spectator,tag=FIGHT]"}]

