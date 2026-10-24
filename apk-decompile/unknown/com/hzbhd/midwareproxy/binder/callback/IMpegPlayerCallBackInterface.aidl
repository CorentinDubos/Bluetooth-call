// IAudioControlInterface.aidl
package com.hzbhd.midwareproxy.binder.callback;

// Declare any non-default types here with import statements

/** Radio service interface */
interface IMpegPlayerCallBackInterface
{
    void discEjected(int state);
    void discQueryStart(int type);
    void discQueryEnd();
    void playDVDRootMenuUpdate(boolean isPlayRootMenu);
   
    void onPlayingTimeUpdate(int totalSec,int currentSec);
    void playCDTrackUpdate(int totalTrack,int currTrack);
    void playDVDTitleChapterUpdate(int totalTitle,int totalChapter,int currTitle,int currChapter);
    void playROMFileUpdate(int fileType,int folderIndex,int fileIndex);
    
    void onReportDeviceStatus(int discStatus,int videoMode);
    void onPlayingStatusUpdate(int playStatus,int mediaType,int repeatStatus,int shuffleMode, int scanMode);
    void onScreenStatus(boolean mainMenu,boolean levelMenu,boolean isParing);
    void onID3Update (String songName,String artistName,String albumName);
    void onMpegInfos(int listFlag, int playStatus,int discType,int videoMode,int repeatMode,boolean shuffle,int discStatus,boolean isZoom);
    void onPlayInfoUpdate(int mediaType,int totalSec,int currentSec,int folderIndex,int fileIndex,int currTotalNo,int playTitleNo,int totalTitleNo);
    void onDisplayInfo(int info,String discType, String discAudio,String discSubtitle,String discAngle,String discBitrate);
    void onMpegPrint(int printKey);
    void onMpegUpgradeInd();
    void onMpegPassWordRSP(int arg);
    void onRemoteDirect(int direct);
    void onOtherKeyEvent(String key);
    void onMcuDeviceChange(boolean isDiscExist,boolean isUSBExist,boolean isParing);
}