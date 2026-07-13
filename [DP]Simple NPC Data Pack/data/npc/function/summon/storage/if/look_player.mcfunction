$execute if data storage windwaves_sea:npc root.npc_setting.$(name){config:{look_player:true}} run return 1

data modify storage windwaves_sea:npc root.temp.npc_summon.npc_rotate \
 set value "no_rotate"

return 0