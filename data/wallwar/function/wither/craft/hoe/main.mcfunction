
attribute @s max_health base set 24
scoreboard players add @s wither_health 10
scoreboard players add @s wither_armor 1

tellraw @s [{"translate": "<声音> ","color": "gray"},{"translate": " 你受到了感召"}]
