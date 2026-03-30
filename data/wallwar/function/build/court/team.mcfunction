
scoreboard players set @s tid 0
scoreboard players operation @s tid = @n[type=item_frame,distance=..2.5,nbt={Item:{components:{"minecraft:custom_data":{building_update_team:1b}}}}] tid


execute if score build_court tid = @s tid run return run function wallwar:system/display/court

scoreboard players operation build_court tid = @s tid

function wallwar:system/display/court

execute if score @s tid matches 0 run tellraw @a [{"translate": "[提示]: "},{"selector":"@p[gamemode=!spectator,team=!sp]"},{"translate":"使 裁判法庭 变为无人占领状态！"}]
execute if score @s tid matches 1.. run tellraw @a [{"translate": "[提示]: "},{"selector":"@p[gamemode=!spectator,team=!sp]"},{"translate":"占领了 裁判法庭 ！"}]
