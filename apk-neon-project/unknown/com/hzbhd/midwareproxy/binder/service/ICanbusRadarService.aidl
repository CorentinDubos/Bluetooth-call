package com.hzbhd.midwareproxy.binder.service;
interface ICanbusRadarService {
   /**
	* 显示Canbus雷达信息
	* @param mCanbusInfo: Canbus信息
	*/    
    void canbusRadarInfoChange(in byte[] mCanbusInfo);
}
