// IBluetoothInterface.aidl
package com.hzbhd.midwareproxy.binder.service;

// Declare any non-default types here with import statements

/** bluetooth service interface */
interface IBluetoothInterface
{
    //device management
    boolean isEnabled();
    boolean enable();
    boolean disable();
    String getHostBTAddress();
    String getHostBTName();
    boolean setHostBTName(String name);
    boolean setPin(String name);
    String getPin();
    String getVersion();
    boolean autoConnect(boolean bAuto);
    boolean autoReply(boolean bAuto);
    boolean isAutoConnect();
    boolean isAutoReply();   
    
    int getPairedDeviceNums();    
    String getPairedDeviceAddress(int devID);
    String getPairedDeviceName(int devID);
    boolean deletePairedDevice(String devAddr);   
    
    boolean connectDevice(String devAddr);
    boolean isDeviceConnected();
    String getConnectedDevAddr();   
    String getConnectedDevName();

    
    //A2DP & AVRCP
    boolean connectA2DP();
    boolean disconnectA2DP();
    boolean isA2DPConnected();
    boolean isPlaying();
    boolean play();
    boolean pause();
    boolean prev();
    boolean next();
    int getPosition();
    int getDuration();
    boolean connectA2DPDev(String devAddr);
    String getA2DPConnectedDevAddr();   
    String getA2DPConnectedDevName();

    //HFP
    boolean connectHFP();
    boolean connectHFPDev(String devAddr);
    boolean disconnectHFP();
    boolean isHFPConnected();
    boolean answerCall();
    boolean rejectCall();
    int getHFPState();//in order to know outgoing call or incoming call
    boolean terminateCall();
    boolean callOut(String number);
    boolean reDial();
    boolean muteMic(boolean bMute);
    String getCallerNum();
    boolean sendDTMF(byte dtmf);
    boolean syncPhonebook(int syncType);
    int getCallTime();
    boolean switchDevOrPhone(int devOrPho);
    int isPhoneOrDevice();
    boolean isMicMute();
    boolean enhancedCallCtrl(int action);
    
    //discovery
    boolean startDevInquiry();
    boolean stopDevInquiry();
    boolean getInquiryState();
    
    boolean isSyncPhoneBookNow();
    boolean isSyncCallLogNow();
    
    int queryContact();
    int queryCallHistory();   
    int getCount();
    String getFullName(int position);
    String getTelNumber(int position);
    int getMemoryType(int position);
    String getCallHistoryName(int position);
    String getCallHistoryTelNumber(int position);
    int getCallType(int position);
    String getContactNameByTelNumber(String number);

    
    void registerCallBack(IBinder callbackInterface);
}
