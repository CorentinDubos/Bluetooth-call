// IRadioInterface.aidl
package com.hzbhd.midwareproxy.binder.callback;

// Declare any non-default types here with import statements

/** Radio service interface */
interface ICameraCallback
{
    void onViewAdd();
    void onViewRemove();
    void onSurfaceViewCreate();
    void onSurfaceDestroy();
    void onCameraOpen();
    void onCameraClose();
    void onSignalCahnge(boolean signal);
}