$execute if data storage windwaves_sea:npc root.npc_setting.$(npc_name).right_click \ 
    if score #npc_setting_init_custom_setting windwaves_sea.npc.system matches 1 \
    if score #custom_settings windwaves_sea.npc.system matches 16 \
    if data storage windwaves_sea:npc root.npc_setting.$(npc_name).right_click.command \
    if data storage windwaves_sea:npc root.npc_setting.$(npc_name).right_click.function run \
    return run function npc:debug/set_bug

$execute if data storage windwaves_sea:npc root.npc_setting.$(npc_name).right_click \ 
    if score #npc_setting_init_custom_setting windwaves_sea.npc.system matches 2 \
    if score #custom_settings windwaves_sea.npc.system matches 14 \
    if data storage windwaves_sea:npc root.npc_setting.$(npc_name).right_click.command \
    if data storage windwaves_sea:npc root.npc_setting.$(npc_name).right_click.function run \
    return run function npc:debug/set_bug

$execute if data storage windwaves_sea:npc root.npc_setting.$(npc_name).$(npc_setting_name) run return fail

$execute if data storage windwaves_sea:npc temp.debug{npc_setting_name:"config.look_player"} \
    unless data storage windwaves_sea:npc root.npc_setting.$(npc_name).config.look_player run return fail

#$execute if data storage windwaves_sea:npc temp.debug{npc_setting_name:"config.default_orientation"} \
unless data storage windwaves_sea:npc root.npc_setting.$(npc_name).config.default_orientation run return fail

$execute if score #npc_setting_init_custom_setting windwaves_sea.npc.system matches 1 \
    if score #custom_settings windwaves_sea.npc.system matches 14 \
    unless data storage windwaves_sea:npc root.npc_setting.$(npc_name).right_click \
     run return run scoreboard players set #custom_settings windwaves_sea.npc.system 16

execute if score #npc_setting_init_custom_setting windwaves_sea.npc.system matches 1 \
    if score #custom_settings windwaves_sea.npc.system matches 15 run return fail

$execute if score #npc_setting_init_custom_setting windwaves_sea.npc.system matches 2 \
    unless data storage windwaves_sea:npc root.npc_setting.$(npc_name).right_click \
    if score #custom_settings windwaves_sea.npc.system matches 12 run return \
    run scoreboard players set #custom_settings windwaves_sea.npc.system 14

execute if score #npc_setting_init_custom_setting windwaves_sea.npc.system matches 2 \
    if score #custom_settings windwaves_sea.npc.system matches 13 run return fail

function npc:debug/set_bug