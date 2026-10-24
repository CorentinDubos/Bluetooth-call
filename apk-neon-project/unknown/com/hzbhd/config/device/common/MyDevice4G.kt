package com.hzbhd.config.device.common

import com.hzbhd.config.device.Device
import com.hzbhd.config.lib.device.ConfigDeviceConstant

open class MyDevice4G : Device() {
    override var CFG_BUILD_MODEM: String = ConfigDeviceConstant.CONFIG_TRUE;
}