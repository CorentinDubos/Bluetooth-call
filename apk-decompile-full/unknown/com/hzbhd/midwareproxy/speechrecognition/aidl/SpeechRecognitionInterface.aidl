package com.hzbhd.midwareproxy.speechrecognition.aidl;

/**
 * Created by poulwalker on 2020/2/25.
 */
interface SpeechRecognitionInterface {

    boolean closeApp(String packageName);
    boolean openApp(String packageName);
}
