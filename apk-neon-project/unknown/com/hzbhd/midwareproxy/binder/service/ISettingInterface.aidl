// ISettingInterface.aidl
package com.hzbhd.midwareproxy.binder.service;

import android.location.Location;

import com.hzbhd.midwareproxy.binder.callback.ISWCCallBackInterface;
import com.hzbhd.midwareproxy.binder.callback.ISettingCallBackInterface;
import com.hzbhd.midwareproxy.binder.callback.IAutoTestCallBackInterface;

/** Settings service interface */
interface ISettingInterface {


	
	boolean getIsSoundMix();
	
	void setIsSoundMix(in boolean aIsSoundMix);

	/**
	* 注册回调函数
	* @param aCallbackInterface: 回调函数
	* @return 注册令牌
	*/
    String registerCallBack(in ISettingCallBackInterface aCallbackInterface);
    
    /**
	* 注销回调函数
	* @param aToken: 注册令牌
	 */
    void unRegisterCallBack(in String aToken);
    
    String getCustomerID();
    
    void setCustomerID(String aCustomerID);

	/**
	* 获取MCU版本号
	*/
    String getMCUVersion();

    /**
    	* 获取DGC MCU版本号
    	*/
    String getDgcMCUVersion();

    byte[] getMcuTestItem(in byte[] reqType);

    /**
    *获取默认int值
    */
    int getSharedInt(String key);
    
    /**
    *获取默认boolean值
    */
    boolean getSharedBool(String key);
    
    /**
    *获取默认字符串值
    */
    String getSharedStr(String key);
    
    /**
    *设置默认int值
    */
    void setSharedInt(String key,int value);
    
    /**
    *设置默认boolean值
    */
    void setSharedBool(String key,boolean value);
    
    /**
    *设置默认字符串值
    */
    void setSharedStr(String key,String value);
    
    /**
    *将Shared获取的值设置为初始值
    */
    void setSharedValueToMpu();
    
    /**
    *告诉mcu部分设置值
    */
    void setFactorySettingInfoToMcu(in byte[] aFactorySettingInfo);
    
    /**
     * 播放beep声
     */
    void playBeep();
    
    /**
    * MPU复位
    * @param delayTime: 延迟时间（秒）
    */
    void resetMpuDelay(in byte delayTime);
    
    /**
     * 设置恢复出厂设置开关
     */
    void enableFactoryReset(in boolean aEnable);
    
    /**
     * 获取GPS同步时间开关
     */
    boolean getGPSSyncSwitch();
    
    /**
     * 设置GPS同步时间开关
     */
    void enableGPSSyncSwitch(in boolean aEnable);
    
    /**
     * 获取大灯开关
     */
    boolean getHeadlightSwitch();
    
    /**
     * 设置大灯开关
     */
    void setHeadlightSwitch(in boolean aEnable);
    
    /**
     * 获取倒车轨迹开关
     */
    boolean getReversingTrackSwitch();
    
    /**
     * 设置倒车轨迹开关
     */
    void setReversingTrackSwitch(in boolean aEnable);
    
    /**
     * 获取倒车静音开关
     */
     boolean getReversingMute();
    
    /**
     * 设置倒车静音开关
     */
    void setReversingMute(in boolean reversingMute);
    
    /**
     * 获取倒车基准线开关
     */
     boolean getReversingBaseline();
    
    /**
     * 设置倒车基准线开关
     */
    void setReversingBaseline(in boolean aEnable);

    /**
     * 获取全景摄像头开关
     */
    boolean getPanoramicCameraSwitch();
    
    /**
     * 设置全景摄像头开关
     */
    void setPanoramicCameraSwitch(in boolean aEnable);   
    
    /**
     * 获取Power按键功能类型
     */
    boolean getPowerKeySwitch();
    
    /**
     * 设置Power按键功能类型
     */
    void setPowerKeySwitch(in boolean aEnable); 
    
    /**
     * 获取RDS同步时间开关
     */
    boolean getRDSSyncSwitch();
    
    /**
     * 设置RDS同步时间开关
     */
    void enableRDSSyncSwitch(in boolean aEnable);
    
    /**
     * 设置系统时间
     */
    void setDateTime(byte hour,byte min,byte year1,byte year2,byte month,byte day,byte second);
    
	/**
	* 获得视频输入格式
	* @return 视频格式
	* 0x00：Auto
	* 0x01：NTSC
	* 0x02：PAL
	* 0x03：SECAM
	*/
	int getVideoInput();
	
	/**
	* 设置视频输入格式
	* @param aVideoInput: 视频格式
	* 0x00：Auto
	* 0x01：NTSC
	* 0x02：PAL
	* 0x03：SECAM
	*/
	void setVideoInput(in int aVideoInput);
	/**
	* 获得视频输出格式
	* @return 视频格式
	* 0x00：NTSC
	* 0x01：PAL
	*/
	int getVideoOutput();
	
	/**
	 * 设置视频输出格式
	 * @param aVideoOutput: 视频格式
	 * 0x00：NTSC
	 * 0x01：PAL
	 */
	void setVideoOutput(in int aVideoOutput);
	
	/**
	* 获得摄像头输出增益
	* @return 摄像头输出增益
	* 0x00：6dp
	* 0x01：0dp
	*/
	int getCameraOutGain();
	
	/**
	 * 设置摄像头输出增益
	 * @param aCameraOutputGain: 摄像头输出增益
	 * 0x00：6dp
	 * 0x01：0dp
	 */
	void setCameraOutGain(in int aCameraOutputGain);
	
	/**
	* 获得视频输出增益
	* @return 视频输出增益
	* 0x00：6dp
	* 0x01：0dp
	*/
	int getVideoOutGain();
	
	/**
	 * 设置视频输出增益
	 * @param aVideoOutputGain: 视频输出增益
	 * 0x00：6dp
	 * 0x01：0dp
	 */
	void setVideoOutGain(in int aVideoOutputGain);
	
		/**
	* 获得TV输出增益
	* @return TV输出增益
	* 0x00：6dp
	* 0x01：0dp
	*/
	int getTVOutGain();
	
	/**
	 * 设置视频输出增益
	 * @param aTVOutputGain: TV输出增益
	 * 0x00：6dp
	 * 0x01：0dp
	 */
	void setTVOutGain(in int aTVOutputGain);
	
	/**
	 * 获取屏幕亮度
	 * @return 屏幕亮度值【0-5】
	 */
	int getBrightness();
	
	/**
	 * 设置屏幕亮度
	 * @param aBrightness: 屏幕亮度值【0-255】
	 */
	void setBrightness(in int aBrightness);

	/**
	 * 获取音量大小
	 * @return 音量大小值【0-40】
	 */
	int getVolumeValue();

    /**
	 * 获取车标索引坐标
	 * @return 车标索引坐标值【0-71】
	 */
	int getCarLogoIndex();
	
    /**
	 * 设置车标索引坐标
	 * @param aCarLogoIndex: 车标索引坐标值【0-71】
	 */
	void setCarLogoIndex(in int aCarLogoIndex);
	
	/**
	 * 获取背光亮度设置信息
	 * @return 背光亮度设置信息数据集
	 */
	byte[] getBgLigtSettingInfo();
	
    /**
	 * 设置背光亮度设置信息
	 * @param aStatus: 当前背光亮度设置状态
	 * @param aBgLigtSettingInfo: 背光亮度设置信息数据集
	 */
	void setBgLigtSettingInfo(in int aStatus, in byte[] aBgLigtSettingInfo);
	
	/**
	 * 获取电机信息
	 * @return 电机信息数据集
	 */
	byte[] getMotorInfo();
	
    /**
	 * 请求电机信息
	 * @param  null
	 */
	void reqMotorInfo();
	
	/**
     *请求Canbus信息
     *
     */
    void reqCanbusInfo(in byte[] reqCode);
    
    /**
     *发送给MCU按键信息
     *
     */
    void reqMcuKey(in byte[] mcuKeyCode);
    
    /**
     *报告Canbus信息
     *
     */
    void reportCanbusInfo(in byte[] reportCode);

    //扩展 报告Canbus信息
    void reportCanbusInfoOther(byte req, in byte[] reportCode);

    /**
     *报告Canbus升级信息
     *
     */
    void reportCanbusUpdData(in byte[] reportCode);

    /**
    *上报MCU测试协议
    *
    */
    void reporTestMcuInfor(in byte[] reportCode);

	/**
	* 获得前置摄像头显示模式
	* @return 前置摄像头显示模式（0-Normal 1-Mirror）
	*/
	int getFrontCameraMode();
	
	/**
	* 设置前置摄像头显示模式
	* @param aCameraMode: 前置摄像头显示模式（0-Normal 1-Mirror）
	*/
	void setFrontCameraMode(in int aCameraMode);

	/**
	* 获得倒车视频显示模式
	* @return 倒车视频显示模式（0-Normal 1-Mirror）
	*/
	int getCameraMode();
	
	/**
	* 设置倒车视频显示模式
	* @param aCameraMode: 倒车视频显示模式（0-Normal 1-Mirror）
	*/
	void setCameraMode(in int aCameraMode);

	/**
	* 获取按键灯颜色---20170304暂时不用,被倒车静音取代
	* @return 按键灯颜色（0- Blue 1-Red）
	*/
	int getKeyColor();
	
	/**
	* 设置按键灯颜色---20170304暂时不用,被倒车静音取代
	* @param aKeyColor: 按键灯颜色（0- Blue 1-Red）
	*/
	void setKeyColor(in int aKeyColor);

	/**
	* 获取黑屏模式
	* @return 黑屏模式
	* 0x00：Off
	* 0x01：10s
	* 0x02：20s
	*/
	int getBlackOut();
	
	/**
	* 设置黑屏模式
	* @param aBlackOut: 黑屏模式
	* 0x00：Off
	* 0x01：10s
	* 0x02：20s
	*/
	void setBlackOut(in int aBlackOut);
	
	/**
	* 获取导航模块
	* @return 导航模块
	* 00: GPS
	* 01: GLONASS
	* 10: 保留
	* 11: 保留
	*/
	int getNavigationModule();
	
	/**
	* 设置导航模块
	* @param aNaviModule: 导航模块
	* 00: GPS
	* 01: GLONASS
	* 10: 保留
	* 11: 保留	
	*/
	void setNavigationModule(in int aNaviModule);
	
	/**
	* 获取蜂鸣器开关
	* @return 蜂鸣器开关(0-Off  1-On)
	*/
	boolean getBeep();
	
	/**
	* 设置蜂鸣器开关
	* @param aBeep: 蜂鸣器开关(0-Off  1-On)
	*/
	void setBeep(in boolean aBeep);
	
	/**
	* 获取时间显示模式
	* @return 时间显示模式(0-24Hr  1-12Hr)
	*/
	boolean getHourMode();
	
	/**
	* 设置时间显示模式
	* @param aHourMode: 时间显示模式(0-24Hr  1-12Hr)
	*/
	void setHourMode(in boolean aHourMode);
	
	/**
	* 获取当前收音区域
	* @return 当前收音区域
	* 0=USA
	* 1=Asia
	* 2=Japan
	* 3=Europe
	* 4=Europe(LW)
	* 5=OIRT
	*/
	int getCurrentArea();
	
	/**
	* 设置当前收音区域
	* @param aCurrentArea: 当前收音区域
	* 0=USA
	* 1=Asia
	* 2=Japan
	* 3=Europe
	* 4=Europe(LW)
	* 5=OIRT
	*/
	void setCurrentArea(in int aCurrentArea);
	
	/**
	* 获取收音近远端
	* @return 收音近远端（0-Distance  1-Local）
	*/
	boolean getRadioRange();
	
	/**
	* 设置收音近远端
	* @param aRadioRange: 收音近远端（0-Distance  1-Local）
	*/
	void setRadioRange(in boolean aRadioRange);
	
	/**
	* 获取面板类型信息
	* @return 面板类型值
	*/
	int getFactoryPanelType();
	
	/**
	* 设置面板类型
	* @param aPanelType: 面板类型值
	*/
	void setFactoryPanelType(in int aPanelType);

	/**
	* 获取CAN版本信息
	* @return CAN版本信息
	*/
	String getCanVersionInfo();

	/**
	* 获取重低音开关
	* @return 重低音开关（0-Off 1-On）
	*/
	boolean getSubSwitch();

	/**
	* 设置重低音开关
	* @param aSubSwitch: 重低音开关（0-Off 1-On）
	*/
	void setSubSwitch(in boolean aSubSwitch);

	/**
	* 获取重低音过滤频率
	* @return 重低音过滤频率
	* 0=80Hz
	* 1=120Hz
	* 2=160Hz
	*/
	int getSubWFilter();

	/**
	* 设置重低音过滤频率
	* @param aSubWFilter: 重低音过滤频率
	* 0=80Hz
	* 1=120Hz
	* 2=160Hz
	*/
	void setSubWFilter(in int aSubWFilter);

	/**
	* 获取DVD声音语言类型
	* @return DVD声音语言类型
	*/
	String getDVDAudio();

	/**
	* 设置DVD声音语言类型
	* @param aDVDAudio: DVD声音语言类型
	*/
	void setDVDAudio(in String aDVDAudio);

	/**
	* 获取DVD字幕语言类型
	* @return DVD字幕语言类型
	*/
	String getDVDSubTitle();

	/**
	* 设置DVD字幕语言类型
	* @param aDVDSubTitle: DVD字幕语言类型
	*/
	void setDVDSubTitle(in String aDVDSubTitle);

	/**
	* 获取碟片菜单语言类型
	* @return 碟片菜单语言类型
	*/
	String getDiscMenu();

	/**
	* 设置碟片菜单语言类型
	* @param aDiscMenu:碟片菜单语言类型
	*/
	void setDiscMenu(in String aDiscMenu);

	/**
	* 获取童锁密码
	* @return 童锁密码
	*/
	String getChildrenLockPassword();

	/**
	* 设置童锁密码
	* @param aChildrenLockPassword:童锁密码
	*/
	void setChildrenLockPassword(in String aChildrenLockPassword);

	/**
	* 获取童锁等级设置状态
	* @return 童锁等级设置状态0-Unlock   1-Lock
	*/
	int getChildrenLockLevelState();

	/**
	* 设置童锁等级设置状态
	* @param aChildrenLockLevelState:童锁等级设置状态0-Unlock   1-Lock
	*/
	void setChildrenLockLevelState(in int aChildrenLockLevelState);

	/**
	* 获取童锁等级
	* @return 童锁等级
	* 0x00:儿童级
	* 0x01:G
	* 0x02:PG
	* 0x03:PG-13
	* 0x04:PG-R
	* 0x05:R
	* 0x06:NC-17
	* 0x07:成人级
	*/
	int getChildrenLockLevel();

	/**
	* 设置童锁等级
	* @param aChildrenLockLevel:童锁等级
	* 0x00:儿童级
	* 0x01:G
	* 0x02:PG
	* 0x03:PG-13
	* 0x04:PG-R
	* 0x05:R
	* 0x06:NC-17
	* 0x07:成人级
	*/
	void setChildrenLockLevel(in int aChildrenLockLevel);

	/**
	 * 获取数字电视声音增益
	 * @return 数字电视声音增益【取值范围 1-12】
	 */
	int getCmmbGain();

	/**
	* 设置数字电视声音增益
	* @param aCmmbGain:数字电视声音增益【取值范围 1-12】
	*/
	void setCmmbGain(in int aCmmbGain);

	/**
	 * 获取数字电视声音增益
	 * @return 数字电视声音增益【取值范围 1-12】
	 */
	int getDvbtGain();

	/**
	* 设置数字电视声音增益
	* @param aCmmbGain:数字电视声音增益【取值范围 1-12】
	*/
	void setDvbtGain(in int aDvbtGain);

	/**
	 * 获取卫星收音声音增益
	 * @return 卫星收音声音增益【取值范围 1-12】
	 */
	int getXmGain();

	/**
	* 设置卫星收音声音增益
	* @param aXmGain:卫星收音声音增益【取值范围 1-12】
	*/
	void setXmGain(in int aXmGain);

	/**
	 * 获取数字收音声音增益
	 * @return 数字收音声音增益【取值范围 1-12】
	 */
	int getDabGain();

	/**
	* 设置数字收音声音增益
	* @param aXmGain:数字收音声音增益【取值范围 1-12】
	*/
	void setDabGain(in int aDabGain);

	/**
	* 获取DVD声音增益
	* @return DVD声音增益【取值范围 1-12】
	*/
	int getDVDGain();

	/**
	* 设置DVD声音增益
	* @param aDVDGain:DVD声音增益【取值范围 1-12】
	*/
	void setDVDGain(in int aDVDGain);

	/**
	* 获取Radio声音增益
	* @return Radio声音增益【取值范围 1-12】
	*/
	int getRadioGain();

	/**
	* 设置Radio声音增益
	* @param aDVDGain:Radio声音增益【取值范围 1-12】
	*/
	void setRadioGain(in int aDVDGain);

	/**
	* 获取BT声音增益
	* @return BT声音增益【取值范围 1-12】
	*/
	int getBTGain();

	/**
	* 设置BT声音增益
	* @param aBTGain:BT声音增益【取值范围 1-12】
	*/
	void setBTGain(in int aBTGain);

	/**
	 * 获取Parking
	 */
	boolean getParking();

	/**
	 * 设置Parking
	 */
	void setParking(boolean aParking);

	/**
	* 获取AV-IN1声音增益
	* @return AV-IN1声音增益【取值范围 1-12】
	*/
	int getAV1Gain();

	/**
	* 设置AV-IN1声音增益
	* @param aAV1Gain声音增益【取值范围 1-12】
	*/
	void setAV1Gain(in int aAV1Gain);

	/**
	* 获取AV-IN2声音增益
	* @return AV-IN2声音增益【取值范围 1-12】
	*/
	int getAV2Gain();

	/**
	* 设置AV-IN2声音增益
	* @param aAV2Gain声音增益【取值范围 1-12】
	*/
	void setAV2Gain(in int aAV2Gain);

	/**
	* DVD工厂设置
	* @param aDvdServoLoaderStart
	*/
	void setDvdServoLoaderStart(in boolean aDvdServoLoaderStart);

	/**
	* DVD工厂设置
	* @param aDvdClearCounter
	*/
	void setDvdClearCounter(in boolean aDvdClearCounter);

	/**
	* 按键工厂设置
	* @param aKeyDebug
	*/
	void setKeyDebug(in boolean aKeyDebug);

	/**
	* 获取工厂设置收音区域
	* @return 工厂设置收音区域
	* 0=USA
	* 1=Asia
	* 2=Japan
	* 3=Europe
	* 4=Europe(LW)
	* 5=OIRT
	*/
	int getFactoryRadioArea();

	/**
	* 设置工厂设置收音区域
	* @param aFactoryRadioArea工厂设置收音区域
	* 0=USA
	* 1=Asia
	* 2=Japan
	* 3=Europe
	* 4=Europe(LW)
	* 5=OIRT
	*/
	void setFactoryRadioArea(in int aFactoryRadioArea);

	/**
	* 获取工厂设置收音模式
	* @return 工厂设置收音模式
	* 0 = TBK（泰丰）
	* 1 = KSE（光星）
	* 2 = NXP
	*/
	int getFactoryRadioModel();

	/**
	* 设置工厂设置收音模式
	* @param aFactoryRadioModel工厂设置收音模式
	* 0 = TBK（泰丰）
	* 1 = KSE（光星）
	* 2 = NXP
	*/
	void setFactoryRadioModel(in int aFactoryRadioModel);

	/**
	* 获取工厂设置RDS类型
	* @return 工厂设置RDS类型
	* 0x00：NO RDS
	* 0x01：RBDS
	* 0x02：RDS
	*/
	int getFactoryRDSType();

	/**
	* 设置工厂设置RDS类型
	* @param aFactoryRDSType工厂设置RDS类型
	* 0x00：NO RDS
	* 0x01：RBDS
	* 0x02：RDS
	*/
	void setFactoryRDSType(in int aFactoryRDSType);

	/**
	* 获取工厂设置FM本地的值
	* @return 工厂设置FM本地的值 【取值范围 0-15】
	*/
	int getFactoryFMLocal();

	/**
	* 设置工厂设置FM本地的值
	* @param aFactoryFMLocal工厂设置FM本地的值 【取值范围 0-15】
	*/
	void setFactoryFMLocal(in int aFactoryFMLocal);

	/**
	* 获取工厂设置FM远程的值
	* @return 工厂设置FM远程的值 【取值范围 0-15】
	*/
	int getFactoryFMDistant();

	/**
	* 设置工厂设置FM远程的值
	* @param aFactoryFMDistant工厂设置FM远程的值 【取值范围 0-15】
	*/
	void setFactoryFMDistant(in int aFactoryFMDistant);

	/**
	* 获取工厂设置AM本地的值
	* @return 工厂设置AM本地的值 【取值范围 0-15】
	*/
	int getFactoryAMLocal();

	/**
	* 设置工厂设置FM本地的值
	* @param aFactoryAMLocal工厂设置FM本地的值 【取值范围 0-15】
	*/
	void setFactoryAMLocal(in int aFactoryAMLocal);

	/**
	* 获取工厂设置AM远程的值
	* @return 工厂设置AM远程的值 【取值范围 0-15】
	*/
	int getFactoryAMDistant();

	/**
	* 设置工厂设置FM远程的值
	* @param aFactoryAMDistant工厂设置FM远程的值 【取值范围 0-15】
	*/
	void setFactoryAMDistant(in int aFactoryAMDistant);

	/**
	 * 获取工厂设置区域代码
	 * @return 工厂设置区域代码 【取值范围 0-6】
	 *  <item>0 All Section</item>
	 *  <item>1 Section</item>
	 *  <item>2 Section</item>
	 *  <item>3 Section</item>
	 *  <item>4 Section</item>
	 *  <item>5 Section</item>
	 *  <item>6 Section</item>
	 */
	int getFactorySystemRegioncode();

	/**
	 * 设置工厂设置区域代码
	 * @param aFactorySystemRegioncode 工厂设置区域代码 【取值范围 0-6】
	 *  <item>0 All Section</item>
	 *  <item>1 Section</item>
	 *  <item>2 Section</item>
	 *  <item>3 Section</item>
	 *  <item>4 Section</item>
	 *  <item>5 Section</item>
	 *  <item>6 Section</item>
	 */
	void setFactorySystemRegioncode(in int aFactorySystemRegioncode);

	/**
	 * 获取工厂设置电视区域
	 * @return 工厂设置电视区域 【取值范围 0-8】
	 *  <item>0 USA</item>
	 *  <item>1 Europe</item>
	 *  <item>2 China</item>
	 *  <item>3 Italy</item>
	 *  <item>4 OIRT</item>
	 *  <item>5 New Zealand</item>
	 *  <item>6 South Africa</item>
	 *  <item>7 rench</item>
	 *  <item>8 ndonesia</item>
	 */
	int getFactorySystemTVArea();

	/**
	 * 设置工厂设置电视区域
	 * @param aFactorySystemTVArea 工厂设置电视区域【取值范围 0-8】
	 *  <item>0 USA</item>
	 *  <item>1 Europe</item>
	 *  <item>2 China</item>
	 *  <item>3 Italy</item>
	 *  <item>4 OIRT</item>
	 *  <item>5 New Zealand</item>
	 *  <item>6 South Africa</item>
	 *  <item>7 rench</item>
	 *  <item>8 ndonesia</item>
	 */
	void setFactorySystemTVArea(in int aFactorySystemTVArea);

	/**
	 * 获取工厂设置CAN类型
	 * @return 工厂设置CAN类型
	 */
	int getFactoryCanType();

	/**
	 * 设置工厂设置CAN类型
	 * @param aFactoryCanType 工厂设置CAN类型
	 */
	void setFactoryCanType(in int aFactoryCanType);

	/**
    	 * 设置硬件屏幕翻转
    	 * @param reverse 硬件屏幕是否翻转
    	 */
    	void setScreenreverse(in boolean reverse);

    boolean getScreenreverse();

	/**
	 * 设置工厂设置BT模块
	 * @param aFactoryBtModule 工厂设置BT模块
	 */
	void setFactoryBtModule(in int aFactoryBtModule);

	/**
	 * 获取工厂设置DTV模块
	 * @return 工厂设置DTV模块
	 */
	int getFactoryDtvModule();

	/**
	 * 设置工厂设置DTV模块
	 * @param aFactoryDtvModule 工厂设置DTV模块
	 */
	void setFactoryDtvModule(in int aFactoryDtvModule);



	/**
     * 设置工厂设置T8 后枕屏显示模块
     * @param aFactoryDtvModule 工厂设置DTV模块
      */
    void setFactoryT8AVOUT_Display(in int t8avout_display);

     /**
        * 设置工厂设置T8 后枕屏显示模块
         * @param aFactoryDtvModule 工厂设置DTV模块
          */
    int getFactoryT8AVOUT_Display();


	boolean getFactorySystemAutodimmerfunc();

	void setFactorySystemAutodimmerfunc(in boolean aAutodimmerfunc);

	boolean getFactorySystemBrakeoverride();

	void setFactorySystemBrakeoverride(in boolean aBrakeoverride);

	boolean getFactorySystemMechaback();

	void setFactorySystemMechaback(in boolean aMechaback);

	void setFactoryTFTMotorteststart(in boolean aFactoryTFTMotorteststart);

	void setFactoryLoadDefault(in boolean aFactoryLoadDefault);

	int getBTMic();

	void SetBTMic(int aMic);

	int getDVDTestCount();

	/**
	* 获取音效平衡前左值
	* @return 音效平衡前左值【取值范围 0-24】
	 */
	int getFadeBalanceFL();

	/**
	 * 获取音效平衡前右值
	 * @return 音效平衡前右值【取值范围 0-24】
	 */
	int getFadeBalanceFR();

	/**
	 * 获取音效平衡后左值
	 * @return 音效平衡后左值【取值范围 0-24】
	 */
	int getFadeBalanceRL();

	/**
	 * 获取音效平衡后右值
	 * @return 音效平衡后右值【取值范围 0-24】
	 */
	int getFadeBalanceRR();

	/**
	 * 设置音效平衡
	 * @param aFL 音效平衡前左值【取值范围 0-24】
	 * @param aFR 音效平衡前右值【取值范围 0-24】
	 * @param aRL 音效平衡后左值【取值范围 0-24】
	 * @param aRR 音效平衡后左值【取值范围 0-24】
	 */
	void setFadeBalance(in int aFL,in int aFR,in int aRL,in int aRR);

	/**
	 * 获取重低音的值
	 * @return 重低音的值【取值范围 0-24】
	 */
	int getSubWGain();

	/**
	 * 设置重低音的值
	 * @param aSubWGain 重低音的值【取值范围 0-24】
	 */
	void setSubWGain(in int aSubWGain);

	/**
	 * 获取响度补偿开关
	 * @return 响度补偿开关
	 */
	boolean getLoudness();

	/**
	 * 设置响度补偿开关
	 * @param aLoudness 响度补偿开关
	 */
	void setLoudness(in boolean aLoudness);

	/**
	 * 获取当前音效类型
	 * @return 当前音效类型 【取值范围 0-7】
	 * 0	FLAT
	 * 1	POP
	 * 2	USER
	 * 3	TECHNO
	 * 4	ROCK
	 * 5	CLASSIC
	 * 6	JAZZ
	 * 7	OPTIMAL
	 */
	int getEQType();

	/**
	 * 设置当前音效类型
	 * @param aEQType 当前音效类型  【取值范围 0-7】
	 * 0	FLAT
	 * 1	POP
	 * 2	USER
	 * 3	TECHNO
	 * 4	ROCK
	 * 5	CLASSIC
	 * 6	JAZZ
	 * 7	OPTIMAL
	 */
	void setEQType(in int aEQType);

	/**
	 * 根据音效类型获取低音
	 * @param aEQType 音效类型  【取值范围 0-7】
	 * @return 获取低音  【取值范围 0-28】
	 */
	int getEQBass(in int aEQType);

	/**
	 * 根据音效类型获取低音频率
	 * @param aEQType 音效类型  【取值范围 0-7】
	 * @return 获取低音频率  【取值范围 0-3】
	 */
	int getEQBassValue(in int aEQType);

	/**
	 * 根据音效类型获取中音
	 * @param aEQType 音效类型  【取值范围 0-7】
	 * @return 获取中音  【取值范围 0-28】
	 */
	int getEQMid(in int aEQType);

	/**
	 * 根据音效类型获取中音频率
	 * @param aEQType 音效类型  【取值范围 0-7】
	 * @return 获取中音频率 【取值范围 0-3】
	 */
	int getEQMidValue(in int aEQType);

	/**
	 * 根据音效类型获取高音
	 * @param aEQType 音效类型  【取值范围 0-7】
	 * @return 获取高音  【取值范围 0-28】
	 */
	int getEQTreble(in int aEQType);

	/**
	 * 根据音效类型获取高音频率
	 * @param aEQType 音效类型  【取值范围 0-7】
	 * @return 获取高音频率 【取值范围 0-3】
	 */
	int getEQTrebleValue(in int aEQType);

    int getSoundMixScale();

    void setSoundMixScale(int scale);

	/**
	 * 根据音效类型设置低音
	 * @param aEQType 音效类型  【取值范围 0-7】
	 * @param aEQBass 低音  【取值范围 0-28】
	 */
	void setEQBass(in int aEQType,in int aEQBass);

	/**
	 * 根据音效类型设置低音频率
	 * @param aEQType 音效类型   【取值范围 0-7】
	 * @param aEQBassValue 低音频率 【取值范围 0-3】
	 */
	void setEQBassValue(in int aEQType,in int aEQBassValue);

	/**
	 * 根据音效类型设置低音频率和频率值
	 * @param aEQType 音效类型   【取值范围 0-7】
	 * @param aEQBass 频率值   【取值范围 0-28】
	 * @param aEQBassValue 低音频率 【取值范围 0-3】
	 */
	void setEQBassAndValue(in int aEQType,in int aEQBass,in int aEQBassValue);

	/**
	 * 根据音效类型设置中音
	 * @param aEQType 音效类型  【取值范围 0-7】
	 * @param aEQMid 中音  【取值范围 0-28】
	 */
	void setEQMid(in int aEQType,in int aEQMid);

	/**
	 * 根据音效类型设置中音频率
	 * @param aEQType 音效类型  【取值范围 0-7】
	 * @param aEQEQMidValue 中音频率 【取值范围 0-3】
	 */
	void setEQMidValue(in int aEQType,in int aEQMidValue);

	/**
	 * 根据音效类型设置中音频率和频率值
	 * @param aEQType 音效类型  【取值范围 0-7】
	 * @param aEQMid 频率值  【取值范围 0-28】
	 * @param aEQEQMidValue 中音频率 【取值范围 0-3】
	 */
	void setEQMidAndValue(in int aEQType,in int aEQMid,in int aEQMidValue);

	/**
	 * 根据音效类型设置高音
	 * @param aEQType 音效类型  【取值范围 0-7】
	 * @param aEQTreble 高音  【取值范围 0-28】
	 */
	void setEQTreble(in int aEQType,in int aEQTreble);

	/**
	 * 根据音效类型设置高音频率
	 * @param aEQType 音效类型  【取值范围 0-7】
	 * @param aEQTrebleValue 高音频率 【取值范围 0-3】
	 */
	void setEQTrebleValue(in int aEQType,in int aEQTrebleValue);

	/**
	 * 根据音效类型设置高音频率和频率值
	 * @param aEQType 音效类型  【取值范围 0-7】
	 * @param aEQTreble 频率值  【取值范围 0-28】
	 * @param aEQTrebleValue 高音频率 【取值范围 0-3】
	 */
	void setEQTrebleAndValue(in int aEQType,in int aEQTreble,in int aEQTrebleValue);

	/**
	 * 获取低音Q值【取值范围 0-3】
	 * @param aEQType 音效类型  【取值范围 0-7】
	 */
	int getEQBassQValue(in int aEQType);

	/**
	 * 设置低音Q值
	 * @param aEQBassQValue 低音Q值【取值范围 0-3】
	 * @param aEQType 音效类型  【取值范围 0-7】
	 */
	void setEQBassQValue(in int aEQType,in int aEQBassQValue);

	/**
	 * 获取中音Q值【取值范围 0-3】
	 * @param aEQType 音效类型  【取值范围 0-7】
	 */
	int getEQMidQValue(in int aEQType);

	/**
	 * 设置中音Q值
	 * @param aEQMidQValue 中音Q值 【取值范围 0-3】
	 * @param aEQType 音效类型  【取值范围 0-7】
	 */
	void setEQMidQValue(in int aEQType,in int aEQMidQValue);

	/**
	 * 恢复音效默认
	 */
	void setEQResetDefault();

	/**
	 * 根据音效类型设置高音频率和频率值
	 * @param mEQType 音效类型  【取值范围 0-6】
	 * @param mCurrentFreqLevel 频率值  【取值范围 0-28】
	 * @param mCurrentFreqIndex 频率 索引【取值范围 0-9】
	 */
	void setEQTypeFreqLevelValue(int mEQType,int mCurrentFreqLevel,int mCurrentFreqIndex);

	/**
	 * 获取10段EQ音效类型
	 * @param mEQType 音效类型  【取值范围 0-6】
	 */
	int[] getEQTypeFreqLevelValue(int aEQType);

	/**
	 * EQ音效 硬件版本号
	 * 1 旧版本   2新版本 新DSP
	 */
	int getEQ_HARDWARE_VERSION();

	/**
	 * ##################################################
	 * #                  PNL KEY begin                 #
	 * ##################################################
	 */
	/**
	 * 请求PNL对象列表
	 * @param reqType 请求的类型【0-面板按鍵  1-面板旋钮】
	 */
	void reqPNLAllKeyInfo(in int reqType);

	/**
	 * 获取PNL对象列表
	 * @param aType 获取的数据类型【0-面板按鍵  1-面板旋钮】
	 */
	byte[] getPNLAllKeyInfo(in int aType);

	/**
	 * PNL采样
	 * @param flag 采样始止标志【0-采样开始   1-采样结束】
	 */
	void pnlSample(in int flag);

	/**
	 * 保存PNL设置
	 * @param aType 保存PNL对象类型【0-面板按鍵  1-面板旋钮】
	 * @param allPnlKeyInfo PNL对象列表
	 */
	void savePNLSettings(in int aType, in byte[] PnlInfo);

	/**
	 * ##################################################
	 * #                  PNL KEY end                   #
	 * ##################################################
	 */

	/**
	 * ##################################################
	 * #                  SWC begin                     #
	 * ##################################################
	 */
	/**
	 * 通知mcu打开swc
	 */
	void openSWC();

	/**
	 * 通知mcu关闭swc
	 */
	void closeSWC();
	/**
	 * 获取SWC按键对象列表
	 */
	void getSWCSettings();

	void getSwcLongKeySetting();

	/**
	 * 开始采样
	 * @param aKey SWC按键对象
	 */
	void startSWCSample(byte aKeyId);

	/**
	 * 结束采样
	 */
	void endSWCSample();

	/**
	 * 保存SWC设置
	 */
	void saveSWCSettings(in byte[] aKeyList);

	void saveSWCSettingsLongKey(in byte[] aKeyList);

	/**
	 * SWC重置
	 */
	void reSetSWC();

	/**
	 * 注册SWC回调
	 * @param aCallBack SWC回调对象
	 */
	String registerSWCCallBack(in ISWCCallBackInterface aCallBack);

	/**
	 * 取消注册SWC回调
	 * @param 回调令牌
	 */
	void unRegisterSWCCallBack(in String aToken);
	/**
	 * ##################################################
	 * #                   SWC end                      #
	 * ##################################################
	 */

	/**
	 * 注册SWC回调
	 * @param aCallBack SWC回调对象
	 */
	void registerAutoTestCallBack(in IAutoTestCallBackInterface aCallBack);

	/**
	 * 取消注册SWC回调
	 * @param 回调令牌
	 */
	void unRegisterAutoTestCallBack(in IAutoTestCallBackInterface aCallBack);

	/**
	 * 将位置信息告诉PC
	 */
	void setAutoTestLocationToPC(in Location aLocation, in int type);

	/**
	 * 获取多彩灯值
	 * @return 多彩灯值的RGB值
	 */
	byte[] getColorLed();

	/**
	 * 获取多彩灯值 类型
	 * @return 多彩灯类型
	 */
	int getColorLedType();

	/**
	 * 设置多彩灯值
	 */
	void setColorLed(in boolean enter, in byte r, in byte g, in byte b);

	void setColorLedwithType(in byte type,in byte r, in byte g, in byte b);

	/**
	 * 将版本号告诉PC
	 */
	void setAutoTestVersionToPC(in int type);

	/**
	*
	*/
	void requestEqBalance();

	/**
	 * 设置TPMS 播放状态 isplaying:boolean 用于设置beep_mute
	 */
	void setTpmsPlaying(in boolean isplaying);
	byte getShutDownDelayTimeAccOff();
	void setShutDownDelayTimeAccOff(in byte time);

	void saveAppdata(in String filePath);
	void sendAppdata(in String filePath);
	//add zengyuke 20180316 请求EQ类型
	void refreshEQType();

    byte[] getMcuAmpItem(in byte[] reqAmp);

    /**
    * 获取media声音增益
    * @return media声音增益【取值范围 1-15】
    */
    int getMediaGain();

    /**
    * 获取car media声音增益
    * @return carmedia声音增益【取值范围 1-15】
    */
    int getCarMediaGain();

    /**
    * 设置media声音增益
    * @param aGain:media声音增益【取值范围 1-15】
    */
    void setMediaGain(in int aGain);

    /**
    * 设置车机media声音增益，默认15
    * @param aGain:media声音增益【取值范围 1-15】
    */
    void setCarMediaGain(in int aGain);

    /**
    * 获取navi声音增益
    * @return navi声音增益【取值范围 1-15】
    */
    int getNaviGain();

    /**
    * 设置navi声音增益
    * @param aGain:Navi声音增益【取值范围 1-15】
    */
    void setNaviGain(in int aGain);

    /**
    * 获取BT电话声音增益
    * @return BT电话声音增益【取值范围 1-12】
    */
    int getBTPhoneGain();

    /**
    * 设置BT电话声音增益
    * @param aBTGain:BT电话声音增益【取值范围 1-12】
    */
    void setBTPhoneGain(in int aBTPhoneGain);


    /**
    * 获取BT音乐声音增益
    * @return BT音乐声音增益【取值范围 1-12】
    */
    int getBTAudioGain();

    /**
    * 设置BT音乐声音增益
    * @param aBTGain:BT音乐声音增益【取值范围 1-12】
    */
    void setBTAudioGain(in int aBTAudioGain);
   /**
     * 设置CNABUS 原车空调隐藏
   */
    void setCanbusAirHide(boolean status);
    boolean getCanbusAirHide();

    /**
     * 设置CNABUS 原车按键上下曲作用反
     */
    void setCanbusSwapKeyUpDn(boolean status);
    boolean getCanbusSwapKeyUpDn();

    /**
     设置CNABUS 原车按键prev next作用反
     */
    void setCanbusSwapKeyPrevNext(boolean status);
    boolean getCanbusSwapKeyPrevNext();

    //一次性发送互换CNABUS 原车的两对按键
    void setCanbuKeySwap(boolean statusUpDn,boolean statusTack);

    void setVcom(in byte[] values);

    int getVcom();

    void setNetworkLicense(in byte value);

    int getNetworkLicense();

    int getConfigAmbulance();

    int getDefaultSharedUtilInt(String key);

    boolean getDefaultSharedUtilBoolean(String key);

    void setAnalogInputColor(int brightness,int contrast,int saturation);

    void setDiscEnteringTime(byte level);
    void setDiscEjectingTime(byte level);

    byte getDiscEnteringTime();
    byte getDiscEjectingTime();

    void reportKeySensitivityValue(in byte flags,in byte[] reportCode);



    /**
     * 设置工厂设置CANBUS 串口波特率
     */
    void setCanBaudRate(in int level);
    int getCanBaudRate();

    //设置是否快充
    void setFastCharging(in int flags);
    int getFastCharging();

   //设置是否支持快充
   void setFastChargingisSupport(in int flags);
   int getFastChargingisSupport();

   //设置ANT 状态
   void setAntStasus(in int flags);
   int getAntStasus();

   /**
    * 设置视频芯片N3 通道类型
     */
   void setVideoChipN3ChannelType(in int channel , int type);
   int getVideoChipN3ChannelType(in int channel);

   void setHdmiDisplayerResolution(int resolution);

   void sendSelectCarCanTypeInfoMCU(int baudRate,int canTypeId,int isAppHandleRealKey,int packType);


    void setCanIsAppHandleKey(int value) ;
    int getCanIsAppHandleKey();
    void setCanPackType(int value);
    int getCanPackType();
    
    /**
   * 获取Carplay类型。
   */
   void notifyCarplayVolumeType(in int type);

   //工厂设置是否 支持冷却风扇
    void setCoolerFanSupport(in int flags);

    /**
    * 设置所有EQ数据
    * @param value
    */
    void setEQLevelValue(in int[] value);

    /**
     * 获取所有EQ数据
     * @param value
    */
    int[] getEQLevelValue();

    void getSysSetting();

    // 倒车延时升级设置
    int getreverse_exit_mcudelaytime_settings();
    void setreverse_exit_mcudelaytime_settings(in int time);
    //关闭MCU倒车检测 true: 关闭， false： 打开
    void setCloseReverseDetect(boolean status);
    boolean getCloseReverseDetect();
    //设置主机功放控制线线--JNI //T3O DSP
    void setHostPowerAmp(boolean status);
    //设置T3O LVDS显示 驱动电流
    int getFactoryLvdsDisplayDriverCurrentLevel();
    void setFactoryLvdsDisplayDriverCurrentLevel(int level);

    //
    void setSWCLearnLevel(in int level);
    int getSWCLearnLevel();

    int getUbootVersion();//Rk3399 ubootVersion

    void reportSmartPowerInfo(in byte[] bytes);

     //色彩调色值存BSP
    void saveChipN3BackCameraColorAdjust_to_bsp(int brightness,int contrast,int saturation);

    //设置PX6 4G 模块选择
    int getFactory4GModule();
    void setFactory4GModule(int module);

    //设置PX6 4G 模块选择
    int getFactoryLcdDriveConfig();
    void setFactoryLcdDriveConfig(int config);
    //方向
    int getFactoryDirection();
    void setFactoryDirection(in int aFactoryDirection);
    /**
     * 获取工厂设置Encoding模块
     * @return 工厂设置Encoding模块
     */
    int getFactoryEncoding();
    /**
     * 设置工厂设置Encoding模块
     * @param aFactoryEncoding 工厂设置Encoding模块
     */
    void setFactoryEncoding(in int aFactoryEncoding);

    void reportDevice_YH(in byte[] bytes);
}