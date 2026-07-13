$function npc:debug/execute/custom_settings {name:"$(name)"}

scoreboard players set #custom_settings windwaves_sea.npc.system 0

$data modify storage windwaves_sea:npc temp.debug.npc_name set value "$(name)"

execute if score #if_data windwaves_sea.npc.system matches 1 run return run function npc:debug/execute/end

execute \
    if score #npc_setting_init_custom_setting windwaves_sea.npc.system matches 1 \
    run function npc:debug/execute/custom_false

execute \
    if score #npc_setting_init_custom_setting windwaves_sea.npc.system matches 2 \
    run function npc:debug/execute/custom_true

function npc:debug/execute/end

scoreboard players reset #npc_setting_init_custom_setting windwaves_sea.npc.system

data remove storage windwaves_sea:npc temp.debug