// IAudioControlInterface.aidl
package com.hzbhd.midwareproxy.radio.aidl;

// Declare any non-default types here with import statements

/** Radio service interface */

interface IRDSInfoChangeListener
{
    void PSInfoChanged(String psInfo);
	void PTYInfoChanged(String ptyInfo);
	void RTInfoChanged(String rtInfo);
	void AFLevelChanged(String level);
	void AFSeekChanged(boolean flag);
	void AFStatusChanged(boolean onoff);
	void TPSeekChanged(boolean flag);
	void PTYSeekChanged(boolean flag);
	void TASeekChanged(boolean flag);
	void RegionStatusChanged(boolean flag);
	void TAStatusChanged(boolean flag);
	void EWSStatusChanged(boolean flag);
	void EONStatusChanged(boolean flag);
	void TPInfoChanged(boolean flag);	// added by sw001 for TP display
    void PTYTypeInfoChanged(String ptyTypeInfo); //added by sw001 for PTYTypeInfo display 20151030
    void CurrentStationStatusChanged(boolean CurrentStation); //added by sw001 for Current station 20151031
    void PSStatusChanged(boolean psStatus); //added by sw001 for PS_OnOff 20151031
    void EWSArrivedChanged(boolean EWSArrived); //added by sw001 for EWS Arrived 20151118
    void RTStatusChanged(boolean rtStatus);
}