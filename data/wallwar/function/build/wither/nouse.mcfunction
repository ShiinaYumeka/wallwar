
execute unless score #wither_no_use time matches 1.. run tellraw @a {"translate": "<声音> 已禁用此世界的无关建筑，即将进行整理"}
scoreboard players set #wither_no_use time 205
