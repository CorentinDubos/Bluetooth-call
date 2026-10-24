// ISpeechSettingsAIDL.aidl
package com.hzbhd.midwareproxy.speechrecognition.aidl;

// Declare any non-default types here with import statements
import com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechCallback;

interface ISpeechSettingsAIDL {

    void addCallBack(ISpeechCallback callback);
    void removeCallBack(ISpeechCallback callback);


    //关闭app
    void closeApp(String packageName);
    //打开app
    void openApp(String packageName,String className);
    //打开导航
    void openNavi();
    //关闭导航
    void closeNavi();
    //打开博大app
    void openBodaApp(String appName);
    //关闭博大app
    void closeBodaApp(String appName);
    //获取当前app
    String getCurrentApp();

    //切源播放
    void switchMode();
    //下一台 收音
    void nextStation();
    //上一台 收音
    void previouStation();
    //下一曲
    void nextTrack();
    //上一曲
    void previousTrack();
    //继续播放
    void ContinuePlaying();
    //暂停播放
    void PausePlayBack();
    //向后搜索
    void searchBack();
    //向前搜索
    void searchForward();

    //收音 搜索
    void radioSearch();
    //收音 切平台
    void radioBand();
    //收音 切到FM
    void radioToFM();
    //收音 切到AM
    void radioToAM();
    //收音 切到某频点
    void radioToFreq(float freq);

    //蓝牙 接听
    void btAnswer();
    //蓝牙 挂断
    void btHangUp();
    //蓝牙 拨打号码
    void btCallNumber(String number);
    //蓝牙 发起同步电话本
    void btSyncContacts();
    //蓝牙 电话本
    String getBtContactList();
    //蓝牙状态
    String getBtStatus();
    //蓝牙 连接的设备地址
    String getBtConnectedDeviceAddress();
    //蓝牙 连接的设备名称
    String getBtConnectedDevieName();
    //蓝牙 蓝牙名称
    String getBtName();

    //ACC 电源状态
    String getAccStatus();
    //倒车 倒车状态
    String getBackingStatus();


    //返回桌面
    void backToHome();
    //返回上一步
    void goBack();
    //亮度 减
    void brightnessDown();
    //亮度 加
    void brightnessUp();
    //亮度 调到n
    void brightnessTo(in int number);
    //亮度 最大
    void brightnessMax();
    //亮度 最低
    void brightnessMin();
    //亮度 值
    String getBrighrnessStatus();
    //屏幕 关闭
    void screenOff();
    //屏幕 打开
    void screenOn();
    //音量 减
    void volumeDown();
    //音量 加
    void volumeUp();
    //音量 到n
    void volumeTo(in int number);
    //音量 最大
    void volumeMax();
    //音量 最低
    void volumeMin();
    //音量 静音
    void volumeMute();
    //音量 解除静音
    void volumeUnmute();
    //音量 数值
    String getVolumeStatus();
    //打开wifi
    void openWifi();
    //关闭wifi
    void closeWifi();
    //打开热点
    void openHotspot();
    //关闭热点
    void closeHotspot();
    //请求声音通道
    void requestSource();
    //释放声音通道（回到上一个）
    void releaseSource();
    //获取当前声音源
    String getCurrentSource();
    //旋转屏幕
    void rotateScreen();
    //获取系统版本信息
    String getSerialNumber();


    //空调 打开power
    void openAcPower();
    //空调 关闭power
    void closeAcPower();
    //空调 风量加
    void setAcWindUp();
    //空调 风量减
    void setAcWindDown();
    //空调 风量到n
    void setAcWindTo(in int level);
    //空调 风量最大
    void setAcWinMax();
    //空调 风量最小
    void setAcdWindMin();
    //空调 获取风量值
    String getAcWindLevel();
    //空调 温度加
    void setAcTemperatureUp();
    //空调 温度减
    void setAcTemperatureDown();
    //空调 温度到n
    void setAcTemperatureTo(float level);
    //空调 温度最大
    void setAcTemperatureMax();
    //空调 温度最小
    void setAcTemperatureMin();
    //空调 获取温度值
    String getAcTemperatureLevel();
    //空调 制冷
    void setAcRefrigeration();
    //空调 制热
    void setAcHeating();
    //空调 内外循环切换
    void switchAcMode();
    //空调 控制
    void actionControl(String action);
    //空调 温度到n
    void setAcTemperatureToPro(String relative, String offset);
    //播报完毕
    void putspeakEnd();
    //产品ID
    String getDeviveInfo();
    //设置空调温度 absolute 绝对值，relative（+/-）相对调整 offset相对偏移量
    void setAcTemperature(String absolute,String relative,String offset);

    //播放指定路径音乐
    void musicPlayPath(String path);


}
