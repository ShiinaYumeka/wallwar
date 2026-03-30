


execute as 0-0-0-0-1 at @s run spawnpoint @a[team=red] ~3 ~2 ~3
execute as 0-0-0-0-1 at @s run spawnpoint @a[team=blue] ~3 ~2 ~-3
execute as 0-0-0-0-1 at @s run spawnpoint @a[team=green] ~-3 ~2 ~-3
execute as 0-0-0-0-1 at @s run spawnpoint @a[team=yellow] ~-3 ~2 ~3

execute as 0-0-0-0-1 at @s run setblock ~3 ~1 ~3 air replace
execute as 0-0-0-0-1 at @s run setblock ~-3 ~1 ~3 air replace
execute as 0-0-0-0-1 at @s run setblock ~-3 ~1 ~-3 air replace
execute as 0-0-0-0-1 at @s run setblock ~3 ~1 ~-3 air replace

execute as 0-0-0-0-1 at @s run setblock ~3 ~1 ~3 red_shulker_box{Items:[{id:"enchanting_table",Slot:0b,count:1b},{id:"sugar_cane",Slot:1b,count:8b},{id:"water_bucket",Slot:2b,count:1b},{id:"item_frame",Slot:3b,count:16b},{id:"lava_bucket",Slot:4b,count:1b},{id:"feather",Slot:5b,count:16b},{id:"red_banner",Slot:6b,count:1b}]} replace
execute as 0-0-0-0-1 at @s run setblock ~3 ~1 ~-3 light_blue_shulker_box{Items:[{id:"enchanting_table",Slot:0b,count:1b},{id:"sugar_cane",Slot:1b,count:8b},{id:"water_bucket",Slot:2b,count:1b},{id:"item_frame",Slot:3b,count:16b},{id:"lava_bucket",Slot:4b,count:1b},{id:"feather",Slot:5b,count:16b},{id:"light_blue_banner",Slot:6b,count:1b}]} replace
execute as 0-0-0-0-1 at @s run setblock ~-3 ~1 ~-3 lime_shulker_box{Items:[{id:"enchanting_table",Slot:0b,count:1b},{id:"sugar_cane",Slot:1b,count:8b},{id:"water_bucket",Slot:2b,count:1b},{id:"item_frame",Slot:3b,count:16b},{id:"lava_bucket",Slot:4b,count:1b},{id:"feather",Slot:5b,count:16b},{id:"lime_banner",Slot:6b,count:1b}]} replace
execute as 0-0-0-0-1 at @s run setblock ~-3 ~1 ~3 yellow_shulker_box{Items:[{id:"enchanting_table",Slot:0b,count:1b},{id:"sugar_cane",Slot:1b,count:8b},{id:"water_bucket",Slot:2b,count:1b},{id:"item_frame",Slot:3b,count:16b},{id:"lava_bucket",Slot:4b,count:1b},{id:"feather",Slot:5b,count:16b},{id:"yellow_banner",Slot:6b,count:1b}]} replace
