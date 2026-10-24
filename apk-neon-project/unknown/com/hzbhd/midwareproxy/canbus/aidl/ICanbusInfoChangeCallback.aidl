// ICanbusInfoChangeCallback.aidl
package aidl;

// Declare any non-default types here with import statements

interface ICanbusInfoChangeCallback {
    //空调
    void onWindSpeedChange(int windSpeed);
    void onLeftTemperatureChange(String temperature);
    void onRightTemperatureChange(String temperature);
    void onBlowModeChange(boolean window, boolean head, boolean foot);
    void onBtnStatusChange(String action, boolean isOn);
    //车门
    void onDoorStatusChange(String witch, boolean status);
    //语音播报
    void onVoiceBcChange(String info);
}
