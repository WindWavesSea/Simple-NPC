[English](README_en.md) [简体中文](README.md)

## 序言
 此数据包使原版配置NPC更加简单，只需要写storage并执行生成函数即可配置一个属于你的NPC

## 功能
支持以下功能：

* 自定义NPC上方的悬浮字。
* 自定义NPC皮肤。
* 右键NPC运行指令或函数。

## Storage结构
![](https://cloud-photo.windwaves.top/Simple_NPC/storage1.png)

![](https://cloud-photo.windwaves.top/Simple_NPC/storage2.png)

### 示例storage

默认配置
~~~mcfunction
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
            command:"",\(function:""\)
        }\
    }\
}
~~~
自定义配置
~~~mcfunction
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
            function:""\(command:""\)
        }\
    }\
}
~~~
## 指令解析

### 生成NPC
~~~mcfunction
function npc:summon {name:"name"}
~~~

生成NPC，需先写入配置，不可重复生成，name为上方配置中的NPC名称（下文相同）。

### 清除NPC
~~~mcfunction
function npc:remove/npc {name:"name"}
~~~

#### 删除配置( 同时清除NPC )
~~~mcfunction
function npc:remove/setting {name:"name"}
~~~

---
## 下载
QQ群：117464315

Github：https://github.com/WindWavesSea/Simple-NPC/

Modrinth: https://modrinth.com/datapack/simple-npc/

## 鸣谢
感谢[NOX OBSCURA](https://space.bilibili.com/1184771713)提供的交互实体大小, 使其可以贴合NPC碰撞箱

感谢[轩宇1725](https://space.bilibili.com/104432208)提供的storage检测思路，使字符串可以检测
