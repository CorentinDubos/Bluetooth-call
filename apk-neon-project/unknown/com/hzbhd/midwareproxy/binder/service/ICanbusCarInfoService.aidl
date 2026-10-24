package com.hzbhd.midwareproxy.binder.service;
interface ICanbusCarInfoService {
   /**
	* 传递Canbus车辆信息
	* @param mCanbusInfo: Canbus信息
	*/    
    void canbusCarInfoChange(in byte[] mCanbusInfo);
}
