// IBlackoutCallBackInterface.aidl
package com.hzbhd.midwareproxy.binder.callback;

// Declare any non-default types here with import statements

interface IBlackoutCallBackInterface {
	    
    /**
     * request close blackout activity
     */
    boolean notifyBlackoutFinish();
}