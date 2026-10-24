.class public Lcom/hzbhd/midwareproxy/utils/CrashReportUtils;
.super Ljava/lang/Object;
.source "CrashReportUtils.java"


# static fields
.field public static final ACTION_CARSHREPORT:Ljava/lang/String; = ".crashreport"

.field public static final BUGLY_APPID_BLINK:Ljava/lang/String; = "77f7e10704"

.field public static final BUGLY_APPID_BLUETOOTH:Ljava/lang/String; = "f36c398ba5"

.field public static final BUGLY_APPID_CANBUS:Ljava/lang/String; = "10389eeeba"

.field public static final BUGLY_APPID_DSP:Ljava/lang/String; = "d23c2be472"

.field public static final BUGLY_APPID_EQ:Ljava/lang/String; = "f4c3dda65a"

.field public static final BUGLY_APPID_LAUNCHER:Ljava/lang/String; = "bca81f4f68"

.field public static final BUGLY_APPID_MEDIA:Ljava/lang/String; = "6add284758"

.field public static final BUGLY_APPID_RADIO:Ljava/lang/String; = "e0380c76e8"

.field public static final BUGLY_APPID_SETTING:Ljava/lang/String; = "994f39c7c6"

.field public static final BUGLY_APPID_SWC:Ljava/lang/String; = "503561c667"

.field public static final BUGLY_APPID_SYSTEMUI:Ljava/lang/String; = "4115c8cdf7"

.field public static final PACKAGENAME_BLINK:Ljava/lang/String; = "com.hzbhd.blink"

.field public static final PACKAGENAME_BLUETOOTH:Ljava/lang/String; = "com.hzbhd.bluetooth"

.field public static final PACKAGENAME_CANBUS:Ljava/lang/String; = "com.hzbhd.canbus"

.field public static final PACKAGENAME_DSP:Ljava/lang/String; = "com.hzbhd.dsp"

.field public static final PACKAGENAME_EQ:Ljava/lang/String; = "com.hzbhd.eq"

.field public static final PACKAGENAME_LAUNCHER:Ljava/lang/String; = "com.android.launcher3"

.field public static final PACKAGENAME_MEDIA:Ljava/lang/String; = "com.hzbhd.media"

.field public static final PACKAGENAME_RADIO:Ljava/lang/String; = "com.hzbhd.radio"

.field public static final PACKAGENAME_SETTING:Ljava/lang/String; = "com.android.settings"

.field public static final PACKAGENAME_SWC:Ljava/lang/String; = "com.hzbhd.swc"

.field public static final PACKAGENAME_SYSTEMUI:Ljava/lang/String; = "com.android.systemui"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/hzbhd/midwareproxy/utils/CrashReportUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/midwareproxy/utils/CrashReportUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBtName()Ljava/lang/String;
    .locals 2

    .line 216
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->BT_MODULE:Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getSharedInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    const-string v0, "IVT"

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v1, v0, :cond_1

    const-string v0, "SUD"

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne v1, v0, :cond_2

    const-string v0, "SUD-851"

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    if-ne v1, v0, :cond_3

    const-string v0, "BLINK"

    goto :goto_0

    :cond_3
    const/4 v1, 0x6

    if-ne v1, v0, :cond_4

    const-string v0, "SUD-828"

    goto :goto_0

    :cond_4
    const/4 v1, 0x7

    if-ne v1, v0, :cond_5

    const-string v0, "IVT-I159"

    goto :goto_0

    :cond_5
    const/16 v1, 0x9

    if-ne v1, v0, :cond_6

    const-string v0, "GOC_WA020"

    goto :goto_0

    :cond_6
    const/16 v1, 0x8

    if-ne v1, v0, :cond_7

    const-string v0, "BLINK_NETWORK"

    goto :goto_0

    :cond_7
    const/16 v1, 0xa

    if-ne v1, v0, :cond_8

    const-string v0, "BLINK161"

    goto :goto_0

    :cond_8
    const/16 v1, 0xc

    if-ne v1, v0, :cond_9

    const-string v0, "GOC_RF210"

    goto :goto_0

    :cond_9
    const/16 v1, 0xd

    if-ne v1, v0, :cond_a

    const-string v0, "GOC_3008"

    goto :goto_0

    :cond_a
    const-string v0, "GOC"

    :goto_0
    return-object v0
.end method

.method public static getCrashReportIsOpen(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 111
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".crashreport"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 112
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/CrashReportUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "<-----get---->"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string/jumbo p1, "true"

    .line 116
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static getMCUVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 155
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getMCUVersion()Ljava/lang/String;

    move-result-object v0

    .line 156
    invoke-static {p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isSaleInside(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 157
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "STM32-"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 159
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "STM8-"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    const/4 v0, 0x0

    const-string v1, "-"

    .line 161
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 163
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method

.method private static getOSVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .line 174
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getDeviceInfo()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0xc

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 176
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    .line 179
    :goto_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getUbootVersion()I

    move-result v1

    .line 180
    invoke-static {}, Lcom/hzbhd/midwareproxy/utils/CrashReportUtils;->getVersionHardwareInfo()Ljava/lang/String;

    move-result-object v2

    .line 181
    invoke-static {}, Lcom/hzbhd/midwareproxy/utils/CrashReportUtils;->getBtName()Ljava/lang/String;

    move-result-object v3

    .line 182
    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->getOsVersionBuildDisplay()Ljava/lang/String;

    move-result-object v4

    .line 184
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    sget-object v6, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->FACTORY_NAME:Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;

    invoke-virtual {v6}, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getSharedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ro.bhd.bsp.version"

    .line 187
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-static {p0}, Lcom/hzbhd/midware/constant/CustomerIDConstantDef;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "ro.bhd.framework.version"

    .line 189
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " - "

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getVersionHardwareInfo()Ljava/lang/String;
    .locals 2

    .line 198
    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->has701Flash()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - 701F"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 202
    :cond_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->ishasMpuControlChipAHD_N3_or_Nvp6158c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 203
    sget-boolean v0, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->haschipnvp6158c:Z

    if-eqz v0, :cond_1

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - NVP6158C"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 205
    :cond_1
    sget-boolean v0, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->haschipn3:Z

    if-eqz v0, :cond_2

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - N3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 207
    :cond_2
    sget-boolean v0, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->haschipn5:Z

    if-eqz v0, :cond_3

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - N5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    :goto_0
    return-object v1
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3

    .line 49
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/CrashReportUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init---------------->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v2, "994f39c7c6"

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "com.hzbhd.radio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "com.hzbhd.media"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_2
    const-string v1, "com.hzbhd.blink"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_1

    :sswitch_3
    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_4
    const-string v1, "com.hzbhd.eq"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_5
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_6
    const-string v1, "com.android.launcher3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_7
    const-string v1, "com.hzbhd.canbus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_8
    const-string v1, "com.hzbhd.bluetooth"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_9
    const-string v1, "com.hzbhd.swc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_a
    const-string v1, "com.hzbhd.dsp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const-string v0, "77f7e10704"

    .line 82
    invoke-static {p0, v0}, Lcom/hzbhd/midwareproxy/utils/CrashReportUtils;->initCrashReport(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_1
    const-string v0, "503561c667"

    .line 79
    invoke-static {p0, v0}, Lcom/hzbhd/midwareproxy/utils/CrashReportUtils;->initCrashReport(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_2
    const-string v0, "f36c398ba5"

    .line 76
    invoke-static {p0, v0}, Lcom/hzbhd/midwareproxy/utils/CrashReportUtils;->initCrashReport(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 73
    :pswitch_3
    invoke-static {p0, v2}, Lcom/hzbhd/midwareproxy/utils/CrashReportUtils;->initCrashReport(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_4
    const-string v0, "4115c8cdf7"

    .line 70
    invoke-static {p0, v0}, Lcom/hzbhd/midwareproxy/utils/CrashReportUtils;->initCrashReport(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_5
    const-string v0, "f4c3dda65a"

    .line 67
    invoke-static {p0, v0}, Lcom/hzbhd/midwareproxy/utils/CrashReportUtils;->initCrashReport(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_6
    const-string v0, "d23c2be472"

    .line 64
    invoke-static {p0, v0}, Lcom/hzbhd/midwareproxy/utils/CrashReportUtils;->initCrashReport(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_7
    const-string v0, "6add284758"

    .line 61
    invoke-static {p0, v0}, Lcom/hzbhd/midwareproxy/utils/CrashReportUtils;->initCrashReport(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_8
    const-string v0, "e0380c76e8"

    .line 58
    invoke-static {p0, v0}, Lcom/hzbhd/midwareproxy/utils/CrashReportUtils;->initCrashReport(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_9
    const-string v0, "10389eeeba"

    .line 55
    invoke-static {p0, v0}, Lcom/hzbhd/midwareproxy/utils/CrashReportUtils;->initCrashReport(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_a
    const-string v0, "bca81f4f68"

    .line 52
    invoke-static {p0, v0}, Lcom/hzbhd/midwareproxy/utils/CrashReportUtils;->initCrashReport(Landroid/content/Context;Ljava/lang/String;)V

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6e6c90ce -> :sswitch_a
        -0x6e6c5810 -> :sswitch_9
        -0x4445eca1 -> :sswitch_8
        -0x2e98fe61 -> :sswitch_7
        -0x296f6b59 -> :sswitch_6
        -0x109820e1 -> :sswitch_5
        0x46c2b11b -> :sswitch_4
        0x653aae6f -> :sswitch_3
        0x7a55008d -> :sswitch_2
        0x7aecc115 -> :sswitch_1
        0x7b31652c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static initCrashReport(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 88
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-static {p0, v0}, Lcom/hzbhd/midwareproxy/utils/CrashReportUtils;->getCrashReportIsOpen(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    sget-object v1, Lcom/hzbhd/midwareproxy/utils/CrashReportUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<---------> is open bugly"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 92
    invoke-static {p0, p1, v0}, Lcom/tencent/bugly/crashreport/CrashReport;->initCrashReport(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 96
    invoke-static {p0}, Lcom/hzbhd/midwareproxy/utils/CrashReportUtils;->getOSVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "OS\u7248\u672c"

    invoke-static {p0, v0, p1}, Lcom/tencent/bugly/crashreport/CrashReport;->putUserData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static {p0}, Lcom/hzbhd/midwareproxy/utils/CrashReportUtils;->getMCUVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "MCU\u7248\u672c"

    invoke-static {p0, v0, p1}, Lcom/tencent/bugly/crashreport/CrashReport;->putUserData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static openAll(Landroid/content/Context;)V
    .locals 12

    .line 121
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/CrashReportUtils;->TAG:Ljava/lang/String;

    const-string v1, "--------->openAllBugly"

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.android.launcher3"

    const/4 v1, 0x1

    .line 122
    invoke-static {p0, v0, v1}, Lcom/hzbhd/midwareproxy/utils/CrashReportUtils;->setCrashReportIsOpen(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string v2, "com.hzbhd.bluetooth"

    .line 123
    invoke-static {p0, v2, v1}, Lcom/hzbhd/midwareproxy/utils/CrashReportUtils;->setCrashReportIsOpen(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string v3, "com.hzbhd.canbus"

    .line 124
    invoke-static {p0, v3, v1}, Lcom/hzbhd/midwareproxy/utils/CrashReportUtils;->setCrashReportIsOpen(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string v4, "com.hzbhd.radio"

    .line 125
    invoke-static {p0, v4, v1}, Lcom/hzbhd/midwareproxy/utils/CrashReportUtils;->setCrashReportIsOpen(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string v5, "com.hzbhd.media"

    .line 126
    invoke-static {p0, v5, v1}, Lcom/hzbhd/midwareproxy/utils/CrashReportUtils;->setCrashReportIsOpen(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string v6, "com.hzbhd.dsp"

    .line 127
    invoke-static {p0, v6, v1}, Lcom/hzbhd/midwareproxy/utils/CrashReportUtils;->setCrashReportIsOpen(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string v7, "com.hzbhd.eq"

    .line 128
    invoke-static {p0, v7, v1}, Lcom/hzbhd/midwareproxy/utils/CrashReportUtils;->setCrashReportIsOpen(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string v8, "com.android.systemui"

    .line 129
    invoke-static {p0, v8, v1}, Lcom/hzbhd/midwareproxy/utils/CrashReportUtils;->setCrashReportIsOpen(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string v9, "com.android.settings"

    .line 130
    invoke-static {p0, v9, v1}, Lcom/hzbhd/midwareproxy/utils/CrashReportUtils;->setCrashReportIsOpen(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string v10, "com.hzbhd.swc"

    .line 131
    invoke-static {p0, v10, v1}, Lcom/hzbhd/midwareproxy/utils/CrashReportUtils;->setCrashReportIsOpen(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string v11, "com.hzbhd.blink"

    .line 132
    invoke-static {p0, v11, v1}, Lcom/hzbhd/midwareproxy/utils/CrashReportUtils;->setCrashReportIsOpen(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string v1, "activity"

    .line 134
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 135
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0, v2}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0, v3}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0, v4}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0, v5}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0, v6}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0, v7}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0, v8}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0, v9}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0, v10}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0, v11}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    return-void
.end method

.method public static setCrashReportIsOpen(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3

    .line 105
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/CrashReportUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<-----set---->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".crashreport"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static testJavaCrash()V
    .locals 0

    .line 149
    invoke-static {}, Lcom/tencent/bugly/crashreport/CrashReport;->testJavaCrash()V

    return-void
.end method
