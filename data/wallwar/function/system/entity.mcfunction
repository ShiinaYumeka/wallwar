

execute if entity @s[type=item,nbt={Item:{components:{"minecraft:custom_data":{wallwar_item:1b}}}}] run function wallwar:main_item
execute if entity @s[type=snowball,nbt={Item:{components:{"minecraft:custom_data":{is_snowball:1b}}}}] run function wallwar:snowball/cast
execute if entity @s[type=snowball,nbt={Item:{components:{"minecraft:custom_data":{is_snowball:2b}}}}] run function wallwar:snowball/cast2
execute if entity @s[type=snowball,nbt={Item:{components:{"minecraft:custom_data":{is_snowball:3b}}}}] run function wallwar:snowball/cast3

execute if entity @s[type=tnt_minecart] run function wallwar:explode/cart
execute if entity @s[type=tnt] run function wallwar:explode/tnt

execute if entity @s[tag=wither] run function wallwar:wither/skill/main
execute if entity @s[tag=wither_craft] at @s run function wallwar:wither/craft/par

kill @s[type=item,nbt={Item:{components:{"minecraft:custom_data":{"wither_player_blade":1b}}}}]
