package com.hzbhd.midwareproxy.misc.aidl;
interface IVolumeService {
    boolean notifyVolumeChange(boolean showMute,boolean showUnmute,int curVol,int maxVol);
    boolean notifyNaviVolumeChange(int keyType,int curVol,int maxVol);
}
