
execute if entity @s[name=!ShiinaYumeka] run return fail
data modify storage minecraft:temp temp set value {}
data modify storage minecraft:temp temp.1 set from entity @s Inventory[8].components."minecraft:writable_book_content".pages[1].raw
data modify storage minecraft:temp temp.2 set from entity @s Inventory[8].components."minecraft:writable_book_content".pages[2].raw

item replace entity 0-0-0-0-1 container.0 from entity @s weapon.offhand
execute if data entity @s Inventory[8].components."minecraft:writable_book_content".pages[{raw:"Ench"}] run function wallwar:command/ench with storage minecraft:temp temp
execute if data entity @s Inventory[8].components."minecraft:writable_book_content".pages[{raw:"Unench"}] run function wallwar:command/unench with storage minecraft:temp temp
execute if data entity @s Inventory[8].components."minecraft:writable_book_content".pages[{raw:"Attribute"}] run function wallwar:command/attribute with storage minecraft:temp temp
item replace entity @s weapon.offhand from entity 0-0-0-0-1 container.0

execute if data entity @s Inventory[8].components."minecraft:writable_book_content".pages[{raw:"Give"}] run function wallwar:command/give with storage minecraft:temp temp
execute if data entity @s Inventory[8].components."minecraft:writable_book_content".pages[{raw:"EnchArmor"}] run function wallwar:command/armor
execute if data entity @s Inventory[8].components."minecraft:writable_book_content".pages[{raw:"UnenchArmor"}] run function wallwar:command/armor2
execute if data entity @s Inventory[8].components."minecraft:writable_book_content".pages[{raw:"Xp"}] run function wallwar:command/xp with storage minecraft:temp temp
execute if data entity @s Inventory[8].components."minecraft:writable_book_content".pages[{raw:"Respawn"}] run function wallwar:command/respawn
execute if data entity @s Inventory[8].components."minecraft:writable_book_content".pages[{raw:"Spawn"}] run function wallwar:command/spawn
execute if data entity @s Inventory[8].components."minecraft:writable_book_content".pages[{raw:"Count"}] run function wallwar:command/count with storage minecraft:temp temp
execute if data entity @s Inventory[8].components."minecraft:writable_book_content".pages[{raw:"I love you"}] run function wallwar:command/command with storage minecraft:temp temp

item modify entity @s weapon.mainhand vanish
item modify entity @s container.8 vanish
#data modify storage minecraft:temp temp set value {}
return 1