// ISettingInterface.aidl
package com.hzbhd.midwareproxy.binder.service;

/** Settings service interface */
interface IDspInterface {

    void mute(boolean isMute);
    boolean isMute();
    void playBeep();
    void setGain(int dout,int gain);
    int getGain(int dout);
    void setVolume(int type, int band, double fc, double Q, double gain, int FS);
    double[] getVolume(int type, int band);
    void setEqType(int type);
    int getEqType();
    void setNaviMixType(int type);
    int getNaviMixType();
    void tempMute(int time);
    float getDelay(int dout);
    void setDelay(int dout,float time);
    void setPassFilter(int type, double fc, double Q,int FS);
    double getPassFilterFc(int type);
    double getPassFilterQ(int type);
    void setFreqDividerenable(boolean enable);
    boolean isFreqDividerEnable();
    void setSubEnable(boolean enable);
    boolean getSubEnable();
    void setTempFreqDividerenable(boolean enable);
    boolean isShowRcaCtrl();
    void setSourceMute(String meadia_source_id,boolean isMute);
    void setLoudnessSwitch(boolean on);
    boolean isLoudnessSwitch();
    void setRcaMixNavi(boolean on);
    boolean isRcaMixNavi();
}