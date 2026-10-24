// IBluetoothInterface.aidl
package com.hzbhd.midwareproxy.binder.service;

import com.hzbhd.midwareproxy.binder.callback.IAuxVideoCallBackInterface;

/** bluetooth service interface */
interface IAuxVideoInterface
{
    //video management
    
    int getVideoState(int whichVideo);
    int getVideoFotmat(int whichVideo);
    int getParingState();
    
    boolean registerParkingCallback(IAuxVideoCallBackInterface cb);   
    
    boolean unregisterParkingCallback(IAuxVideoCallBackInterface cb);
}
