
execute store result score #temp hunter_temp run clear @s compass[custom_data~{tracker:1b}] 0
execute if score #temp hunter_temp matches 1.. run return fail
execute unless data entity @s SelectedItem run return run loot replace entity @s weapon.mainhand loot wallwar:hunter/compass
loot give @s loot wallwar:hunter/compass
