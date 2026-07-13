scoreboard players reset #custom_settings windwaves_sea.npc.system 

execute if score #if_data windwaves_sea.npc.system matches 1 run \
    return run \
    function npc:debug/bug_show with storage windwaves_sea:npc temp.debug

tellraw @a [{"translate":"npc.debug.text.end.text"}]