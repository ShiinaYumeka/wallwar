
execute unless score @s HP matches 19.. run damage @s 5 wither
execute if score @s HP matches 19..29 run damage @s 10 wither
execute if score @s HP matches 30..49 run damage @s 15 wither
execute if score @s HP matches 50..69 run damage @s 20 wither
execute if score @s HP matches 70..99 run damage @s 30 wither
execute if score @s HP matches 100.. run damage @s 50 wither


effect give @s wither 5 1
effect give @s weakness 5 2
effect give @s slowness 5 2