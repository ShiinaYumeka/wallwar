

function wallwar:system/start

execute unless entity @a[tag=boss] run tag @s add boss

execute as @a[tag=boss] run function wallwar:boss/main

