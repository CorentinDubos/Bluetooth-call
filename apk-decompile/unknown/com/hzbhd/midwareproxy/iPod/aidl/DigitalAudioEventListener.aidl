/**
 *  Hzbhd Project - com.hzbhd.midware.iPod.proxy
 *
 *  Copyright (C) Hzbhd 2013 - 2015
 *
 *  File:DigitalAudioRequestListener.java
 *
 *  Revision:
 *  
 *  2013-5-15
 *		- first revision
 *  
 */
package com.hzbhd.midwareproxy.iPod.aidl;

/**
 * Digital Audio Lingo的事件监听接口
 *
 * @date 2013-5-15
 */
interface DigitalAudioEventListener {
	/**
	 * Apple Dev会在第一次播放audio track发送该命令，并且在下次播放不同sample rate、sound check
	 * 或者track volume adjustment时也会发送该命令。 
	 * @param newSampleRate 
	 * @param newSoundCheck
	 * @param newTrackVolAdj
	 */
	void trackNewAudioAttributes(int newSampleRate, int newSoundCheck, int newTrackVolAdj);
}