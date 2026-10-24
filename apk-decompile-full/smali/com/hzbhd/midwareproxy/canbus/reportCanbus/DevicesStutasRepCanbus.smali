.class public Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;
.super Ljava/lang/Object;
.source "DevicesStutasRepCanbus.java"


# static fields
.field static mDevicesStutasRepCanbus:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;

.field private static reportDevicesStutas:[B


# instance fields
.field btOn:I

.field discExsit:I

.field discRadom:I

.field discRepeat:I

.field folderLoop:I

.field fullCurve:I

.field micOn:I

.field mute:I

.field radioSt:I

.field randomFolder:I

.field sdCardIn:I

.field singleCycle:I

.field usbIn:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [B

    .line 25
    fill-array-data v0, :array_0

    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->reportDevicesStutas:[B

    .line 26
    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;

    invoke-direct {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;-><init>()V

    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->mDevicesStutasRepCanbus:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;

    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x3t
        0x30t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;
    .locals 2

    const-class v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;

    monitor-enter v0

    .line 28
    :try_start_0
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->mDevicesStutasRepCanbus:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;

    if-nez v1, :cond_0

    .line 29
    new-instance v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;

    invoke-direct {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;-><init>()V

    sput-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->mDevicesStutasRepCanbus:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;

    .line 31
    :cond_0
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->mDevicesStutasRepCanbus:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public answerAndPhoneOffIsOneKey(Landroid/content/Context;Z)V
    .locals 2

    .line 165
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.hzbhd.android.ANSWER_AND_PHONE_OFF_ONE_KEY__ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "isOneKey"

    .line 166
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 167
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public destoryAllSrcReportTimer(Landroid/content/Context;)V
    .locals 1

    .line 157
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AuxInRepCanbus;->getInstance()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AuxInRepCanbus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AuxInRepCanbus;->destroyTsPerSec()V

    .line 158
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;->getInstance()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;->destroyTsPerSec()V

    .line 159
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->destroyTsPerSec()V

    .line 160
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->getInstance()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->destroyTsPerSec()V

    .line 161
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus;->getInstance()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus;->reportDestroyCanbusInfo(Landroid/content/Context;)V

    return-void
.end method

.method public reportCanbusInfo(Landroid/content/Context;)V
    .locals 10

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hzbhd.bluetooth.extra.CONNECTION_STATE"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->btOn:I

    .line 36
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->getInstance()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->isMpegInRadomMode(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->discRadom:I

    .line 37
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->getInstance()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->isMpegInRepeatMode(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->discRepeat:I

    .line 38
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->getInstance()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->isMpegDiscExist(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->discExsit:I

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "IsSDCardIn"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->sdCardIn:I

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "IsUsbIn"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->usbIn:I

    .line 41
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->getInstance()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->IsRadioSt(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->radioSt:I

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "mute"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->mute:I

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "singleCycle"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->singleCycle:I

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "fullCurve"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->fullCurve:I

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "folderLoop"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->folderLoop:I

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "randomFolder"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->randomFolder:I

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "discRadom="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->discRadom:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "DevicesStutasRepCanbus"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "discRepeat="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->discRepeat:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "discExsit="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->discExsit:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "radioSt="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->radioSt:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SDCardIn="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->sdCardIn:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "usbIn="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->usbIn:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :try_start_0
    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus$1;

    invoke-direct {v0, p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus$1;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;)V

    invoke-static {p1, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface;->sendMsg(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface$CallBack;)V

    .line 62
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus$2;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x6

    const/16 v4, 0x16

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-eq p1, v1, :cond_9

    if-eq p1, v7, :cond_8

    if-eq p1, v6, :cond_2

    if-eq p1, v5, :cond_1

    goto/16 :goto_5

    .line 111
    :cond_1
    iget p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->discRadom:I

    shl-int/2addr p1, v5

    iget v3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->discRepeat:I

    shl-int/2addr v3, v6

    or-int/2addr p1, v3

    iget v3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->radioSt:I

    shl-int/2addr v3, v7

    or-int/2addr p1, v3

    iget v3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->sdCardIn:I

    shl-int/2addr v3, v1

    or-int/2addr p1, v3

    iget v3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->discExsit:I

    or-int/2addr p1, v3

    new-array v3, v5, [B

    aput-byte v4, v3, v2

    aput-byte v0, v3, v1

    int-to-byte p1, p1

    aput-byte p1, v3, v7

    aput-byte v2, v3, v6

    .line 113
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_5

    :cond_2
    const-string p1, "fzy"

    .line 78
    invoke-static {p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->sdCardIn:I

    if-eq p1, v1, :cond_4

    iget p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->usbIn:I

    if-ne p1, v1, :cond_3

    goto :goto_1

    :cond_3
    move p1, v2

    goto :goto_2

    :cond_4
    :goto_1
    move p1, v1

    .line 81
    :goto_2
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/RadioManager;->getRadioManager()Lcom/hzbhd/midwareproxy/radio/RadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/radio/RadioManager;->getCurrentBand()Ljava/lang/String;

    move-result-object v0

    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    goto :goto_3

    :sswitch_0
    const-string v8, "FM3"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v3, v5

    goto :goto_3

    :sswitch_1
    const-string v8, "FM2"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v3, v6

    goto :goto_3

    :sswitch_2
    const-string v8, "FM1"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v3, v7

    goto :goto_3

    :sswitch_3
    const-string v8, "AM2"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v3, v1

    goto :goto_3

    :sswitch_4
    const-string v8, "AM1"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v3, v2

    :cond_5
    :goto_3
    if-eqz v3, :cond_6

    if-eq v3, v1, :cond_6

    if-eq v3, v7, :cond_7

    if-eq v3, v6, :cond_7

    if-eq v3, v5, :cond_7

    :cond_6
    move v0, v2

    goto :goto_4

    :cond_7
    move v0, v1

    :goto_4
    shl-int/lit8 v3, v0, 0x5

    or-int/lit16 v3, v3, 0xc0

    .line 93
    iget v8, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->discRadom:I

    shl-int/2addr v8, v5

    or-int/2addr v3, v8

    iget v8, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->discRepeat:I

    shl-int/2addr v8, v6

    or-int/2addr v3, v8

    iget v8, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->radioSt:I

    shl-int/2addr v8, v7

    or-int/2addr v3, v8

    shl-int/2addr p1, v1

    or-int/2addr p1, v3

    iget v3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->discExsit:I

    or-int/2addr p1, v3

    const-string v3, "cwh"

    .line 94
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isShowDot = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v5, [B

    aput-byte v4, v0, v2

    const/16 v3, -0x7e

    aput-byte v3, v0, v1

    int-to-byte p1, p1

    aput-byte p1, v0, v7

    int-to-byte p1, v2

    aput-byte p1, v0, v6

    .line 99
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto :goto_5

    .line 72
    :cond_8
    iget p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->discRadom:I

    shl-int/2addr p1, v5

    iget v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->discRepeat:I

    shl-int/2addr v0, v6

    or-int/2addr p1, v0

    iget v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->radioSt:I

    shl-int/2addr v0, v7

    or-int/2addr p1, v0

    iget v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->sdCardIn:I

    shl-int/2addr v0, v1

    or-int/2addr p1, v0

    iget v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->discExsit:I

    or-int/2addr p1, v0

    new-array v0, v5, [B

    aput-byte v4, v0, v2

    const/16 v3, 0x8

    aput-byte v3, v0, v1

    int-to-byte p1, p1

    aput-byte p1, v0, v7

    aput-byte v2, v0, v6

    .line 74
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto :goto_5

    .line 65
    :cond_9
    iget p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->discRadom:I

    shl-int/2addr p1, v5

    iget v3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->discRepeat:I

    shl-int/2addr v3, v6

    or-int/2addr p1, v3

    iget v3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->radioSt:I

    shl-int/2addr v3, v7

    or-int/2addr p1, v3

    iget v3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->sdCardIn:I

    shl-int/2addr v3, v1

    or-int/2addr p1, v3

    iget v3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->discExsit:I

    or-int/2addr p1, v3

    new-array v3, v5, [B

    aput-byte v4, v3, v2

    aput-byte v0, v3, v1

    int-to-byte p1, p1

    aput-byte p1, v3, v7

    aput-byte v2, v3, v6

    .line 67
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    .line 119
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xfd85 -> :sswitch_4
        0xfd86 -> :sswitch_3
        0x1104a -> :sswitch_2
        0x1104b -> :sswitch_1
        0x1104c -> :sswitch_0
    .end sparse-switch
.end method

.method public reportDestoryCanbusInfo(Landroid/content/Context;)V
    .locals 3

    .line 126
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getFactoryCanType()I

    move-result v0

    const/16 v1, 0x79

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getFactoryCanType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 127
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "btState"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 128
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->DTV:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-eq v0, v1, :cond_1

    .line 129
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->BTPHONE:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-ne v0, v1, :cond_2

    .line 130
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "currentReport"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 135
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 138
    :cond_2
    :goto_0
    invoke-static {p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface;->unbindService(Landroid/content/Context;)V

    return-void
.end method

.method public reportSimpleHondaAccordDeviceStatus(Landroid/content/Context;ZZB)V
    .locals 3

    .line 142
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->getInstance()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->isMpegDiscExist(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->discExsit:I

    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "IsSDCardIn"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->sdCardIn:I

    .line 144
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "IsUsbIn"

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->usbIn:I

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    int-to-byte p2, p2

    int-to-byte p3, p3

    shl-int/lit8 p1, p1, 0x6

    shl-int/lit8 p2, p2, 0x5

    or-int/2addr p1, p2

    const/4 p2, 0x4

    shl-int/2addr p3, p2

    or-int/2addr p1, p3

    .line 147
    iget p3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->discExsit:I

    const/4 v1, 0x3

    shl-int/2addr p3, v1

    or-int/2addr p1, p3

    or-int/2addr p1, p4

    int-to-byte p1, p1

    .line 149
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p3

    new-array p2, p2, [B

    const/16 p4, 0x16

    aput-byte p4, p2, v2

    const/16 p4, -0x3b

    aput-byte p4, p2, v0

    const/4 p4, 0x2

    aput-byte v2, p2, p4

    aput-byte p1, p2, v1

    invoke-virtual {p3, p2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 152
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method
