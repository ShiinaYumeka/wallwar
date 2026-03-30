
execute if entity @s[team=red] run function wallwar:boss/red
execute if entity @s[team=yellow] run function wallwar:boss/yellow
execute if entity @s[team=blue] run function wallwar:boss/blue
execute if entity @s[team=green] run function wallwar:boss/green

function wallwar:boss/command

#复活惩罚
scoreboard players add @s respawn 2

tellraw @a [{"selector": "@s"},{"translate": "成为了BOSS"}]
