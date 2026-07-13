scoreboard players reset #summon_look_player windwaves_sea.npc.system

$execute unless data storage windwaves_sea:npc root.npc_setting.$(name).config.default_orientation run return fail

$execute if data storage windwaves_sea:npc root.npc_setting.$(name){config:{default_orientation:"north"}} run \
    return run \
    data modify storage windwaves_sea:npc root.temp.npc_summon.npc_rotate \
     set value "rotate_north"

$execute if data storage windwaves_sea:npc root.npc_setting.$(name){config:{default_orientation:"south"}} run \
    return run \
    data modify storage windwaves_sea:npc root.temp.npc_summon.npc_rotate \
     set value "rotate_south"

$execute if data storage windwaves_sea:npc root.npc_setting.$(name){config:{default_orientation:"east"}} run \
    return run \
    data modify storage windwaves_sea:npc root.temp.npc_summon.npc_rotate \
     set value "rotate_east"

$execute if data storage windwaves_sea:npc root.npc_setting.$(name){config:{default_orientation:"west"}} run \
    return run \
    data modify storage windwaves_sea:npc root.temp.npc_summon.npc_rotate \
     set value "rotate_west"