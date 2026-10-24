package com.hzbhd.midwareproxy.binder.service;
 
import com.hzbhd.midwareproxy.binder.callback.IMediaScannerCallBackInterface;
import com.hzbhd.mediaScanner.MediaObjectName;
import com.hzbhd.mediaScanner.ID3Info;

interface IMediaScannerInterface {
    

	boolean registerCallBack(IMediaScannerCallBackInterface callbackInterface);
    int getScanningState(String mountPath);
    boolean startSanFile(String path); 
}
