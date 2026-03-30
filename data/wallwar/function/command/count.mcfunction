
item replace entity 0-0-0-0-1 container.0 from entity @s container.9
$item modify entity 0-0-0-0-1 container.0 {function:"set_count",count:$(2)}
item replace entity @s container.9 from entity 0-0-0-0-1 container.0
