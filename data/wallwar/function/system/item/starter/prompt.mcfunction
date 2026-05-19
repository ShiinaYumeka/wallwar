
tellraw @s ["",{"translate":"-----------------------------------------------------","color":"gray"}]
tellraw @s ["",{"translate":"<选择发育流派>","color":"gold","bold":true}]
tellraw @s ["",{"translate":"请六选一，获得对应收纳袋物资（本局不可更改）：","color":"white"}]
tellraw @s ["",{"translate":"[1 挖矿] ","color":"gold","click_event":{"action":"run_command","command":"/trigger choose_starter set 1"}},{"translate":"[2 种田] ","color":"green","click_event":{"action":"run_command","command":"/trigger choose_starter set 2"}},{"translate":"[3 砍树] ","color":"dark_green","click_event":{"action":"run_command","command":"/trigger choose_starter set 3"}}]
tellraw @s ["",{"translate":"[4 钓鱼] ","color":"aqua","click_event":{"action":"run_command","command":"/trigger choose_starter set 4"}},{"translate":"[5 炼药] ","color":"dark_red","click_event":{"action":"run_command","command":"/trigger choose_starter set 5"}},{"translate":"[6 建筑] ","color":"light_purple","click_event":{"action":"run_command","command":"/trigger choose_starter set 6"}}]
tellraw @s ["",{"translate":"或输入：/trigger choose_starter set <1-6>","color":"gray"}]
tellraw @s ["",{"translate":"-----------------------------------------------------","color":"gray"}]
