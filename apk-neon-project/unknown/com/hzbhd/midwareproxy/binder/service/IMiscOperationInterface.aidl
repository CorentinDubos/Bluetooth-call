
// IMcuOperationInterface.aidl
package com.hzbhd.midwareproxy.binder.service;

// Declare any non-default types here with import statements

/** MucOperation service interface */
interface IMiscOperationInterface
{
	void registerCallBack(IBinder callbackInterface);

	boolean muteSource();
 	boolean unmuteSource();
 	
 	boolean increase();
 	boolean decrease();

 	boolean setVolumeVal(int val);
 	void turnOffBacklight();
 	void turnOnBacklight();

 	//获取倒车状态
 	boolean isReverse();
 		
	boolean getParkingState();
	boolean isPowerOffStatus();

    void rotateScreen(boolean isPortrateScreen);
    void detectRotateScreen();
    void detectRotate(int val);
    boolean isPortrateScreen() ;

    int getBacklightStatus();

// 假关机状态会开声音 开背光,
    void notify_Audio_LightOn_status(String source,boolean needopen);
}