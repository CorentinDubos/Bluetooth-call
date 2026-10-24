package com.hzbhd.midwareproxy.binder.service;
import android.os.Bundle;
interface ISourceSwitchManager
{
	void detectParkPanoramic(boolean mIsParkPanoramic,int panoramicIO);
	boolean canAudioChannelRequest(int sourceID,int seatType);
	boolean audioChannelRequest(int sourceID,int seatType,in Bundle bundle);
	boolean audioChannelRelease(int sourceID,int seatType,in Bundle bundle);

	boolean videoChannelRequest(int sourceID,int seatType,in Bundle bundle);
	boolean videoChannelRelease(int sourceID,int seatType,in Bundle bundle);
    int getCurrentValidSource(int seatType);

    boolean requestVideoChannel(int videoChannel);
	boolean releaseVideoChannel(int videoChannel);

    void switchToNextSource();
    int getCurrentFrontSource(int seatType);

    void openRightVisualCamera(boolean status);

    boolean pauseorresumeothercvbs(boolean status );  //status true pause: false resume


}