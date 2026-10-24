package nfore.android.bt.servicemanager;

interface BleCallback {
    void onDeviceScan(in String[] devices);
    void onDeviceConnChange(in String[] connDevices);
    void onDataRcv(String data);
}
