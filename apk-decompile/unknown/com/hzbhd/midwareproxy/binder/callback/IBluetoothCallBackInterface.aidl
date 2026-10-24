// IAudioControlInterface.aidl
package com.hzbhd.midwareproxy.binder.callback;

// Declare any non-default types here with import statements

/** Radio service interface */
interface IBluetoothCallBackInterface
{
     void phoneBookSync(int recordType, String fullName,String phoneNumber, int state);
     void BTAudioChannelRequest(int source,boolean isRquest);
     void newDevicePaired(String devAddr,String devName);
     void newDeviceSearch(String devAddr,String devName);
     void InquiryStateChanged(int state,int prevState);
     void A2DPActionChanged(int state,int prevState);
     void HFPActionChanged(int state,int prevState);
     void newConnectionDevName(int profile, String devName);
     void A2dpPlayStateChanged(int state);
     void HFPMicStateChanged(int state);
     void HFPSwitchStateChanged(int state);
     void MethodResultReturned(int method,int callResult,int hfpState,int sinkState);
   
}