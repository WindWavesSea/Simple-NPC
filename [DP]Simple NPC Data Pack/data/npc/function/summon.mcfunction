$execute if data storage windwaves_sea:npc {root:{summon_npc:{name:["$(name)"]}}} run return run \
    tellraw @a [{translate:"npc.have_summon.text",with:[{text:"$(name)"}]}]

$execute if data storage windwaves_sea:npc root.npc_setting.$(name).config{custom_settings:false} \
    run function npc:summon/storage/0 {name:"$(name)"}

$execute if data storage windwaves_sea:npc root.npc_setting.$(name).config{custom_settings:true} \
    run function npc:summon/storage/1 {name:"$(name)"}

$data modify storage windwaves_sea:npc root.summon_npc.name append value "$(name)"

data remove storage windwaves_sea:npc root.temp.npc_summon