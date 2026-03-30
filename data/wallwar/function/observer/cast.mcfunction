
fill ~50 ~21 ~50 ~50 ~30 ~50 red_stained_glass destroy
fill ~50 ~21 ~-50 ~50 ~30 ~-50 light_blue_stained_glass destroy
fill ~-50 ~21 ~-50 ~-50 ~30 ~-50 lime_stained_glass destroy
fill ~-50 ~21 ~50 ~-50 ~30 ~50 yellow_stained_glass destroy

setblock ~50 ~20 ~50 red_shulker_box[facing=down]{Items:[{id:"recovery_compass",components:{"minecraft:item_name":{"translate":"追溯指针","italic": false,"color": "yellow"},"minecraft:lore":[{"translate":"丢出后使所有其他队伍玩家发光30s。","italic": false,"color": "gray"},{"translate":"*为你指名生命的道路…","italic": false,"color": "gray"}],"custom_data": {"observer":1b,"wallwar_item":1b},"max_stack_size": 64},Slot:13b,count:1b},{id:"red_banner",Slot:4b,count:1b}]} destroy
setblock ~50 ~20 ~-50 light_blue_shulker_box[facing=down]{Items:[{id:"recovery_compass",components:{"minecraft:item_name":{"translate":"追溯指针","italic": false,"color": "yellow"},"minecraft:lore":[{"translate":"丢出后使所有其他队伍玩家发光30s。","italic": false,"color": "gray"},{"translate":"*为你指名生命的道路…","italic": false,"color": "gray"}],"custom_data": {"observer":1b,"wallwar_item":1b},"max_stack_size": 64},Slot:13b,count:1b},{id:"light_blue_banner",Slot:4b,count:1b}]} destroy
setblock ~-50 ~20 ~-50 lime_shulker_box[facing=down]{Items:[{id:"recovery_compass",components:{"minecraft:item_name":{"translate":"追溯指针","italic": false,"color": "yellow"},"minecraft:lore":[{"translate":"丢出后使所有其他队伍玩家发光30s。","italic": false,"color": "gray"},{"translate":"*为你指名生命的道路…","italic": false,"color": "gray"}],"custom_data": {"observer":1b,"wallwar_item":1b},"max_stack_size": 64},Slot:13b,count:1b},{id:"lime_banner",Slot:4b,count:1b}]} destroy
setblock ~-50 ~20 ~50 yellow_shulker_box[facing=down]{Items:[{id:"recovery_compass",components:{"minecraft:item_name":{"translate":"追溯指针","italic": false,"color": "yellow"},"minecraft:lore":[{"translate":"丢出后使所有其他队伍玩家发光30s。","italic": false,"color": "gray"},{"translate":"*为你指名生命的道路…","italic": false,"color": "gray"}],"custom_data": {"observer":1b,"wallwar_item":1b},"max_stack_size": 64},Slot:13b,count:1b},{id:"yellow_banner",Slot:4b,count:1b}]} destroy

execute store result score #x temp run data get entity @s Pos[0] 1
execute store result score #y temp run data get entity @s Pos[0] 1
execute store result score #z temp run data get entity @s Pos[0] 1

scoreboard players add #Y temp 20
tellraw @a [{"translate": "[游戏]: "},{"translate":"追溯指针已经刷新在","color": "white"},{"translate": "X="},{"score":{"name": "#x","objective": "temp"},"color": "white"},{"translate": "±50 Y="},{"score":{"name": "#y","objective": "temp"},"color": "white"},{"translate": " Z="},{"score":{"name": "#z","objective": "temp"},"color": "white"},{"translate":"±50 （共计四个）"}]

