/**
 *  Foryou Project - midwareProxy
 *
 *  Copyright (C) hzbhd 2013 - 2025
 *
 *  File:NowPlayingInfoListener.java
 *
 *  Revision:
 *  
 *  2015年4月22日
 *		- first revision
 *  
 */
package com.hzbhd.midwareproxy.iPod.iap2;

/**
 *
 * @Data 2015年4月22日
 */
interface INowPlayingInfoListener {
	//
	void nowPlayingPersistentId(String persistentId);
	void nowPlayingTitle(String title);
	void nowPlayingPlaybackDurationMs(long durationMs);
	void nowPlayingAlbum(String album);
	void nowPlayingAlbumTrackNum(int albumTrackNum);
	void nowPlayingAlbumTrackCount(int albumTrackCount);
	void nowPlayingAlbumDiscNum(int albumDiscNum);
	void nowPlayingAlbumDiscCount(int albumDiscCount);
	void nowPlayingArtist(String artist);
	void nowPlayingGenre(String genre);
	void nowPlayingComposer(String composer);
	void nowPlayingIsLikeSupported(boolean isLikeSupported);
	void nowPlayingIsBanSupported(boolean isBanSupported);
	void nowPlayingIsLiked(boolean isLiked);
	void nowPlayingIsBanned(boolean isBanned);
	void nowPlayingArtworkFileTransferId(byte artworkFileTransferId);
	void nowPlayingChapterCount(int chapterCount);
	//
	void nowPlayingPlayStatus(byte playStatus);
	void nowPlayingElapsedTimeMs(long elapsedTimeMs);
	void nowPlayingQueueIndex(long queueIndex);
	void nowPlayingQueueCount(long queueCount);
	void nowPlayingQueueChapterIndex(long queueChapterIndex);
	void nowPlayingShuffleMode(byte shuffleMode);
	void nowPlayingRepeatMode(byte repeatMode);
	void nowPlayingAppName(String appName);
	void nowPlayingMediaLibUniqueId(String mediaLibUniqueId);
	void nowPlayingiTunesRadioAd(boolean isiTunesRadioAd);
	void nowPlayingiTunesRadioStationName(String stationName);
	void nowPlayingiTunesRadioPlayListId(String iTunesRadioPlaylistId);
	void nowPlayingPlaybackSpeed(int speed);
	void nowPlayingSetElapsedTimeAvailable(boolean setElapsedTimeAvailable);
	void nowPlayingPlaybackQueueListAvailable(boolean available);
	void nowPlayingPlaybackQueueListTransferID(String transferID);
	void nowPlayingPlaybackAppBundleID(String bundleID);
	void nowPlayingArtwork(in byte[] artworkData);
}
