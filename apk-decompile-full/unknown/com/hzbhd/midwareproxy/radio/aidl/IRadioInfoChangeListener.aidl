// IAudioControlInterface.aidl
package com.hzbhd.midwareproxy.radio.aidl;

// Declare any non-default types here with import statements

/** Radio service interface */

interface IRadioInfoChangeListener
{
    void radioChannelTypeChanged(String channelTypeValue);
	void radioSignalStrengthChanged(int signal);
	void radioFreqChanged(String freq);
	void radioBandTypeChanged(String bandType);
	void radioAutoSearchStatusChanged(boolean flag);
	void radioAutoSearchWithPreviewStatusChanged(boolean flag);
	void radioStepUpStatusChanged(boolean flag);
	void radioStepDownStatusChanged(boolean flag);
	void radioPresetFreqListChanged(in String[] list);
    void radioPresetFreqPSListChanged(in String[] list);
	void radioPresetFreqPSNameChanged(int presetIdx, String presetPSName);
    void radioStereoChanged(in int mStereo);
    void radioLocalChanged(in int mLocal);
    void radioForceMonoChanged(in int mForceMone);//MESSAGE_FORCEMONE_CHANGED

    void dabServiceLabel(in String[] labels);
    void dabServiceInfor(in int[] infor);
    void dabDlsInfor(String infor);
    void dabKbitInfor(int infor);
    void dabServiceIDInfor(in String[] infor);
    void dabServiceItemLabel(int index,String infor);
}