/**
 *  adayo Project - com.hzbhd.midwareproxy.iPod;
 *
 *  Copyright (C) hzbhd 2013 - 2015
 *
 *  File:IIPodService.java
 *
 *  Revision:
 *  
 *  2013-5-9
 *		- first revision
 *  
 */
package com.hzbhd.midwareproxy.iPod.aidl;

import com.hzbhd.midwareproxy.iPod.aidl.AuthenticationListener;
import com.hzbhd.midwareproxy.iPod.aidl.AuthenticationStateListener;
import com.hzbhd.midwareproxy.iPod.aidl.DigitalAudioEventListener;
import com.hzbhd.midwareproxy.iPod.aidl.DisplayRemoteLingoRetListener;
import com.hzbhd.midwareproxy.iPod.aidl.ExtendedInterfaceRetListener;
import com.hzbhd.midwareproxy.iPod.aidl.GeneralLingoRetListener;
import com.hzbhd.midwareproxy.iPod.aidl.ICarPlayiAP2Listener;
import com.hzbhd.midwareproxy.iPod.EventNotification;
import com.hzbhd.midwareproxy.iPod.PlayingTrackInfo;
import com.hzbhd.midwareproxy.iPod.ArtworkFormats;
import com.hzbhd.midwareproxy.iPod.TrackArtworkData;
import com.hzbhd.midwareproxy.iPod.TimeOffsetArray;
import com.hzbhd.midwareproxy.iPod.PlayStatusNotification;
import com.hzbhd.midwareproxy.iPod.RemoteEventMask;
import com.hzbhd.midwareproxy.iPod.FourBytesStatus;
import com.hzbhd.midwareproxy.iPod.PlayStatus;
import com.hzbhd.midwareproxy.iPod.TrackInformationMask;
import com.hzbhd.midwareproxy.iPod.DBiTunesInfo;
import com.hzbhd.midwareproxy.iPod.iap2.MediaItemAttributesIDs;
import com.hzbhd.midwareproxy.iPod.iap2.PlaybackAttributesIDs;
import com.hzbhd.midwareproxy.iPod.iap2.INowPlayingInfoListener;

/**
 *
 *
 * @date 2013-5-9
 *
 */
interface IIPodService {
	/////////////////////////////////////////
	//	AudioTrack
	/////////////////////////////////////////
	int iPodAudioSampleRateChange(int newSampleRate);
	int iPodAudioPlay();
	int iPodAudioPause();
	int iPodAudioStop();
	int iPodAudioSetVolume(float left, float right);
	/////////////////////////////////////////
	//	USB Position
	/////////////////////////////////////////
	int getUsbPosition();
	/////////////////////////////////////////
	//	Authentication
	/////////////////////////////////////////
	byte enterExtendedInterfaceMode();
	byte exitExtendedInterfaceMode();
	
	/**
	 * <body>设置鉴权结果监听</body>
	 * @param listener 鉴权结果监听接口
	 */
	void addAuthenticationListener(AuthenticationListener listener);
	/**
	 * 
	 * <body>取消鉴权结果监听</body>
	 * @param listener 鉴权结果监听接口
	 */
	void removeAuthencationListener(AuthenticationListener listener);
	void addAuthenticationStateListener(AuthenticationStateListener listener);
	void removeAuthenticationStateListener(AuthenticationStateListener listener);	
	/**
	 * 获取当前鉴权状态
	 */
	int getAuthenticationState();
	byte getMFiProtocol();

	/**
	 * 设置ExtendedInterface lingo结果监听
	 * @param listener ExtendedInterface lingo的结果应答接口
	 */
	void setExtendedInterfaceRetListener(ExtendedInterfaceRetListener listener);
	
	/**
	 * 设置Digital Audio lingo事件监听
	 * @param listener Digital Audio lingo事件监听接口
	 */	
	void setDigitalAudioEventListener(DigitalAudioEventListener listener);
	
	/**
	 * 设置General Lingo 时间监听
	 * @param listener General Lingo 应答消息监听接口
	 */
	void setGeneralLingoRetListener(GeneralLingoRetListener listener);
	
	/**
	 * 设置Display Remote Lingo接口监听
	 * @param listener Display Remote Lingo 应答消息监听接口
	 */
	void setDisplayRemoteLingoRetListener(DisplayRemoteLingoRetListener listener);
	/////////////////////////////////////////
	//	General Lingo
	/////////////////////////////////////////
	/**
	 * 用于取消多包发送命令，可以取消下面4个命令：
	 * <li>Simple Remote lingo:GetCurrentItemProperty
	 * <li>Display Remote lingo:GetTrackArtworkData
	 * <li>Extended Interface lingo:GetTrackArtworkData
	 * <li>Extended Interface lingo:RetrieveCategorizedDatabaseRecords
	 * 
	 */
	byte cancelCommand();
	
	/**
	 *	用于获取Apple Device支持的通知事件类型。
	 */
	EventNotification getSupportedEventNotification();
	
	/**
	 * 改变Apple Device的UI Mode
	 */
	byte setUIModeCommand(byte uiMode);
	byte setEventNotification(in EventNotification eventNotification);
	/////////////////////////////////////////
	//	Database Engine
	/////////////////////////////////////////
	/**
	 * 
	 * <body>重置当前选择的数据库状态为初始状态,刷新所有分类统计计数为0(除了播放列表类别)，设置数据库的继承层次
	 * 为Audio类别继承层次。一旦accessory重置数据库后，accessory在它能选择数据库记录之前，必须先初始化数据库
	 * 分类统计计数。
	 * <p><strong>Applies To:</strong>Database Engine</p>
	 * <p><strong>Caution:</strong><p>
	 * <p>从协议版本1.07开始，该命令会清除排序</p>
	 * </body>
	 * @return {@link ExtendedInterfaceRetListener#ack(short, byte)}
	 * @see IpodService#getNumberCategorizedDBRecords(byte)
	 * @see IpodService#selectDBRecord(byte, int)
	 */
	byte resetDBSelection();
	
	/**
	 * 
	 * <body>按照数据库的分层，选择其中的一个子集，如果选择单个的曲目，该曲目将自动传递给Playback Engine进行播放；
	 * 通过将recordIndex设置为-1，可以返回上一层。
	 * <p><strong>Applies To:</strong></p>
	 * <p><strong>Caution:</strong><p>
	 * </body>
	 * @param categoryType 数据库分类类型
	 * @param recordIndex	数据记录索引
	 */
	byte selectDBRecord(byte categoryType, int recordIndex);
	
	
	/**
	 * 
	 * <body>获取当前选择的数据库子集中的记录个数
	 * <p><strong>Applies To:</strong>Database Engine</p>
	 * <p><strong>Caution:</strong><p>
	 * </body>
	 * @param categoryType 数据子集类别
	 */
	int getNumberCategorizedDBRecords(byte categoryType);
	
	/**
	 * 
	 * <body>根据startIndex，count获取数据库子集中的记录,startIndex,count根据{@link getNumberCategorizedDBRecords}获取
	 * <p><strong>Applies To:</strong>Database Engine</p>
	 * <p><strong>Caution:</strong><p>
	 * </body>
	 * @param recordType	需要返回的记录类型
	 * @param startIndex	开始索引
	 * @param count	期望返回的个数；-1表示从startIndex开始返回后面所有记录
	 */
	void retrieveCategorizedDatabaseRecords(byte categoryType, int startIndex,
			int count);
	
	/**
	 * 
	 * <body>请求播放当前已经选择的曲目或者曲目列表
	 * <p><strong>Applies To:</strong>Playback Engine and Database Engine</p>
	 * <p><strong>Caution:</strong><p>
	 * </body>
	 */
	byte playCurrentSelection(int trackIndex);
	
	/**
	 * 
	 * <body>请求浏览Audio或者Video的层次结构
	 * <p><strong>Applies To:</strong>Database Engine</p>
	 * <p><strong>Caution:</strong><p>
	 * </body>
	 * @param hierarchySelection 0x01-audio,0x02-video
	 */
	byte resetDBSelectionHierarchy(int hierarchySelection);
	
	DBiTunesInfo getDBiTunesInfo(byte metadataType);
	
	void getUIDTrackInfo(in byte[] uid, in TrackInformationMask mask);
	
	/**
	 * 
	 * <body>获取Apple device数据库中指定范围的曲目相关信息(MFi Table4-19)
	 * <p><strong>Applies To:</strong>Database Engine</p>
	 * <p><strong>Caution:</strong><p>
	 * </body>
	 * @param startIndex
	 * @param count
	 * @param infoMask
	 * @see retDBTrackInfo
	 */
	void getDBTrackInfo(int startIndex, int count, in TrackInformationMask infoMask);
	
	/**
	 * 
	 * <body>获取Apple device正在播放的列表中指定范围的曲目相关信息(MFi Table4-19)
	 * <p><strong>Applies To:</strong></p>
	 * <p><strong>Caution:</strong><p>
	 * </body>
	 */
	void getPBTrackInfo(int startIndex, int count, in TrackInformationMask mask);
	
/*	@Deprecated
	public void createGeniusPlaylist();
	@Deprecated
	public void refreshGeniusPlaylist();
	@Deprecated
	public void isGeniusPlaylist();
*/	
	/**
	 * 
	 * <body>获取指定播放列表的相关信息：
	 * <p><strong>Applies To:</strong></p>
	 * <p><strong>Caution:</strong><p>
	 * </body>
	 */
	void getPlaylistInfo(byte infoType, int dbPlaylistIndex);
	
	//////////////////////////////////////////////////////////////////
	//					PlayBack Engine
	//  Track Chapter - A chapter track is a type of text track that 
	//  				divides the movie into randomly-addressable 
	//					chapters or sections.
	//
	//////////////////////////////////////////////////////////////////
	/**
	 * 
	 * <body>请求Ipod当前播放曲目的章节信息,章节信息包括current chapter index , chapter count
	 * <p><strong>Applies To:</strong>Playback Engine</p>
	 * <p><strong>Caution:</strong><p>
	 * </body>
	 * @see returnCurrentPlayingTrackChapterInfo
	 */
	void getCurrentPlayingTrackChapterInfo();
	
	/**
	 * 
	 * <body>基于{@link getCurrentPlayingTrackChapterInfo}返回的chapter count和current chapter index,
	 * 设置当前播放章节
	 * <p><strong>Applies To:</strong>Playback Engine</p>
	 * <p><strong>Caution:</strong>
	 * <p>①如果Apple Device处于playing或pause状态时，命令成功；</p>
	 * <p>②如果Apple Device处于stopped或者Current Track不包含章节信息，命令失败。</p></p></body>
	 * 
	 * @param chapterIndex
	 */
	void setCurrentPlayingTrackChapterInfo(int chapterIndex);
	
	/**
	 * <body>获取当前播放章节的播放时间信息:包括当前章节总时间和已经播放时间。
	 * <p><strong>Applies To:</strong>Playback Engine</p>
	 * <p><strong>Caution:</strong></p>
	 * <p>如果packet length或者chapter index无效，返回指定错误的ACK；否则返回时间信息</p></p></body>
	 *  
	 * @see ACK
	 * @see returnCurrentPlayingTrackChapterPlayStatus
	 */
	void getCurrentPlayingTrackChapterPlayStatus(int currentPlayingChapterIndex);

	/**
	 * <body>获取当前播放章节的名称
	 * <p><strong>Applies To:</strong>Playback Engine</p>
	 * <p><strong>Caution:</strong><p>
	 * <p>①如果packet length或者chapter index无效，返回指定错误的ACK；否则返回章节名称</p>
	 * <p>②章节名称没有被限制在252个字符内</p>
	 * </p></body>
	 * </body>
	 * @param currentPlayingChapterIndex
	 * @see returnCurrentPlayingTrackChapterName
	 */
	void getCurrentPlayingTrackChapterName(int currentPlayingChapterIndex);
	
	/**
	 * <body>获取指定曲目的相关信息，可以获取的信息类型有<em>MFi table4-28</em>：
	 * <p>Track Capabilities and Information, 主要有Track类型，是否包含专辑封面，专辑描述等信息，章节总数，曲目总时间。具体参看<em>MFi table4-29</em></p>
	 * <p>Podcast Name, 播客名称</p>
	 * <p>Track Release Date, 专辑发布时间</p>
	 * <p>Track Description, 专辑描述</p>
	 * <p>Track Song Lyrics, 专辑歌词</p>
	 * <p>Track Genre, 专辑类型</p>
	 * <p>Track Composer, 作曲家</p>
	 * <p>Track Artwork Count, ???</p>
	 * <p><strong>Applies To:</strong>Playback Engine</p>
	 * <p><strong>Caution:</strong><p>
	 * <p>iOS设备不会返回曲目歌词</p>
	 * <p>请求不是当前正在播放的曲目歌词会返回NULL字符串，
	 * 请求当前已经在播放的曲目歌词可能需要最多到5s的时间，当前正在播放的曲目歌词可用时，使用
	 * {@link setPlayStatusChangeNotification}来进行通知</p>
	 * </body>
	 * @param trackInfoType 需要返回的信息类型
	 * @param trackIndex 需要返回的曲目索引
	 * @see returnIndexedPlayingTrackInfo
	 */
	PlayingTrackInfo getIndexedPlayingTrackInfo(byte trackInfoType, int trackIndex, int chapterIndex);
	
	/**
	 * <body>获取Apple Device支持的专辑图片格式列表
	 * <p><strong>Applies To:</strong>Playback Engine</p>
	 * <p><strong>Caution:</strong><p>
	 * </body>
	 */
	ArtworkFormats getArtworkFormats();

	TrackArtworkData getTrackArtworkData(int trackIndex, int formatID, int timeOffset);
	
	TrackArtworkData getArtworkData(byte identifierType, in byte[] uid, int formatID, int timeOffset);
	
	TimeOffsetArray getTrackArtworkTimes(int trackIndex, int formatID, int artworkIndex, int artworkCount);

	TimeOffsetArray getArtworkTimes(byte trackIdentifierType, in byte[] trackIdentifier, int formatID, int artworkIndex, int artworkCount);
	/**
	 * <body>请求当前Apple Device的播放状态,播放状态包括曲目总时长、曲目当前播放位置、播放状态
	 * （Stopped、Playing、Paused）
	 * <p><strong>Applies To:</strong>Playback Engine</p>
	 * <p><strong>Caution:</strong><p>
	 * <p>只有在Playing,Paused状态下，曲目总时长，曲目当前播放位置才有效，其他状态下应该忽略其内容</p>
	 * </body>
	 * @see returnPlayStatus
	 */
	PlayStatus getPlayStatus(byte lingoID);
	
	/**
	 * <body>请求Apple Device开打指定的异步远程消息通知</body>
	 */
	byte setRemoteEventNotification(in RemoteEventMask remoteEventMask);
	
	/**
	 * 
	 * <body>获取Apple device当前播放曲目索引
	 * <p><strong>Applies To:</strong>Playback Engine</p>
	 * <p><strong>Caution:</strong><p>
	 * <p>只有在Playing,Paused状态下获取的索引才有效,无效索引为0xFFFFFFFF</p>
	 * </body>
	 */
	int getCurrentPlayingTrackIndex();
	
	/**
	 * 
	 * <body>获取指定索引的曲目的标题
	 * <p><strong>Applies To:</strong>Playback Engine</p>
	 * <p><strong>Caution:</strong><p>
	 * <p>如果Packet Length或者track index错误，则返回对应错误码的ACK</p>
	 * </body>
	 * @see returnIndexedPlayingTrackTitle
	 */
	String getIndexedPlayingTrackTitle(int trackIndex);
	
	/**
	 * 
	 * <body>获取指定索引的曲目的艺术家
	 * <p><strong>Applies To:</strong>Playback Engine</p>
	 * <p><strong>Caution:</strong><p>
	 * <p>如果Packet Length或者track index错误，则返回对应错误码的ACK</p>
	 * </body>
	 * @see returnIndexedPlayingTrackArtistName
	 */
	String getIndexedPlayingTrackArtistName(int trackIndex);
	
	/**
	 * 
	 * <body>获取指定索引的曲目的专辑名称
	 * <p><strong>Applies To:</strong>Playback Engine</p>
	 * <p><strong>Caution:</strong><p>
	 * <p>如果Packet Length或者track index错误，则返回对应错误码的ACK</p>
	 * </body>
	 */
	String getIndexedPlayingTrackAlbumName(int trackIndex);
	
	/**
	 * 
	 * <body>设置播放状态改变通知
	 * <p><strong>Applies To:</strong></p>
	 * <p><strong>Caution:</strong><p>
	 * </body>
	 */
	byte setPlayStatusChangeNotification(in FourBytesStatus status);
	
	/**
	 * 
	 * <body>用来控制Apple device的媒体播放状态
	 * <p><strong>Applies To:</strong>Playback Engine</p>
	 * <p><strong>Caution:</strong><p>
	 * </body>
	 */
	byte playControl(byte ctrlCmd);

	
	/**
	 * 
	 * <body>获取当前正在播放的曲目列表
	 * <p><strong>Applies To:</strong>Playback Engine</p>
	 * <p><strong>Caution:</strong><p>
	 * </body>
	 */
	int getNumPlayingTracks();
	
	/**
	 * 
	 * <body>基于当前正在播放的索引列表，指定当前播放的曲目
	 * <p><strong>Applies To:</strong>Playback Engine</p>
	 * <p><strong>Caution:</strong><p>
	 * </body>
	 */
	byte setCurrentPlayingTrack(int trackIndex);
	
	/////////////////////////////////////////
	//	Playback Mode
	/////////////////////////////////////////
	/**
	 * 
	 * <body>获取当前Apple device的shuffle设置，有三种模式：0x00 - Shuffle off,
	 * 0x01 - Shuffle tracks, 0x02 - Shuffle albums
	 * <p><strong>Caution:</strong><p>
	 * </body>
	 */
	byte getShuffle();
	
	/**
	 * 
	 * <body>设置Apple device的shuffle模式
	 * <p><strong>Caution:</strong><p>
	 * shuffle模式只对Playback Engine有效，对Database Engine无效。
	 * </body>
	 * @param shuffleMode
	 * @param restore
	 */
	byte setShuffle(byte shuffleMode, byte restore);
	
	/**
	 * 
	 * <body>请求Apple device的repeat模式：0x00-Repeat off, 0x01-Repeat one track,
	 * 0x02-Repeat all tracks
	 * <p><strong>Caution:</strong><p>
	 * </body>
	 */
	byte getRepeat();
	
	/**
	 * 
	 * <body>设置Apple device的repeat模式
	 * <p><strong>Applies To:</strong></p>
	 * <p><strong>Caution:</strong><p>
	 * </body>
	 * @param repeatMode
	 * @param restore
	 */
	byte setRepeat(byte repeatMode, byte restore);
	
	/**
	 * <body>设置所有Audiobook的播放速度
	 * <p><strong>Applies To:</strong></p>
	 * <p><strong>Caution:</strong><p>
	 * </body>
	 * @param speed 播放速度
	 * @param restoreOnExit 是否在拔出iPod时恢复到之前的播放速度。
	 */
	byte setAudiobookSpeed(byte speed, byte restoreOnExit);
	
	/**
	 * <body>设置当前正在播放的Audiobook的播放速度
	 * <p><strong>Applies To:</strong></p>
	 * <p><strong>Caution:</strong><p>
	 * </body>
	 * @param speed 播放速度
	 */	
	//byte setAudiobookSpeed(byte speed);

	/**
	 * <body>获取Audiobook的播放速度
	 * <p><strong>Applies To:</strong></p>
	 * <p><strong>Caution:</strong><p>
	 * </body>
	 */		 
	byte getAudiobookSpeed();
	
	////////////////////////////////////////////////
	//	iAP2
	////////////////////////////////////////////////
	//Media library access
	void playMediaLibraryCurrentSelection(String mediaLibraryUniqueId);
	void playMediaLibraryItems(in String[] itemIdentifier, long itemsStartingIndex, String mediaLibraryUniqueId);
	void playMediaLibraryCollection(in String collectionUniqueId, byte collectionType, long startIndex, in String mediaLibraryUniqueId);
	void playMediaLibrarySpecial(String mediaLibraryUniqueId, boolean allSongs);
	//Now playing updates
	void startNowPlayingUpdates(in MediaItemAttributesIDs mediaItemAttributesIDs,in PlaybackAttributesIDs playbackAttributesIDs);
	void stopNowPlayingUpdates();
	void setNowPlayingInfoListener(INowPlayingInfoListener nowPlayingInfoListener);
	void startMediaLibraryInformation();
	void stopMediaLibraryInformation();
	void startMediaLibraryUpdates();
	void stopMediaLibraryUpdates();
	//USB device mode audio
	void startUSBDeviceModeAudio();
	void stopUSBDeviceModeAudio();
	//Human interface device
	void startHID();
	void accessoryHIDReport(byte hidKey, byte state);
	void stopHID();
	
	//carplay
	void launchCarLife(byte launchAlert);
	void initCarPlayFunc();
	
	String getPlugEventType();
	boolean getPlugEventState();
	
	void registerCarPlayiAP2Listener(ICarPlayiAP2Listener listener);
	void removeCarPlayiAP2Listener(ICarPlayiAP2Listener listener);
	void setProperty(int iKey, String strValue);

	int ipod_set_activate(int type, String data);

    int ipod_get_activate(int type, String data);

    int jni_ipod_set_otg_mode(int mode);
}

