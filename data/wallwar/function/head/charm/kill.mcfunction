
advancement revoke @s only wallwar/system/hunter_charm
execute unless items entity @s weapon.offhand resin_clump[custom_data~{hunter_charm:1b}] run return fail

item replace entity 0-0-0-0-1 container.0 from entity @s weapon.offhand
execute store result score #charm temp run data get entity 0-0-0-0-1 item.components."minecraft:custom_data".hunter_kills 1
scoreboard players add #charm temp 1
execute store result entity 0-0-0-0-1 item.components."minecraft:custom_data".hunter_kills int 1 run scoreboard players get #charm temp
item replace entity @s weapon.offhand from entity 0-0-0-0-1 container.0

title @s actionbar [{"translate": "猎人护身符 "}, {"score": {"name": "#charm", "objective": "temp"}}, {"translate": "/28"}]

execute if score #charm temp matches 28.. run function wallwar:head/charm/complete
