/**
 *  Hzbhd Project - com.hzbhd.midwareproxy.iPod.aidl
 *
 *  Copyright (C) Hzbhd 2013 - 2015
 *
 *  File:GeneralLingoRetListener.java
 *
 *  Revision:
 *  
 *  2013-6-9
 *		- first revision
 *  
 */
package com.hzbhd.midwareproxy.iPod.aidl;

import com.hzbhd.midwareproxy.iPod.EventNotification;
/**
 * General Lingo的事件监听接口
 *
 * @date 2013-6-9
 *
 */
interface GeneralLingoRetListener {
	/**
	 * <body>Apple device返回Accessory命令的执行结果</body> 
	 * @param result	accessory命令执行结果
	 * @param accessoryCmdID	该应答对应的accessory命令ID
	 */
	void ack(byte result, int accessoryCmdID);
	
	/**
	 * <body>Apple device返回其支持的通知事件的类型</body>
	 * @param result	accessory命令执行结果 
	 * @param eventNotification	apple device 支持的通知事件类型
	 */
	void retSupportedEventNotification(byte result, in EventNotification eventNotification);
}
