// IAutoTestCallBackInterface.aidl
package com.hzbhd.midwareproxy.binder.callback;
// Declare any non-default types here with import statements
interface IAutoTestCallBackInterface {
    void notifyAutoTest(in int aCommand,in int[] aPara);
}