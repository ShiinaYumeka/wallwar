


title @a title {"translate": "清算","bold": true,"color": "gray"}
scoreboard players reset #wither_skill_fall time
execute if entity @s[team=red] as @a[team=!red,tag=FIGHT] at @s run function wallwar:wither/skill/fall/cast
execute if entity @s[team=blue] as @a[team=!blue,tag=FIGHT] at @s run function wallwar:wither/skill/fall/cast
execute if entity @s[team=yellow] as @a[team=!yellow,tag=FIGHT] at @s run function wallwar:wither/skill/fall/cast
execute if entity @s[team=green] as @a[team=!green,tag=FIGHT] at @s run function wallwar:wither/skill/fall/cast
execute if entity @s[team=wither] as @a[team=!wither,tag=FIGHT] at @s run function wallwar:wither/skill/fall/cast


