scoreboard objectives add windwaves_sea.npc.system dummy

scoreboard objectives add windwaves_sea.npc.id dummy

execute unless score #last_value windwaves_sea.npc.id matches 0.. run scoreboard players set #last_value windwaves_sea.npc.id 0
scoreboard players set #add_value windwaves_sea.npc.id 1

function npc:setting
