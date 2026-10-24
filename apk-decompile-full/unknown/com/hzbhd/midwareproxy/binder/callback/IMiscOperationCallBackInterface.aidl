// IMcuOperationCallBackInterface.aidl
package com.hzbhd.midwareproxy.binder.callback;

// Declare any non-default types here with import statements

/** IKeyEventsCallBackInterface callback  interface */
interface IMiscOperationCallBackInterface
{
 void progressReports(int has ,int total);
 void errorReports(int error);
 void batteryThreadStateReports(int arg1,int arg2);
}