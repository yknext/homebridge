# 使用siri控制电视换台 运行在raspberry docker 
#### 第一步电视安装并且开启小微直播，拿到按钮的接口
小微直播下载: http://xiaoweizhibo.com/
![Image text](https://raw.githubusercontent.com/yknext/homebridge/master/TV.png)
#### 配置cmdswitch2
```
{
  "platform": "cmdSwitch2",
  "name": "CMD Switch",
  "switches": [{
                  "name": "音量+",
                  "on_cmd": "curl http://192.168.200.53:8050/key?n=24",
                  "off_cmd": "exit 1",
                  "state_cmd": "exit 1",
                  "polling": false,
                  "interval": 1
          }, {
                  "name": "音量-",
                  "on_cmd": "curl http://192.168.200.53:8050/key?n=25",
                  "off_cmd": "exit 1",
                  "state_cmd": "exit 1",
                  "polling": false,
                  "interval": 1
          }, {
                  "name": "上一个台",
                  "on_cmd": "curl http://192.168.200.53:8050/key?n=19",
                  "off_cmd": "exit 1",
                  "state_cmd": "exit 1",
                  "polling": false,
                  "interval": 1
          }, {
                  "name": "下一个台",
                  "on_cmd": "curl http://192.168.200.53:8050/key?n=20",
                  "off_cmd": "exit 1",
                  "state_cmd": "exit 1",
                  "polling": false,
                  "interval": 1
          }
}
```
#### 也可以直接推送播放地址
```
 {
    "name": "CCTV-1高清",
    "on_cmd": "curl http://192.168.200.53:8050/cmd?url=http://192.168.200.144:10000/rtp/239.93.0.184:5140",
    "off_cmd": "exit 1",
    "state_cmd": "exit 1",
    "polling": false,
    "interval": 1
}, {
    "name": "CCTV-2高清",
    "on_cmd": "curl http://192.168.200.53:8050/cmd?url=http://192.168.200.144:10000/rtp/239.93.1.23:6000",
    "off_cmd": "exit 1",
    "state_cmd": "exit 1",
    "polling": false,
    "interval": 1
}
```
#### 然后docker-compose logs  手机打开家庭应用扫码配对,就可以使用siri控制电视了
![Image text](https://raw.githubusercontent.com/yknext/homebridge/master/sc2.jpg)
![Image text](https://raw.githubusercontent.com/yknext/homebridge/master/sc1.jpg)

