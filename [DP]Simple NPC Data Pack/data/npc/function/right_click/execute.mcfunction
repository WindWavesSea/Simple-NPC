$execute if data storage windwaves_sea:npc root.npc_setting.$(npc_name).right_click.command \
    if data storage windwaves_sea:npc root.npc_setting.$(npc_name).right_click.function \
    run \
    return run tellraw @a [{translate:"npc.setting.right_click.text"}]

$execute if data storage windwaves_sea:npc root.npc_setting.$(npc_name).right_click.command \
    run return run function npc:right_click/init/command

$execute if data storage windwaves_sea:npc root.npc_setting.$(npc_name).right_click.function \
    run function npc:right_click/init/function
