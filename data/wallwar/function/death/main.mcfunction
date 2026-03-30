


scoreboard players set @s death 0
scoreboard players set @s invisible 10

execute if entity @s[tag=wither_player] run return run function wallwar:death/wither
execute if entity @s[tag=FIGHT] run return run function wallwar:death/out

execute if entity @s[tag=escape_warned] run return run function wallwar:death/escape

tellraw @a [{"translate":"[战墙] "},{"selector":"@s"},{"translate":" 不慎死亡！","color":"white"}]

scoreboard players reset @a kill