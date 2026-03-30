
forceload add ~ ~ ~ ~

setblock ^ ^1 ^-0.5 skeleton_skull replace
setblock ^ ^-1 ^-0.5 skeleton_skull replace
setblock ^1 ^ ^-0.5 skeleton_skull replace
setblock ^1 ^1 ^-0.5 skeleton_skull replace
setblock ^1 ^-1 ^-0.5 skeleton_skull replace
setblock ^-1 ^ ^-0.5 skeleton_skull replace
setblock ^-1 ^1 ^-0.5 skeleton_skull replace
setblock ^-1 ^-1 ^-0.5 skeleton_skull replace

tellraw @a {"translate":"====================","color":"white"}
tellraw @a [{"translate": "玩家","color":"light_purple"},{"selector": "@p[gamemode=!spectator,team=!sp]"},{"translate":"建造出了京观","color":"light_purple"}]
tellraw @a [{"translate":"京，谓高丘也；观，阙型也。古人杀贼，战捷陈尸，必筑京观，以为藏尸之地。 ---张岱《夜航船》","color":"gray"}]
tellraw @a {"translate":"====================","color":"white"}
playsound block.end_portal.spawn player @a ~ ~ ~ 1 1 1
particle minecraft:dragon_breath ~ ~ ~ 0 0 0 1 300 normal
tag @s add building_player
scoreboard players add GAME time 14400

scoreboard players operation @s tid = @p[gamemode=!spectator,team=!sp] tid
