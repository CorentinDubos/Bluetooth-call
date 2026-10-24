package com.hzbhd.midwareproxy.binder.service;
import com.hzbhd.midwareproxy.binder.callback.ISurgingPowerCallback;
interface ISurgingPwerInterface{
    void sendMsg(in byte[] msgData);
    	/**
    	 * 注册SWC回调
    	 * @param aCallBack SWC回调对象
    	 */
    	String registerCallBack(in ISurgingPowerCallback aCallBack);

    	/**
    	 * 取消注册SWC回调
    	 * @param 回调令牌
    	 */
    void unRegisterCallBack(in String aToken);
}