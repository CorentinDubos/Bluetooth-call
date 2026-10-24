// ISettingCallBackInterface.aidl
package com.hzbhd.midwareproxy.binder.callback;

// Declare any non-default types here with import statements

interface ISettingCallBackInterface {
	/**
	 * 更新音效类型界面
	 */
    void notifyEQTypeUI();
    
	/**
	 * 更新音效平衡界面
	 */
    void notifyEQBalanceUI();
    
    /**
     * 更新音效平衡中设置相关界面
     */
    void notifyEQSettingUI();
    
    /**
     * 更新黑屏模式
     */
    void notifyBlackOut(int aBlackOut);
}