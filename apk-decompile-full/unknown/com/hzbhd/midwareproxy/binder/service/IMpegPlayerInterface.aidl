package  com.hzbhd.midwareproxy.binder.service;
import android.graphics.Bitmap;
import com.hzbhd.midwareproxy.binder.callback.IMpegPlayerCallBackInterface;
import com.hzbhd.midwareproxy.binder.callback.IDiscBackCameraChangeInterface;
interface IMpegPlayerInterface
{

	boolean getMpegStatus();
	boolean getPlayInfo();
	void getId3Info();
	int getCurrentTotalNo();
    /*
    * common player function
    */
    boolean isPlaying();
    void stop();
    void pause();
    void play();
    void prev();
    void next();
    boolean seek(int pos);
    int getShuffleMode();
    int getRepeatMode();
    long duration();
    long position();
    boolean backward();
    boolean forward(); 
	boolean repeat();
	boolean subTitle();
	boolean setPBC();
	boolean photoMove(int direction);
	boolean display();
	boolean shuffle();
	boolean photoZoomOut();
	boolean photoZoomIn();
	boolean photoRotateRight();
	boolean photoRotateLeft();
	boolean playRootMenu();
	boolean tsPosition (int tsType,int x,int y);
	boolean getNameReqStatus();
	boolean title();
	void gotoChapter(int title,int chapter);
	void gotoTrack(int track);
	void scan();
	void discGoto(int gotoType, int gotoNum);
	void getList(int type, int pid);
	void selectType(int type);
	void reqMpegUpgrade();
	
    /*
    * mpeg player function
    */
    boolean isDiscExist();
    int getDiscType();
    boolean isDiscQueryEnd();
    int getMpegRootMenuState();

    int getDVDCurrChapNumber();
	int setDVDSubtitle();
	int setDVDAudioLang();
    String getCurrSubtitleText(); 
	int getCurrSubtitle();
	String getCurrAudioLangText();
	int getCurrAudioLang();
    int passMpegTouchEvent(boolean bDown, int x, int y);
    
  	String getMpegCurrPlayingName();
  	String getMpegCurrAlbumName();
  	String getMpegCurrArtistName();  	
  	int getMpegCurrPlayingIndex();
  	int getMpegCurrentPlayingType();
 	String getMpegVersion();
 	String getLastPlayingFile(int mediaType);
 	int getMpegPlayingTimeTotal();
    int getMpegPlayingTimeCurr();
    int setMpegZoom();
    int setMpegDirection(int dir);
    //int getScanInfo();
    int setRootMenu();
    boolean setAudio();
    boolean setAngle();
    boolean setRepeatAB();
    int playMpegFast();
    int playMpegSlow();
    int setMpegPowerDown();
    int setMpegPowerUp();
    
    int getCDTracksCount();
    int getDVDTitlesCount();
    int getDVDChaptersCount();
    int getRomFoldersCount(int mediaType);
    int getRomFilesCount(int mediaType,int folderIndex);
    String getCDTrackName(int trackIndex);
    String getRomFolderName(int mediaType, int folderIndex);
    String getRomFileName(int mediaType,int folderIndex, int fileIndex);
 
    
    void setCDTrackToPlay(int tarckIndex);
    void setRomFileToPlay(int mediaType,int folderIndex,int fileIndex);
    void setDVDFileToPlay(int titleIndex,int chapterIndex);
    boolean setPassWord(byte arg1,byte arg2,byte arg3,byte arg4);
    
    boolean registerCallBack(IMpegPlayerCallBackInterface callbackInterface);
    boolean unregisterCallBack();
    boolean registerRealCallBack(IMpegPlayerCallBackInterface callbackInterface);
    boolean unregisterRealCallBack();
    void releaseSource();
    void getDeviceStatus();
    void rptControllBarStatus(boolean isShow);
    
    void reqDivxRegionCode();
    String getDivxRegionCode();
    boolean isDivxActive();
    
    void reqDivxRegTime();
    int getDivxRegTime();
    
    void reqDivxDeactiveCode();
    String getDivxDeactivCode();
    
    void setMpegMode(int mode);
    int getMpegTestNumber();
    
    void setMpegNotifyLanguage(byte language);
    void setReadDisc(boolean read);
    void setTrayTime32(in byte[] data);
    void setDvdSettings32(in byte[] data);
    void enterMpegSrc32(boolean enterDiscSrc);
    boolean sendEjectKey32();
    void startDiscLoader32(boolean canStartLoader);

    void setTrayEnterTime_32(byte data);
    void setTrayEjectTime_32(byte data);
    void setAutoTrayInTime_32(byte data);//reserve
    void setMechanismCustCode_32(byte data);//reserve
    void initTrayData_32();

    void setDVDOsdLang_32(String aDVDOsdLang);
    void setDVDAudio_32(String aDVDAudio);
    void setDVDSubTitle_32(String aDVDSubTitle);
    void setDVDMenuLang_32(String aDVDMenuLang);
    void setChildrenLockLevel_32(byte aChildrenLockLevel);
    void setChildrenLockPassword_32(String aChildrenLockPassword);

    String getDVDOsdLang_32();
    String getDVDMenuLang_32();
    String getDVDSubTitle_32();
    String getDVDAudio_32();
    byte getChildrenLockLevel_32();
    String getChildrenLockPassword_32();
    void initSysSet_32();

    void sndMpegPowerOffStatus_32(boolean isPowerOff);
    void resetMpegSystem_32();
    boolean isFirstStart();
    boolean registerBackCameraChangeCallBack(IDiscBackCameraChangeInterface callbackInterface);
    boolean unregisterBackCameraChangeCallBack();
}

