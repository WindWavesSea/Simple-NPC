tellraw @a {text:"----------------------------"}

$tellraw @a {translate:"npc.debug.text",with:[{text:"$(npc_name)"}]}

$tellraw @a $(npc_bug_list)

tellraw @a {text:"----------------------------"}

data remove storage windwaves_sea:npc temp.debug

scoreboard players reset #if_data windwaves_sea.npc.system

