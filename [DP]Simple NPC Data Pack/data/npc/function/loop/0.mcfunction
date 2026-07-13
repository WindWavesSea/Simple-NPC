execute if entity @p[distance=..10] run return run rotate @s facing entity @p feet

execute if entity @s[tag=rotate_north] run function npc:loop/1 {r1:180,r2:0}
execute if entity @s[tag=rotate_south] run function npc:loop/1 {r1:0,r2:0}
execute if entity @s[tag=rotate_east] run function npc:loop/1 {r1:-90,r2:0}
execute if entity @s[tag=rotate_west] run function npc:loop/1 {r1:90,r2:0}