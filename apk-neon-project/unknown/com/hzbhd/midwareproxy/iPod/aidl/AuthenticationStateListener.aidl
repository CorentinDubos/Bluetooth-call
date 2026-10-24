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
 * authentication state & protocol listener
 *
 * @date 2015-05-04
 *
 */
interface AuthenticationStateListener {
	void authenticationState(int authenState, byte protocol);
}
