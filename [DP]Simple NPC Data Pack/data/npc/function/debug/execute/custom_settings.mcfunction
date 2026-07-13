$data modify storage windwaves_sea:npc temp.debug set value {\
    npc_name:"$(name)",\
    npc_setting_name:"config.custom_settings"\
}

function npc:debug/if_data with storage windwaves_sea:npc temp.debug

execute if score #if_data windwaves_sea.npc.system matches 1 run return fail
$execute \
    if data storage windwaves_sea:npc root.npc_setting.$(name){config:{custom_settings:false}} \
    run \
    scoreboard players set #npc_setting_init_custom_setting windwaves_sea.npc.system 1

$execute \
    if data storage windwaves_sea:npc root.npc_setting.$(name){config:{custom_settings:true}} \
    run \
    scoreboard players set #npc_setting_init_custom_setting windwaves_sea.npc.system 2

data remove storage windwaves_sea:npc temp.debug.npc_setting_name