package com.hzbhd.midwareproxy.binder.service; 

import com.hzbhd.midwareproxy.binder.callback.IAtvCallBackInterface;

interface IAtvInterface {
	void registerCallBack(IAtvCallBackInterface callbackInterface);
	
	void search_up_channel();
	void search_down_channel();
	void search_next_channel();	
	void search_prev_channel();	
	void tv_system_change();
	void tv_req_info();	
	void search_all();
	void goto_channel(int channel);	
		
	boolean getParkingState();
}
