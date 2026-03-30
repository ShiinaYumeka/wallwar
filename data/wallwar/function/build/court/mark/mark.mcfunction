
tag @s add building_court_marked
tellraw @a [""]
tellraw @a ["",{"translate":"-----------------------------------------------------","color": "gray"}]
tellraw @a [{text:"[法官] ",color:"light_purple"},{selector:"@s"},{text:"是你的谋杀目标"}]
tellraw @a [{text:"当此玩家被敌对玩家击杀后，法庭会给予其“魄”的奖励（提升最大生命值）",color:"gray"}]
tellraw @a ["",{"translate":"-----------------------------------------------------","color": "gray"}]

scoreboard players display name building_court_marked display {"translate": "谋杀目标","color": "dark_red","bold": true}
scoreboard players display numberformat building_court_marked display fixed {"selector": "@a[tag=building_court_marked]"}
