

tag @s remove building_court_marked

tellraw @a [""]
tellraw @a ["",{"translate":"-----------------------------------------------------","color": "gray"}]
tellraw @a [{text:"[公告] ",color:"white"},{text:"目标"},{selector:"@s"},{text:"已被斩首！"}]
function wallwar:build/court/kill/killer
tellraw @a ["",{"translate":"-----------------------------------------------------","color": "gray"}]

execute unless entity @a[tag=building_court_marked] run return run scoreboard players reset building_court_marked display

scoreboard players display name building_court_marked display {"translate": "谋杀目标","color": "dark_red","bold": true}
scoreboard players display numberformat building_court_marked display fixed {"selector": "@a[tag=building_court_marked]"}

