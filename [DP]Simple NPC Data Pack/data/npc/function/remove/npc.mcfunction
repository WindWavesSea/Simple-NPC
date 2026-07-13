$execute unless data storage windwaves_sea:npc {root:{summon_npc:{name:["$(name)"]}}} run return run \
    tellraw @a [{translate:"npc.not_summon.text",with:[{text:"$(name)"}]}]


$data modify storage windwaves_sea:npc root.temp.remove.entity.interaction_uuid set from entity @n[type=interaction,tag=npc,tag=$(name)] UUID
function npc:remove/storage/interaction with storage windwaves_sea:npc root.temp.remove.entity
data remove storage windwaves_sea:npc root.summon_npc.name
$kill @e[tag=npc,tag=$(name)]