// IDrCallback.aidl
package com.hzbhd.midwareproxy.misc.aidl;

// Declare any non-default types here with import statements

interface INMEACallback {
   void onNMEAChange(String nmea);
   void onPASCDChange(String speed, String gear);
}
