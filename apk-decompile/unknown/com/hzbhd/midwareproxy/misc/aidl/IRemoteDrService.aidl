package com.hzbhd.midwareproxy.misc.aidl;

import com.hzbhd.midwareproxy.misc.aidl.IRemoteDrListener;
import com.hzbhd.midwareproxy.misc.aidl.INMEACallback;
import com.hzbhd.midwareproxy.misc.aidl.IOnDrResponseListener;
interface IRemoteDrService {
    void addRemoteDrListener(IRemoteDrListener listener);
    void removeRemoteDrListener(IRemoteDrListener listener);
    /**add by zhangshengda 2017.07.08 CarPlay*/
    void registerOnDrResponseListener(IOnDrResponseListener listener);
    void unregisterOnDrResponseListener(IOnDrResponseListener listener);
    /**add by zhangshengda 2017.08.24 Location*/
    void registerDrLocation(int key,INMEACallback callback);
    void unregisterDrLocation(int key);
    void setDrProperty(int iKey, String strValue);
}