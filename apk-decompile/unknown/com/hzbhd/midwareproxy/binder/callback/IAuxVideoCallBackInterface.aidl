// IAudioControlInterface.aidl
package com.hzbhd.midwareproxy.binder.callback;

// Declare any non-default types here with import statements

/** Radio service interface */
interface IAuxVideoCallBackInterface
{
    void reportVideoStatus(int videoType, int videoState, int videoFormat);
	void onParkingStateChanged(int state);
}