execute if score #custom_settings windwaves_sea.npc.system > #max_not_custom_settings windwaves_sea.npc.system run return 1

execute store result storage windwaves_sea:npc temp.debug.number int 1 run scoreboard players get #custom_settings windwaves_sea.npc.system

function npc:debug/execute/get_setting with storage windwaves_sea:npc temp.debug

function npc:debug/if_data with storage windwaves_sea:npc temp.debug

scoreboard players add #custom_settings windwaves_sea.npc.system 1

data remove storage windwaves_sea:npc temp.debug.npc_setting_name
data remove storage windwaves_sea:npc temp.debug.number

function npc:debug/execute/custom_false