$data modify storage windwaves_sea:npc root.temp.npc_summon.npc_name \
    set from storage windwaves_sea:npc root.npc_setting.$(name).name

$data modify storage windwaves_sea:npc root.temp.npc_summon.npc_zone \
    set from storage windwaves_sea:npc root.npc_setting.$(name).zone

$execute store result score #summon_look_player windwaves_sea.npc.system run \
function npc:summon/storage/if/look_player {name:"$(name)"}

$execute if score #summon_look_player windwaves_sea.npc.system matches 1 \
    run function npc:summon/storage/if/default_orientation {name:"$(name)"}

$data modify storage windwaves_sea:npc root.temp.npc_summon.npc_text_x \
    set from storage windwaves_sea:npc root.npc_setting.$(name).text.pos.x

$data modify storage windwaves_sea:npc root.temp.npc_summon.npc_text_y \
    set from storage windwaves_sea:npc root.npc_setting.$(name).text.pos.y

$data modify storage windwaves_sea:npc root.temp.npc_summon.npc_text_z \
    set from storage windwaves_sea:npc root.npc_setting.$(name).text.pos.z

$data modify storage windwaves_sea:npc root.temp.npc_summon.npc_text_data \
    set from storage windwaves_sea:npc root.npc_setting.$(name).text.data


$data modify storage windwaves_sea:npc root.temp.npc_summon.npc_x \
    set from storage windwaves_sea:npc root.npc_setting.$(name).npc.pos.x

$data modify storage windwaves_sea:npc root.temp.npc_summon.npc_y \
    set from storage windwaves_sea:npc root.npc_setting.$(name).npc.pos.y

$data modify storage windwaves_sea:npc root.temp.npc_summon.npc_z \
    set from storage windwaves_sea:npc root.npc_setting.$(name).npc.pos.z

$data modify storage windwaves_sea:npc root.temp.npc_summon.npc_data \
    set from storage windwaves_sea:npc root.npc_setting.$(name).npc.data

function npc:summon/1 with storage windwaves_sea:npc root.temp.npc_summon

data remove storage windwaves_sea:npc root.temp.npc_summon