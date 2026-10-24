// IRadioInterface.aidl
package com.hzbhd.midwareproxy.binder.service;

// Declare any non-default types here with import statements

/** Radio service interface */
interface IRadioInterface
{
    boolean isPlaying();
    void play();
    void pause();
    int jumpRadioFreq(int freq);
    int seekRadio(boolean seekUpDown);
    int switchRadioMode(int radioMode);
    int searchRadioAS();
    int searchRadioPS();
    int localeRadio(int loc);
    int getLocale();
    int getCurrFreq();
    int getCurrMode();
    int getRadioPoint(int position);
    int[] getRadioList();
    int saveRadioPoint(int position, int freq);
    int setRadioGroupId(int id);
    int getRadioGroupId();
    int stepRadio(boolean stepUpDown);
    int incRadio();
    int decRadio();
    void registerCallBack(IBinder callbackInterface);
}