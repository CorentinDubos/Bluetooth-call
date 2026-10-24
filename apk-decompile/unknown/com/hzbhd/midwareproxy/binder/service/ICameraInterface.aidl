// IRadioInterface.aidl
package com.hzbhd.midwareproxy.binder.service;
import com.hzbhd.midwareproxy.binder.callback.ICameraCallback;
// Declare any non-default types here with import statements

/** Radio service interface */
interface ICameraInterface
{
    void addCameraCallback(ICameraCallback callback);
    void removeCameraCallback(ICameraCallback callback);
    void addWindow(int cameraId);
    void removeWindow();
    void switchCamera(int cameraId);
    void setAnalogInputColor(int brightness, int contrast, int saturation);
    void stopPreview();
    void cameraStateChange();
    void cameraEnable(boolean isEnable);
    void setSurfaceViewParam(int translationX, int translationY, float scaleX, float scaleY);
}