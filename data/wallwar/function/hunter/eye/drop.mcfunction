
scoreboard players set @s hunter_drop_eye 0
execute unless entity @e[type=item,distance=..8,nbt={Item:{components:{"minecraft:custom_data":{hunter_eye:1b}}}}] run return fail

execute unless entity @s[tag=hunter_player,team=red,gamemode=!spectator] run return fail
execute unless score #Hunter_MODE time matches 1.. run return fail
execute unless score GAME_PRO time matches 1.. run return fail
execute if score #hunter_freeze_left time matches 1.. run return run tellraw @s [{"translate":"[猎人模式] ","color":"gold"},{"translate":"冻结期间无法使用猎人之眼","color":"red"}]

function wallwar:hunter/eye/find_target
execute unless entity @a[tag=hunter_tracking_target] run tellraw @s [{"translate":"[猎人模式] ","color":"gold"},{"translate":"没有可追踪的逃者","color":"red"}]
execute unless entity @a[tag=hunter_tracking_target] run return run function wallwar:hunter/eye/cleanup

function wallwar:hunter/eye/consume
function wallwar:hunter/eye/teleport
function wallwar:hunter/eye/cleanup
