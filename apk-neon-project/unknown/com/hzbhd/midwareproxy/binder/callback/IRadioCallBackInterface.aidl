// IAudioControlInterface.aidl
package com.hzbhd.midwareproxy.binder.callback;

// Declare any non-default types here with import statements

/** Radio service interface */
interface IRadioCallBackInterface
{
    void seachUpdate(int freq,int progress);
    void seekUpdate(int freq, int end);
}