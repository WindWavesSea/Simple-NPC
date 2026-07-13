data modify storage windwaves_sea:npc root.npc_setting merge value {\
    test:{\
        name:"test",\
        zone:"test",\
        config:{\
            custom_settings:false,\
            look_player:true\
        },\
        text:{\
            pos:{x:1,y:1,z:1},\
            text:[{text:"1"}]\
        },\
        npc:{\
            pos:{x:1,y:1,z:1},\
            model:"wide",\
            texture:"lobby:npc/start_game",\
            rotation:[180,0]\
        },\
        right_click:{\
            command:"",\
            function:""\
        }\
    }\
}

function npc:debug with storage windwaves_sea:npc root.npc_setting.test

#zone可以不写 不写默认root
#look_player 可以不写 不写默认true true朝向玩家 false不朝向玩家


data modify storage windwaves_sea:npc root.npc_setting merge value {\
    test_custom:{\
        name:"test_custom",\
        zone:"test",\
        config:{\
            custom_settings:true,\
            look_player:true,\
            default_orientation:"north" \
        },\
        text:{\
            pos:{x:1,y:1,z:1},\
            data:{}\
        },\
        npc:{\
            pos:{x:1,y:1,z:1},\
            data:{}\
        },\
        right_click:{\
            function:""\
        }\
    }\
}

#需要在npc.data内写Rotation, 如果不写默认关闭look_player
#不可以使用的tag列表
#   npc rotate_north rotate_south rotate_east rotate_west no_rotate text
#   以及name配置中的文本和zone配置中的文本

#生成自动编码(将名称数据化为计分板分数) 方便右键检测执行function