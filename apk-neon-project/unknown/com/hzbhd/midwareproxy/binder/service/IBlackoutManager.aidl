// IBlackoutManager.aidl
package com.hzbhd.midwareproxy.binder.service;

import com.hzbhd.midwareproxy.binder.callback.IBlackoutCallBackInterface;
/** Settings service interface */
interface IBlackoutManager {

	/**
	* 注册回调函数
	* @param aCallbackInterface: 回调函数
	* @return 注册令牌
	*/
    String registerCallBack(in IBlackoutCallBackInterface aCallbackInterface);
    
    /**
	* 注销回调函数
	* @param aToken: 注册令牌
	 */
    void unRegisterCallBack(in IBlackoutCallBackInterface aCallbackInterface);

	/**
	* cancel Blackout and finish black screen(activity)
	*/
    boolean cancelBlackout();
    void setBlackoutMode();
    
}