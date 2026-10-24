// ISpeechCallbackAIDL.aidl
package com.hzbhd.midwareproxy.speechrecognition.aidl;

// Declare any non-default types here with import statements

interface ISpeechCallback {


    void btStatus(String status);
    void btIncomingCallRing(String name,String number);
    void btOutgoingCallRing(String name,String number);
    void btSyncContacts(String result,String flags);
    void sourceChange(String old,String current);
    void Speek(String value);
    void updateAudioList(String value);

}
