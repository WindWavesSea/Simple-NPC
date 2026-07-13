$execute unless data storage windwaves_sea:npc root.npc_setting.$(name) run return run \
    tellraw @a [{translate:"npc.dont_have_setting.text",with:[{text:"$(name)"}]}]

$execute if data storage windwaves_sea:npc {root:{summon_npc:{name:["$(name)"]}}} run \
    function npc:remove/npc {name:"$(name)"}

$data remove storage windwaves_sea:npc root.npc_setting.$(name)
