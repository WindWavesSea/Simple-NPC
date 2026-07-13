execute if data entity @s interaction{player:[I;1,2,3,4]} run return 0

data modify storage windwaves_sea:npc root.temp.interaction.interaction_uuid set from entity @s UUID

function npc:right_click/get/npc_name with storage windwaves_sea:npc root.temp.interaction

function npc:right_click/execute with storage windwaves_sea:npc root.temp.interaction

data remove storage windwaves_sea:npc root.temp.interaction
data merge entity @s {interaction:{player:[I;1,2,3,4]}}