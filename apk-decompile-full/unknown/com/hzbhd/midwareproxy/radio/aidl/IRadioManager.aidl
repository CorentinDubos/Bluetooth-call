// IRadioManager.aidl
package com.hzbhd.midwareproxy.radio.aidl;

// Declare any non-default types here with import statements

/** Radio service interface */
import com.hzbhd.midwareproxy.radio.aidl.IRadioInfoChangeListener;
import com.hzbhd.midwareproxy.radio.aidl.IRDSInfoChangeListener;
interface IRadioManager
{
    String getVoiceChannelType();
    int getSignalStrength();
    boolean isTP();
    boolean isRDSStation();
    String getCurPSInfo();
    String getCurPTYInfo();
    String getCurRTInfo();
    boolean getAutoSearchStatus();
    boolean getSeekUpStatus();
    boolean getSeekDownStatus();
    boolean getAutoSearchWithPreviewStatus();
    boolean getStepUpStatus();
    boolean getStepDownStatus();
    boolean getAFSeekStatus();
    boolean getTPSeekStatus();
    boolean getPTYSeekStatus();
    boolean getTASeekStatus();
    boolean getTAStatus();
    boolean getEWSStatus();
    boolean getEONStatus();
    
    boolean autoSearch(int  searchType);
    boolean autoSearchWithPreview(int  searchType);
    boolean stopSearch();
    boolean searchStepUp(int stepType);
    boolean searchStepDown(int stepType);
    String getCurrentBand();
    boolean setCurrentBand(int  bandType);
    boolean setRFInputMode (int rfMode);
    String getRFInputMode();
    boolean setCurrentFreq(String freq);
    String getCurrentFreq();
    boolean isValidFreq();
    
    
    
    boolean setCurrentArea(int area);
    String getCurrentArea();
    boolean setDefaultArea();
    String getDefaultArea();
    /**
     * 上微调
     */
    boolean tuneUp();
    /**
     * 下微调
     */
    boolean tuneDown();

    /**
     * 上有效电台
     */
    boolean seekUp();
    /**
     * 下有效电台
     */
    boolean seekDown();
    
    /**
     * 播放预存台
     */
    void playPresetFreq(in int index);
    
    /**
     * 波段切换
     */
    void bandChange();
    
    boolean setTunerReg(byte regIndex, byte regValue);
    boolean setTunerRegWithModel(byte tunerModel);
    byte getTunerModel();
    
    int  getValidFreqListCount(int  bandType);
    String[]  getValidFreqList (int  bandType);
    int  getPresetFreqListCount (int  bandType);
    String[]  getPresetFreqList (int  bandType);
    boolean setPresetFreqList (int  bandType, int index, String currentFreq);
    
    String[] getPresetFreqPSList (int bandType);
    String getPresetPSName(int presetIdx);
	void getPresetListPSInfo();
    String  getCurrPresetFreq (int  bandType);
    boolean setCurrPresetFreq (int  bandType);
    boolean  restoreFactorySettings();
    
    boolean enableRDSSwitch(boolean enable);
    boolean getRDSSwitchStatus();
    boolean enableTASwitch(boolean enable);
    boolean getTASwitchStatus();
    boolean enableAFSwitch(boolean enable);
    boolean getAFSwitchStatus();
    boolean enableEONSwitch(boolean enable);
    boolean getEONSwitchStatus();
    boolean enableCTSwitch(boolean enable);
    boolean getCTSwitchStatus();
    boolean enableRegionSwitch(boolean enable);
    boolean getRegionSwitchStatus();
    boolean enablePTYSwitch(boolean enable);
    boolean getPTYSwitchStatus();
    boolean enablePSSwitch(boolean enable);
    boolean getPSSwitchStatus();
    
    
    boolean setRDSType(byte rdsType);
    boolean setTAVolume(int  vol_before,int  vol,int  vol_after);
    int getTAVolume();
    boolean setTAVolume_Before(int  vol);
    int getTAVolume_Before();
    boolean setTAVolume_After(int  vol);
    int getTAVolume_After();
    boolean isMute6686();
    boolean setRDSAFLevel(byte level);
    boolean searchSpecialRDSProgram(int ptyType);
    String  getRDSType();
    
    void setRadioInfoChangeListener(IRadioInfoChangeListener listener);
    void removeRadioInfoChangeListener(IRadioInfoChangeListener listener);
    void setRDSInfoChangeListener(IRDSInfoChangeListener listener);
    void removeRDSInfoChangeListener(IRDSInfoChangeListener listener);
    
    void initRadioData(); //Add 20151204
    
    void saveAppdata(in String filePath);
	void sendAppdata(in String filePath);

	void forceMonoSwitch();
	boolean getSupportForceMono();

    int getStereoStatus();

    void changNextStation();
    void changPreStation();

    void dabPre();
    void dabScan();
    void dabNext();
    void dabSelPre();
    void switchPowerState(boolean isPowerOn);
    void dabSelFreq(int Freq);
    void dabSelService(int index);
    void dabPowerState(boolean isPowerOn);
    void bandFmChange();
    void bandAmChange();
    void changeBandFm1();
    void changeBandFm2();
    void changeBandFm3();
    void changeBandAm1();
    void changeBandAm2();
    void mute6686(boolean mute);
}