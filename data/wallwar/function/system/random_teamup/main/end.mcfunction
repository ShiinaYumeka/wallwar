
execute as @a run function wallwar:system/team/change
execute if entity @a[scores={tid=99}] run return run function wallwar:system/random_teamup/main/add

effect clear @a glowing
tag @a remove chose
tag @a remove choosing
tag @a remove leader
clear @a carrot_on_a_stick
kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}]


tellraw @a [{"translate":"[系统]: "},{"translate":"队长选人已完成！"}]
