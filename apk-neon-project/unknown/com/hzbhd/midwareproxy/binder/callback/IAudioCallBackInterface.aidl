// IAudioControlInterface.aidl
package com.hzbhd.midwareproxy.binder.callback;

// Declare any non-default types here with import statements

/** Radio service interface */
interface IAudioCallBackInterface
{
    void ampVolumeUpdate(int vol);
    void muteChanged(boolean isMute);
}