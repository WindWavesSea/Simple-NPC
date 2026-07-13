$data modify storage windwaves_sea:npc temp.debug.npc_bug_text set value {"text":"$(npc_setting_name) "}

$execute if data storage windwaves_sea:npc root.npc_setting.$(npc_name).right_click.command \
    if data storage windwaves_sea:npc root.npc_setting.$(npc_name).right_click.function run \
    data modify storage windwaves_sea:npc temp.debug.npc_bug_text \
    set value {"translate":"npc.setting.right_click.text"}

data modify storage windwaves_sea:npc temp.debug.npc_bug_list append from storage windwaves_sea:npc temp.debug.npc_bug_text

data remove storage windwaves_sea:npc temp.debug.npc_bug_text
