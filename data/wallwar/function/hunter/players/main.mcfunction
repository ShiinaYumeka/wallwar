
tag @s add hunter_self

execute if entity @s[team=red,gamemode=!spectator] run function wallwar:hunter/give_compass

execute if entity @s[team=red,gamemode=!spectator] if items entity @s weapon.* compass[custom_data~{tracker:1b}] run function wallwar:hunter/compass/track

execute if score @s[team=red] hunter_drop_compass matches 1.. run function wallwar:hunter/compass/drop
kill @e[type=item,distance=..6,nbt={Item:{components:{"minecraft:custom_data":{tracker:1b}}}}]

tag @s remove hunter_self
