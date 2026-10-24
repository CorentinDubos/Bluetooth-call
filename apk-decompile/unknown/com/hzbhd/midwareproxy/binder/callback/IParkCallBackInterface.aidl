package com.hzbhd.midwareproxy.binder.callback;

interface IParkCallBackInterface{
   /**
	* 显示倒车轨迹信息
	* @param mOrbitAngle: 轮胎转角信息
	*/    
	void onParkOrbitAngleChange(int angle);
}