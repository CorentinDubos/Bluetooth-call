package com.hzbhd.midwareproxy.binder.callback;

interface IAtvCallBackInterface{
	void reportVideoStatus(int videoType, int videoState, int videoFormat);
	void reportChannelStatus(int currentCh, int totalCh,int searchType, int tvSystem);
	void reportChannelFrequncy(float frequency);
	void reportChannelList(float frequency);
	void reportParkingState(boolean parkingState);
}