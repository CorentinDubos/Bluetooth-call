// ICanbusAirChangeCallback.aidl
package aidl;

// Declare any non-default types here with import statements

interface ICanbusAirChangeCallback {
    void onWindSpeedChange(int windSpeed);
    void onLeftTemperatureChange(String temperature);
    void onRightTemperatureChange(String temperature);
    void onBlowModeChange(boolean window, boolean head, boolean foot);
    void onBtnStatusChange(String action, boolean isOn);
}
