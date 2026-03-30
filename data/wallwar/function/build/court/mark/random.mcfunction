
execute positioned ^ ^ ^-5 unless entity @e[type=item_frame,distance=..2.5,nbt={Item:{components:{"minecraft:custom_data":{building_update_all:1b}}}}] if entity @a[tag=building_court_marked] run return fail
execute store result score #temp temp if entity @a[tag=building_court_marked]
execute if score #temp temp matches 2.. run return fail

execute if score @s tid matches 4 as @a[team=!red,sort=random,tag=FIGHT,limit=1,tag=!building_court_marked] run function wallwar:build/court/mark/mark
execute if score @s tid matches 1 as @a[team=!blue,sort=random,tag=FIGHT,limit=1,tag=!building_court_marked] run function wallwar:build/court/mark/mark
execute if score @s tid matches 3 as @a[team=!yellow,sort=random,tag=FIGHT,limit=1,tag=!building_court_marked] run function wallwar:build/court/mark/mark
execute if score @s tid matches 2 as @a[team=!green,sort=random,tag=FIGHT,limit=1,tag=!building_court_marked] run function wallwar:build/court/mark/mark
execute unless score @s tid matches 1..4 as @a[sort=random,tag=FIGHT,limit=1,tag=!building_court_marked] run function wallwar:build/court/mark/mark

