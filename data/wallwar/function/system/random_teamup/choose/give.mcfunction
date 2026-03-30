
tag @s add choosing
tellraw @a [{"translate":"[系统]: "},{selector:"@s"},{"translate":"正在选人"}]


give @s carrot_on_a_stick[item_model="compass",damage_type=drown,custom_data={teamup:1b},attack_range={max_reach:20,min_reach:0},item_name={text:"队员选择器"},lore=[{translate:"攻击你想选择的队友"},{translate:"然后按右键确认"}]]
