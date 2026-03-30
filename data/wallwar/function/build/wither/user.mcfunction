
attribute @a[limit=1,tag=wither_user] armor modifier add wither_user 1 add_value

execute if score #BOSS_MODE time matches 1.. if score GAME_PRO time matches 1 run return fail
execute if score #BOSS_MODE time matches 1.. run effect give @a[tag=wither_pickaxe] resistance 11 0 true
execute if score #BOSS_MODE time matches 1.. run effect give @a[tag=wither_sword] resistance 11 0 true

execute unless score #wither_no_use2 time matches 1.. run tellraw @a {"translate": "<声音> 已封锁世界的等级，即将进行整理"}
scoreboard players set #wither_no_use2 time 114514

