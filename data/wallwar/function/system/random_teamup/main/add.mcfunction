
execute as @a[scores={tid=99}] run team join waiting
execute as @a run function wallwar:system/team/change

tellraw @a [{"translate":"[系统]: "},{"translate":"队员开始补入！"}]
