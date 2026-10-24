// ISWCCallBackInterface.aidl
package com.hzbhd.midwareproxy.binder.callback;

// Declare any non-default types here with import statements
interface ISWCCallBackInterface {
	/**
	 * 采样结果
	 * @param aLock 按键对象是否锁定
	 * @param aKeyId 按键对象ID
	 */
    void notifySWCSample(in boolean aLock,in int aKeyId);
    
    /**
     * 获取SWC的设置内容
	 * @param aKeyList 按键对象集合
     */
    void notifySwcSettings(in byte[] aKeyList);

    void notifySwcLongKeySettings(in byte[] aKeyList);
}