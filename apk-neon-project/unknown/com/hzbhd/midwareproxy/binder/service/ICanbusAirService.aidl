package com.hzbhd.midwareproxy.binder.service;
interface ICanbusAirService {
   /**
	* 显示Canbus空调信息
	* @param mCanbusInfo: Canbus信息
	*/    
    void canbusAirInfoChange(in byte[] mCanbusInfo);
}
