package com.hzbhd.config.device

import com.hzbhd.config.lib.device.ConfigDeviceConstant

open class Device {
    /**
     * 是否是jenkins编译
     */
    open var BUILD_JENKINS: String = ConfigDeviceConstant.CONFIG_TRUE

    /**
     * 是否是4g模块
     */
    open var CFG_BUILD_MODEM: String = ConfigDeviceConstant.CONFIG_FALSE;
}