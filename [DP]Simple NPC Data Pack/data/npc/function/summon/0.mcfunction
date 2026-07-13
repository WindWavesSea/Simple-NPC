$summon mannequin $(npc_x) $(npc_y) $(npc_z) {\
    immovable:true,\
    hide_description:true,\
    Rotation:$(npc_rotation),\
    profile:{\
        model:"$(npc_model)",\
        texture:"$(npc_texture)",\
    },\
    Tags:["npc","$(npc_zone)","$(npc_name)","$(npc_rotate)"],\
    Invulnerable:true\
}

$summon text_display $(npc_text_x) $(npc_text_y) $(npc_text_z) {\
    text:$(npc_text),\
    shadow:false,\
    Tags:["npc","$(npc_zone)","$(npc_name)","text"],\
    billboard:"center",\
    background:0,\
}

$execute if data storage windwaves_sea:npc root.npc_setting.$(npc_name).right_click \
    run \
    summon interaction $(npc_x) $(npc_y) $(npc_z) {\
    Tags:["npc","$(npc_zone)","$(npc_name)","interaction"],\
    height:1.8001,\
    width:0.6001,\
    interaction:{player:[I;1,2,3,4]},\
    response:true\
}

data modify storage windwaves_sea:npc root.temp.entity.npc_name set from storage windwaves_sea:npc root.temp.npc_summon.npc_name

$execute positioned $(npc_x) $(npc_y) $(npc_z) run data modify storage windwaves_sea:npc root.temp.entity.interaction_uuid set from entity @n[type=interaction,distance=..1] UUID

function npc:summon/storage/add_entity with storage windwaves_sea:npc root.temp.entity

data remove storage windwaves_sea:npc root.temp.entity