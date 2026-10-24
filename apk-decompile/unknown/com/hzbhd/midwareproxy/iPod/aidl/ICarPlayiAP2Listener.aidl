/**
 *  Hzbhd Project - com.hzbhd.midware.iPod.proxy
 *
 *  Copyright (C) Hzbhd 2013 - 2015
 *
 *  File:AuthenticationListener.java
 *
 *  Revision:
 *  
 *  2013-5-9
 *		- first revision
 *  
 */
package com.hzbhd.midwareproxy.iPod.aidl;

/**
 * listener to note 
 *
 * @author ljhu
 * @date 2016-12-21
 *
 */
 
 
interface ICarPlayiAP2Listener {

/**
 * type: event type
 * 1:vehicle speed, float
 *
 * value: event value
 * 
 */
 
 	void onEvent(int type, String value);
}
