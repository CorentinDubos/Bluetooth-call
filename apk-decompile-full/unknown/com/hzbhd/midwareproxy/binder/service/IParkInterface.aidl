package com.hzbhd.midwareproxy.binder.service;
import com.hzbhd.midwareproxy.binder.callback.IParkCallBackInterface;

interface IParkInterface {
    void registerCallBack(IParkCallBackInterface acallbackInterface);
    void unRegisterCallBack();
    void sendPanoramicParkOn(boolean isOn);
    void sendPanoramicParkKey(int key);
    void sendPanoramicParkWH(int w, int h);
    void sendPanoramicParkPos(int press, int x, int y);
}
