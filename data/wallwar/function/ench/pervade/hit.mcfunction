
#execute on attacker run function wallwar:ench/pervade/atker

execute store result score #temp temp run random value 1..100

execute if score #temp temp matches 1..25 run function wallwar:ench/pervade/head
execute if score #temp temp matches 26..50 run function wallwar:ench/pervade/chest
execute if score #temp temp matches 51..75 run function wallwar:ench/pervade/legs
execute if score #temp temp matches 76..100 run function wallwar:ench/pervade/feet

advancement revoke @s only wallwar/system/pervade

#tellraw @a {score:{name:"#pervade","objective":"temp"}}