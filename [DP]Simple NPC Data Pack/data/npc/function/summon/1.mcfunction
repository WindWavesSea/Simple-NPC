$summon mannequin $(npc_x) $(npc_y) $(npc_z) $(npc_data)

$execute positioned $(npc_x) $(npc_y) $(npc_z) as @n[type=mannequin,distance=..1] run function npc:summon/tag_add/mannequin {npc_name:"$(npc_name)",npc_zone:"$(npc_zone)",npc_rotate:"$(npc_rotate)"}

$summon text_display $(npc_text_x) $(npc_text_y) $(npc_text_z) $(npc_text_data)

$execute positioned $(npc_text_x) $(npc_text_y) $(npc_text_z) as @n[type=text_display,distance=..1] run function npc:summon/tag_add/text {npc_name:"$(npc_name)",npc_zone:"$(npc_zone)"}


$summon interaction $(npc_x) $(npc_y) $(npc_z) {\
    Tags:["npc","$(npc_zone)","$(npc_name)","interaction"],\
    height:2,\
    width:1,\
    interaction:{player:[I;1,2,3,4]},\
    response:true\
}

data modify storage windwaves_sea:npc root.temp.entity.npc_name set from storage windwaves_sea:npc root.temp.npc_summon.npc_name

$execute positioned $(npc_x) $(npc_y) $(npc_z) run data modify storage windwaves_sea:npc root.temp.entity.interaction_uuid set from entity @n[type=interaction,distance=..1] UUID

function npc:summon/storage/add_entity with storage windwaves_sea:npc root.temp.entity

data remove storage windwaves_sea:npc root.temp.entity