/**
 *  Hzbhd Project - com.hzbhd.midware.iPod.proxy
 *
 *  Copyright (C) Hzbhd 2013 - 2015
 *
 *  File:ExtendedInterfaceRetListener.java
 *
 *  Revision:
 *  
 *  2013-4-19
 *		- first revision
 *  
 */
package com.hzbhd.midwareproxy.iPod.aidl;

import com.hzbhd.midwareproxy.iPod.TrackInformation;
import com.hzbhd.midwareproxy.iPod.ArtworkCountData;
import com.hzbhd.midwareproxy.iPod.ArtworkFormats;
import com.hzbhd.midwareproxy.iPod.PlayingTrackInfo;
import com.hzbhd.midwareproxy.iPod.TrackArtworkData;
import com.hzbhd.midwareproxy.iPod.TimeOffsetArray;
import com.hzbhd.midwareproxy.iPod.PlayStatusNotification;
import com.hzbhd.midwareproxy.iPod.TrackInformation;
import com.hzbhd.midwareproxy.iPod.DBiTunesInfo;


/**
 * Extended Interface Lingoes 应答结果监听接口,
 * 以下命令需要先通过result判断命令是否执行成功，只有命令成功后面的参数才有效。
 *
 * @date 2013-4-19
 */
interface ExtendedInterfaceRetListener{
	/**
	 * 
	 * <body>返回指定数据库类别和索引的记录信息，返回信息包括该条记录索引和相关描述信息。</body>
	 * @param result
	 * @param recordIndex	返回的记录索引
	 * @param desc	返回的记录相关描述信息
	 * @see IpodService#retrieveCategorizedDatabaseRecords(byte, int, int)
	 */
	void returnCategorizedDatabaseRecord(byte result,int recordIndex, String desc);
	
	/**
	 * Apple Device根据{@link IIPodService#setPlayStatusChangeNotification}来主动上报当前播放状态
	 * @param status 当前播放状态
	 */
	void playStatusChangeNotification(in PlayStatusNotification status);
	
	/**
	 * <body>3个异步获取曲目信息的命令应答：GetUIDTrackInfo,GetDBTrackInfo,GetPBTrackInfo.</body>
	 * @param trackInfo 曲目信息
	 */
	void retUIDTrackInfo(byte result, in byte[] uid, in TrackInformation trackInfo);
	void retDBTrackInfo(byte result, int trackIndex, in TrackInformation trackInfo);
	void retPBTrackInfo(byte result, int trackIndex, in TrackInformation trackInfo);
}
