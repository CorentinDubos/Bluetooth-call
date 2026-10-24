package com.hzbhd.midwareproxy.binder.callback;

interface ISurgingPowerCallback{
    void notifySurgingPower(in byte[] msgData);
        	/**
        	 * 注册SWC回调
        	 * @param aCallBack SWC回调对象
        	 */
//        	void registerAutoTestCallBack(in ISurgingPwerInterface service);

        	/**
        	 * 取消注册SWC回调
        	 * @param 回调令牌
        	 */
//        	void unRegisterSwcCallback();
}