
advancement revoke @s only wallwar/system/soul_silverfish
scoreboard players remove @s kill_entity 1
execute if score @s kill_entity matches ..-1 run scoreboard players set @s kill_entity 0
