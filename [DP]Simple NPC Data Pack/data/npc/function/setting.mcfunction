data modify storage windwaves_sea:npc root.npc_setting_list merge value {\
    not_custom_settings:[\
        "name",\
        "zone",\
        "config.look_player",\
        "config.default_orientation",\
        "text.pos.x","text.pos.y","text.pos.z",\
        "text.text", \
        "npc.pos.x","npc.pos.y","npc.pos.z","npc.model","npc.texture","npc.rotation", \
        "right_click","right_click.command","right_click.function"\
    ]\
}

#16

scoreboard players set #max_not_custom_settings windwaves_sea.npc.system 16

data modify storage windwaves_sea:npc root.npc_setting_list merge value {\
    custom_settings:[\
        "name",\
        "zone",\
        "config.look_player",\
        "config.default_orientation",\
        "text.pos.x","text.pos.y","text.pos.z",\
        "text.data", \
        "npc.pos.x","npc.pos.y","npc.pos.z","npc.data", \
        "right_click","right_click.command","right_click.function"\
    ]\
}

#14
scoreboard players set #max_custom_settings windwaves_sea.npc.system 14