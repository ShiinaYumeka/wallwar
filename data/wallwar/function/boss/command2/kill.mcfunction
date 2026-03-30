
scoreboard players add @s konpaku 4
function wallwar:boss/command2/change

scoreboard players add @a[tag=boss] konpaku 4
execute as @a[tag=boss] run function wallwar:boss/command2/change

scoreboard players operation command_timer display = @a[tag=boss] konpaku
