package com.hzbhd.midwareproxy.binder.service;

interface IDTVInterface {

	void setDate();
	void sendPosition(int x,int y);
	void sendPositionParams(int width, int height , int x, int y);
	void sendPositionExtra(int dtvType,in byte[]cmdHeads,int x,int y);
}
