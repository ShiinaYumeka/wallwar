

#execute if items entity @s weapon.offhand *[enchantments~[{enchantments:"#command_book/main"}]]

scoreboard players operation @s kill_entity /= 2 const

execute store result score #ench temp run random value 1..100
scoreboard players operation #ench temp *= 30 const
scoreboard players add @s temp 30
#scoreboard players operation @s temp *= 2 const
scoreboard players operation #ench temp /= @s temp
scoreboard players remove @s temp 30
#execute if score #ench temp matches 1..20 run item modify entity @s weapon.offhand minecraft:command_book
#execute if score #ench temp matches 1..20 run tellraw @s [{"translate": "物品修饰成功，当前灵魂数目：","color": "red"},{"score": {"name": "@s","objective":"kill_entity"}}]

item replace entity 0-0-0-0-1 container.0 from entity @s weapon.offhand
execute if score #ench temp matches 1..20 run function wallwar:command/add/fix/use
execute if score #ench temp matches 21..40 run function wallwar:command/add/upgrade/use
execute if score #ench temp matches 41..100 run function wallwar:command/add/bad

data modify storage minecraft:temp temp set value {ench:"breaking"}
function wallwar:command/add/add3 with storage minecraft:temp temp

item replace entity @s weapon.offhand from entity 0-0-0-0-1 container.0


