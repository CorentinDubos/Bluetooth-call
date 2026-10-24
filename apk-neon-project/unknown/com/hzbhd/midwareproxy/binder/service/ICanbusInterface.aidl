package com.hzbhd.midwareproxy.binder.service;
import com.hzbhd.midwareproxy.binder.service.CanTypeAllEntity;
import com.hzbhd.midwareproxy.canbus.aidl.ICanbusInfoChangeCallback;
import com.hzbhd.midwareproxy.canbus.uiSet.AirPageUiSet;

interface ICanbusInterface {

    	// 传递Canbus信息（其他）
       void canbusInfoChange(in byte[] canbusInfo);
       //收音机
       void radioInfoChange(int currClickPresetIndex, in String currBand, in String currentFreq,in String psName, int isStereo);
       void radioDestroy();

       //Video
       void videoInfoChange(byte stoagePath,byte playRatio,int currentPlayingIndexLow,int totalCount,byte currentHour,byte currentMinute,
       			byte currentSecond,in String currentAllMinuteStr,byte currentPlayingIndexHigh,byte currentAllMinute,in String currentHourStr,
       			in String currentMinuteStr,in String currentSecondStr,int currentPos,byte playMode,boolean isPlaying, int duration);
       void videoDestroy();
       //Music
       void musicInfoChange(byte stoagePath,byte playRatio,int currentPlayingIndexLow,int totalCount,byte currentHour,byte currentMinute,
                			byte currentSecond,byte currentAllMinuteStr,byte currentPlayingIndexHigh,byte currentAllMinute,in String currentHourStr,
                			in String currentMinuteStr,in String currentSecondStr,long currentPos,byte playModel,int playIndex,boolean isPlaying,long totalTime,in String songTitle,in String songAlbum,in String songArtist,in boolean isReportFromPlay);
        void musicDestroy();
        //DTV
        void dtvInfoChange();
        //Disc
        void discInfoChange(byte playModel,int currentTime,int playTitleNo,int position,int currentPlayNo,int currentTotalNo,int discType,boolean isUnMuted,boolean isPlaying,int playStat,String song,String album,String artist);
        //Devices Stutas
        void deviceStatusInfoChange(int btOn,int discRadom,int discRepeat,int discExsit,int sdCardIn,int usbIn,int radioSt,int mute,int singleCycle,int fullCurve,int folderLoop,int randomFolder);
        //Current Volume
        void currentVolumeInfoChange(int volValue,boolean isMute);
        //BTPhone
        void btPhoneIncomingInfoChange(in byte[] phoneNumber,boolean isMicMute,boolean isAudioTransferTowardsAG);
        void btPhoneOutGoingInfoChange(in byte[] phoneNumber,boolean isMicMute,boolean isAudioTransferTowardsAG);
        void btPhoneTalkingInfoChange(in byte[] phoneNumber,boolean isMicMute,boolean isAudioTransferTowardsAG);
        void btPhoneHangUpInfoChange(in byte[] phoneNumber,boolean isMicMute,boolean isAudioTransferTowardsAG);
        void btPhoneStatusInfoChange(int callStatus,in byte[] phoneNumber,boolean isHfpConnected,boolean isCallingFlag,boolean isMicMute,boolean isAudioTransferTowardsAG,int batteryStatus,int signalValue,in Bundle bundle);
        void btPhoneTalkingWithTimeInfoChange(in byte[] phoneNumber,boolean isMicMute,boolean isAudioTransferTowardsAG,int time);
        void btPhoneCallLogInfoChange(int index, int type, in String number);
        //BTMusic
        void btMusicInfoChange();
        void btMusiceDestroy();
        //AuxIn
        void auxInInfoChange();
        void auxInDestroy();
        //ATV
        void atvInfoChange();
        void atvDestroy();
        //Amplifier
        void amplifierInfoChange(in String key,int value);
        //SourceSwitch
        void sourceSwitchMpuMediaInfoChange(byte sourceType,byte mpuStatus,byte connectDevice);
        void sourceSwitchExitSrcAuxIn2InfoChange();
        void sourceSwitchNoMediaInfoChange(boolean isPowerOff);
        void sourceSwitchInitInfoChange(int cantype);
        void sourceSwitchDestroy();

        CanTypeAllEntity getCanTypeAllEntity(int canTypeId);

        void reportCanTypeId(int canTypeId);

        //park
        void parkInfoChange();
        void parkDestroy();

        void saveCanTypeId(int canTypeId);
        //音乐当前歌词
        void musicLrcInfoChange(String lrc);
        void btMusicId3InfoChange(String title,String artist,String album);
        //Camera
        void cameraInfoChange();
        void cameraDestroy();

        void sourceSwitchChange(String source);

        void actionControl(String action);

        void registerCanbusInfoChangeCallBack(ICanbusInfoChangeCallback canbusInfoChangeCallback);

        AirPageUiSet getAirPageUiSet();

        String getAirInfo();

        void onAccStatusChange(int status);
}
