.class public Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;
.super Ljava/lang/Object;
.source "QzOringinalScreenCmdSnd.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/canbus/orginalScreen/OringinalCarScreenCmdSndItf;


# static fields
.field static mOringinalScreenItfEg:Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;

.field public static prevDeviceStatus:B


# instance fields
.field private camStatus:B

.field private camVisualStatus:B

.field private exernelCam360Status:B

.field private srcStatus:B

.field private viewStatus:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;

    invoke-direct {v0}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;-><init>()V

    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->mOringinalScreenItfEg:Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getExternalCam360SettingStatus(Landroid/content/Context;)B
    .locals 2

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "QZ_ORIGINAL_EXT_CAM_360_STATUS"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    int-to-byte p1, p1

    return p1
.end method

.method public static declared-synchronized getInstance()Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;
    .locals 2

    const-class v0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;

    monitor-enter v0

    .line 16
    :try_start_0
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->mOringinalScreenItfEg:Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;

    if-nez v1, :cond_0

    .line 17
    new-instance v1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;

    invoke-direct {v1}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;-><init>()V

    sput-object v1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->mOringinalScreenItfEg:Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;

    .line 19
    :cond_0
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->mOringinalScreenItfEg:Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;
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
.method public cmdBack2CarDevice()V
    .locals 2

    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 63
    fill-array-data v1, :array_0

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    new-array v0, v0, [B

    .line 64
    fill-array-data v0, :array_1

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    return-void

    :array_0
    .array-data 1
        0x16t
        -0x7et
        0x1t
        0x1t
    .end array-data

    :array_1
    .array-data 1
        0x16t
        -0x7et
        0x1t
        0x0t
    .end array-data
.end method

.method public cmdCamVisualStatus(Landroid/content/Context;B)V
    .locals 2

    .line 169
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "QZ_ORIGINAL_CAM_VISUAL_STATUS"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 170
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->getSrcModeStatus(Landroid/content/Context;)B

    move-result v0

    iput-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->srcStatus:B

    .line 171
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->getViewStatus(Landroid/content/Context;)B

    move-result v0

    iput-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->viewStatus:B

    .line 172
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->getCamVisualStatus(Landroid/content/Context;)B

    move-result p1

    iput-byte p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->camVisualStatus:B

    const/4 p1, 0x5

    new-array p1, p1, [B

    const/4 v0, 0x0

    const/16 v1, 0x16

    aput-byte v1, p1, v0

    const/4 v0, 0x1

    const/16 v1, -0x7d

    aput-byte v1, p1, v0

    .line 173
    iget-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->viewStatus:B

    const/4 v1, 0x2

    aput-byte v0, p1, v1

    iget-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->srcStatus:B

    const/4 v1, 0x3

    aput-byte v0, p1, v1

    const/4 v0, 0x4

    aput-byte p2, p1, v0

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    return-void
.end method

.method public cmdDisableOurDevice(Landroid/content/Context;Z)V
    .locals 2

    .line 142
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.hzbhd.action.ORGINAL_CAR_SCREEN_SWITCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "disable_our_device"

    .line 143
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 144
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public cmdEnterCam360()V
    .locals 2

    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 69
    fill-array-data v1, :array_0

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    new-array v0, v0, [B

    .line 70
    fill-array-data v0, :array_1

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    return-void

    :array_0
    .array-data 1
        0x16t
        -0x7et
        0x2t
        0x1t
    .end array-data

    :array_1
    .array-data 1
        0x16t
        -0x7et
        0x2t
        0x0t
    .end array-data
.end method

.method public cmdEnterCamFront()V
    .locals 2

    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 75
    fill-array-data v1, :array_0

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    new-array v0, v0, [B

    .line 76
    fill-array-data v0, :array_1

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    return-void

    :array_0
    .array-data 1
        0x16t
        -0x7et
        0x3t
        0x1t
    .end array-data

    :array_1
    .array-data 1
        0x16t
        -0x7et
        0x3t
        0x0t
    .end array-data
.end method

.method public cmdInitCameraSettings(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, -0x7b

    aput-byte v2, v0, v1

    .line 131
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->getVideoSettingStatus(Landroid/content/Context;)B

    move-result v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    invoke-direct {p0, p1}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->getExternalCam360SettingStatus(Landroid/content/Context;)B

    move-result p1

    const/4 v1, 0x3

    aput-byte p1, v0, v1

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    return-void
.end method

.method public cmdOpenEps(Landroid/content/Context;Z)V
    .locals 4

    .line 110
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->getVideoSettingStatus(Landroid/content/Context;)B

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1, p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->setIntByteWithBit(IIZ)I

    move-result p2

    int-to-byte p2, p2

    iput-byte p2, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->camStatus:B

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v2, 0x0

    const/16 v3, 0x16

    aput-byte v3, v0, v2

    const/16 v2, -0x7b

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    aput-byte p2, v0, v1

    .line 111
    invoke-direct {p0, p1}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->getExternalCam360SettingStatus(Landroid/content/Context;)B

    move-result p2

    const/4 v1, 0x3

    aput-byte p2, v0, v1

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-byte p2, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->camStatus:B

    const-string v0, "QZ_ORIGINAL_CAM_STATUS"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public cmdOpenOriginalCam360(Landroid/content/Context;Z)V
    .locals 3

    .line 149
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->getVideoSettingStatus(Landroid/content/Context;)B

    move-result v0

    const/4 v1, 0x5

    invoke-static {v0, v1, p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->setIntByteWithBit(IIZ)I

    move-result p2

    int-to-byte p2, p2

    iput-byte p2, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->camStatus:B

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, -0x7b

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    aput-byte p2, v0, v1

    .line 150
    invoke-direct {p0, p1}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->getExternalCam360SettingStatus(Landroid/content/Context;)B

    move-result p2

    const/4 v1, 0x3

    aput-byte p2, v0, v1

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    .line 151
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-byte p2, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->camStatus:B

    const-string v0, "QZ_ORIGINAL_CAM_STATUS"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public cmdOpenRadarDisp(Landroid/content/Context;Z)V
    .locals 4

    .line 117
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->getVideoSettingStatus(Landroid/content/Context;)B

    move-result v0

    const/4 v1, 0x2

    invoke-static {v0, v1, p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->setIntByteWithBit(IIZ)I

    move-result p2

    int-to-byte p2, p2

    iput-byte p2, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->camStatus:B

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v2, 0x0

    const/16 v3, 0x16

    aput-byte v3, v0, v2

    const/4 v2, 0x1

    const/16 v3, -0x7b

    aput-byte v3, v0, v2

    aput-byte p2, v0, v1

    .line 118
    invoke-direct {p0, p1}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->getExternalCam360SettingStatus(Landroid/content/Context;)B

    move-result p2

    const/4 v1, 0x3

    aput-byte p2, v0, v1

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-byte p2, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->camStatus:B

    const-string v0, "QZ_ORIGINAL_CAM_STATUS"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public cmdOpenRearCam(Landroid/content/Context;Z)V
    .locals 3

    .line 103
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->getVideoSettingStatus(Landroid/content/Context;)B

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->setIntByteWithBit(IIZ)I

    move-result p2

    int-to-byte p2, p2

    iput-byte p2, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->camStatus:B

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, -0x7b

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    aput-byte p2, v0, v1

    .line 104
    invoke-direct {p0, p1}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->getExternalCam360SettingStatus(Landroid/content/Context;)B

    move-result p2

    const/4 v1, 0x3

    aput-byte p2, v0, v1

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-byte p2, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->camStatus:B

    const-string v0, "QZ_ORIGINAL_CAM_STATUS"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public cmdOpenReverseDetect(Landroid/content/Context;Z)V
    .locals 3

    .line 124
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->getVideoSettingStatus(Landroid/content/Context;)B

    move-result v0

    const/4 v1, 0x4

    invoke-static {v0, v1, p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->setIntByteWithBit(IIZ)I

    move-result p2

    int-to-byte p2, p2

    iput-byte p2, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->camStatus:B

    new-array v0, v1, [B

    const/4 v1, 0x0

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, -0x7b

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    aput-byte p2, v0, v1

    .line 125
    invoke-direct {p0, p1}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->getExternalCam360SettingStatus(Landroid/content/Context;)B

    move-result p2

    const/4 v1, 0x3

    aput-byte p2, v0, v1

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-byte p2, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->camStatus:B

    const-string v0, "QZ_ORIGINAL_CAM_STATUS"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public cmdRepAudioStatus(BB)V
    .locals 3

    const/4 v0, 0x1

    shl-int/2addr p2, v0

    or-int/2addr p1, p2

    int-to-byte p1, p1

    const/4 p2, 0x3

    new-array p2, p2, [B

    const/4 v1, 0x0

    const/16 v2, 0x16

    aput-byte v2, p2, v1

    const/16 v1, -0x7c

    aput-byte v1, p2, v0

    const/4 v0, 0x2

    aput-byte p1, p2, v0

    .line 98
    invoke-static {p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    return-void
.end method

.method public cmdRepInApp()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 92
    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    return-void

    :array_0
    .array-data 1
        0x16t
        -0x7dt
        0x3t
    .end array-data
.end method

.method public cmdRepInBootLogo()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 82
    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    return-void

    :array_0
    .array-data 1
        0x16t
        -0x7dt
        0x1t
    .end array-data
.end method

.method public cmdRepInHomePage()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 87
    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    return-void

    :array_0
    .array-data 1
        0x16t
        -0x7dt
        0x2t
    .end array-data
.end method

.method public cmdSetExternelCam360(Landroid/content/Context;B)V
    .locals 2

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "QZ_ORIGINAL_EXT_CAM_360_STATUS"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p2, 0x4

    new-array p2, p2, [B

    const/4 v0, 0x0

    const/16 v1, 0x16

    aput-byte v1, p2, v0

    const/4 v0, 0x1

    const/16 v1, -0x7b

    aput-byte v1, p2, v0

    .line 137
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->getVideoSettingStatus(Landroid/content/Context;)B

    move-result v0

    const/4 v1, 0x2

    aput-byte v0, p2, v1

    invoke-direct {p0, p1}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->getExternalCam360SettingStatus(Landroid/content/Context;)B

    move-result p1

    const/4 v0, 0x3

    aput-byte p1, p2, v0

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    return-void
.end method

.method public cmdSrcMode(Landroid/content/Context;B)V
    .locals 2

    .line 155
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "QZ_ORIGINAL_SRC_MODE_STATUS"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 156
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->getSrcModeStatus(Landroid/content/Context;)B

    move-result p2

    iput-byte p2, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->srcStatus:B

    .line 157
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->getViewStatus(Landroid/content/Context;)B

    move-result p2

    iput-byte p2, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->viewStatus:B

    .line 158
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->getCamVisualStatus(Landroid/content/Context;)B

    move-result p1

    iput-byte p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->camVisualStatus:B

    const/4 p2, 0x5

    new-array p2, p2, [B

    const/4 v0, 0x0

    const/16 v1, 0x16

    aput-byte v1, p2, v0

    const/4 v0, 0x1

    const/16 v1, -0x7d

    aput-byte v1, p2, v0

    .line 159
    iget-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->viewStatus:B

    const/4 v1, 0x2

    aput-byte v0, p2, v1

    iget-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->srcStatus:B

    const/4 v1, 0x3

    aput-byte v0, p2, v1

    const/4 v0, 0x4

    aput-byte p1, p2, v0

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    return-void
.end method

.method public cmdViewStatus(Landroid/content/Context;B)V
    .locals 2

    .line 162
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "QZ_ORIGINAL_VIEW_STATUS"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 163
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->getSrcModeStatus(Landroid/content/Context;)B

    move-result v0

    iput-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->srcStatus:B

    .line 164
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->getViewStatus(Landroid/content/Context;)B

    move-result v0

    iput-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->viewStatus:B

    .line 165
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->getCamVisualStatus(Landroid/content/Context;)B

    move-result p1

    iput-byte p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->camVisualStatus:B

    const/4 p1, 0x5

    new-array p1, p1, [B

    const/4 v0, 0x0

    const/16 v1, 0x16

    aput-byte v1, p1, v0

    const/4 v0, 0x1

    const/16 v1, -0x7d

    aput-byte v1, p1, v0

    .line 166
    iget-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->viewStatus:B

    const/4 v1, 0x2

    aput-byte v0, p1, v1

    iget-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->srcStatus:B

    const/4 v1, 0x3

    aput-byte v0, p1, v1

    const/4 v0, 0x4

    aput-byte p2, p1, v0

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    return-void
.end method

.method public cmd_0x83(Landroid/content/Context;)V
    .locals 3

    .line 182
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->getSrcModeStatus(Landroid/content/Context;)B

    move-result v0

    iput-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->srcStatus:B

    .line 183
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->getViewStatus(Landroid/content/Context;)B

    move-result v0

    iput-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->viewStatus:B

    .line 184
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->getCamVisualStatus(Landroid/content/Context;)B

    move-result p1

    iput-byte p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->camVisualStatus:B

    const/4 v0, 0x5

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, -0x7d

    aput-byte v2, v0, v1

    .line 185
    iget-byte v1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->viewStatus:B

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    iget-byte v1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->srcStatus:B

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    const/4 v1, 0x4

    aput-byte p1, v0, v1

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    return-void
.end method

.method public getCamVisualStatus(Landroid/content/Context;)B
    .locals 2

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "QZ_ORIGINAL_CAM_VISUAL_STATUS"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    int-to-byte p1, p1

    return p1
.end method

.method public getNaviPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "QZ_ORIGINAL_NAVI_APP_NAME"

    invoke-static {p1, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPrevDeviceStatus()B
    .locals 1

    .line 25
    sget-byte v0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->prevDeviceStatus:B

    return v0
.end method

.method public getSrcModeStatus(Landroid/content/Context;)B
    .locals 2

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "QZ_ORIGINAL_SRC_MODE_STATUS"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    int-to-byte p1, p1

    return p1
.end method

.method public getVideoSettingStatus(Landroid/content/Context;)B
    .locals 2

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "QZ_ORIGINAL_CAM_STATUS"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    int-to-byte p1, p1

    return p1
.end method

.method public getViewStatus(Landroid/content/Context;)B
    .locals 2

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "QZ_ORIGINAL_VIEW_STATUS"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    int-to-byte p1, p1

    return p1
.end method

.method public initCmd_0x83(Landroid/content/Context;)V
    .locals 3

    .line 176
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "QZ_ORIGINAL_SRC_MODE_STATUS"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 177
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "QZ_ORIGINAL_VIEW_STATUS"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 178
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "QZ_ORIGINAL_CAM_VISUAL_STATUS"

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setCamVisualStatus(Landroid/content/Context;B)V
    .locals 1

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "QZ_ORIGINAL_CAM_VISUAL_STATUS"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setCurDeviceStatus(B)V
    .locals 0

    .line 22
    sput-byte p1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->prevDeviceStatus:B

    return-void
.end method

.method public setNaviPackageName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "QZ_ORIGINAL_NAVI_APP_NAME"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 54
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "name="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "setNaviPackageName"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setSrcModeStatus(Landroid/content/Context;B)V
    .locals 1

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "QZ_ORIGINAL_SRC_MODE_STATUS"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setViewStatus(Landroid/content/Context;B)V
    .locals 1

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "QZ_ORIGINAL_VIEW_STATUS"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
