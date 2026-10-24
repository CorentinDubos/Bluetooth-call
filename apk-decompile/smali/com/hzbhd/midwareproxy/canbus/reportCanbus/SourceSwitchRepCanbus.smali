.class public Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus;
.super Ljava/lang/Object;
.source "SourceSwitchRepCanbus.java"


# static fields
.field static mRadio:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus;


# instance fields
.field private cantype:I

.field private reportDedicatedPerSec:[B

.field private timerPerSec:Ljava/util/Timer;

.field private tsPerSec:Ljava/util/TimerTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus;

    invoke-direct {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus;-><init>()V

    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus;->mRadio:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus;)[B
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus;->reportDedicatedPerSec:[B

    return-object p0
.end method

.method private destroyTsPerSec()V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus;->tsPerSec:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus;->timerPerSec:Ljava/util/Timer;

    .line 89
    iput-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus;->tsPerSec:Ljava/util/TimerTask;

    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus;
    .locals 2

    const-class v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus;

    monitor-enter v0

    .line 46
    :try_start_0
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus;->mRadio:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus;

    if-nez v1, :cond_0

    .line 47
    new-instance v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus;

    invoke-direct {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus;-><init>()V

    sput-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus;->mRadio:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus;

    .line 49
    :cond_0
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus;->mRadio:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getJeepRaiseMediaInfo([BLjava/lang/String;I)[B
    .locals 4

    const/16 v0, 0x1e

    new-array v1, v0, [B

    .line 621
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->phoneNum2UnicodeBig([B)[B

    move-result-object p2

    .line 622
    array-length v2, p2

    rsub-int/lit8 v2, v2, 0x1e

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    .line 623
    array-length v3, p2

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    add-int/lit8 v2, v2, -0x2

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v2, -0x1

    :goto_0
    const/16 v0, 0xff

    if-eq p3, v0, :cond_1

    const/4 v2, 0x0

    :cond_1
    move p3, v2

    .line 631
    :goto_1
    array-length v0, p2

    add-int/2addr v0, v2

    if-ge p3, v0, :cond_2

    sub-int v0, p3, v2

    .line 632
    aget-byte v0, p2, v0

    aput-byte v0, v1, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 634
    :cond_2
    invoke-static {p1, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object p1

    return-object p1
.end method

.method private sndNoSrcMediaPerSec([B)V
    .locals 7

    .line 52
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus;->timerPerSec:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus;->timerPerSec:Ljava/util/Timer;

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus;->tsPerSec:Ljava/util/TimerTask;

    if-nez v0, :cond_1

    .line 56
    new-instance v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus$1;

    invoke-direct {v2, p0, p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus$1;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus;[B)V

    iput-object v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus;->tsPerSec:Ljava/util/TimerTask;

    .line 65
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus;->timerPerSec:Ljava/util/Timer;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_1
    return-void
.end method

.method private sndNoSrcMediaPerSecNew()V
    .locals 7

    .line 69
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus;->timerPerSec:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus;->timerPerSec:Ljava/util/Timer;

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus;->tsPerSec:Ljava/util/TimerTask;

    if-nez v0, :cond_1

    .line 73
    new-instance v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus$2;

    invoke-direct {v2, p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus$2;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus;)V

    iput-object v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus;->tsPerSec:Ljava/util/TimerTask;

    .line 82
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus;->timerPerSec:Ljava/util/Timer;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_1
    return-void
.end method


# virtual methods
.method public reportDestroyCanbusInfo(Landroid/content/Context;)V
    .locals 2

    .line 608
    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus;->destroyTsPerSec()V

    .line 609
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus$8;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x49

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 611
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "qz_midea_vol"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 613
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->getInstance()Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->cmdRepAudioStatus(BB)V

    :goto_0
    return-void
.end method

.method public reportExitSrcAuxIn2(Landroid/content/Context;)V
    .locals 8

    .line 129
    :try_start_0
    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus$4;

    invoke-direct {v0, p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus$4;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus;)V

    invoke-static {p1, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface;->sendMsg(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface$CallBack;)V

    .line 136
    invoke-static {p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isCanbusCmdPorting(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 137
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus$8;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x3

    const/16 v1, -0x5f

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/16 v4, 0x16

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/16 v7, -0x7e

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 153
    :pswitch_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    new-array v6, v6, [B

    aput-byte v4, v6, v5

    aput-byte v7, v6, v3

    aput-byte v1, v6, v2

    aput-byte v7, v6, v0

    invoke-virtual {p1, v6}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto :goto_0

    .line 145
    :pswitch_1
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    new-array v6, v6, [B

    aput-byte v4, v6, v5

    const/16 v4, -0x3a

    aput-byte v4, v6, v3

    aput-byte v1, v6, v2

    aput-byte v7, v6, v0

    invoke-virtual {p1, v6}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    .line 159
    :cond_0
    :goto_0
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus$8;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v0

    aget p1, p1, v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 165
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public reportIinitInforToCAN(Landroid/content/Context;I)[B
    .locals 8

    const-string v0, "kia_xinbus_power"

    const/4 v1, 0x0

    .line 533
    :try_start_0
    iput p2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus;->cantype:I

    .line 535
    new-instance v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus$6;

    invoke-direct {v2, p0, p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus$6;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus;I)V

    invoke-static {p1, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface;->sendMsg(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface$CallBack;)V

    .line 560
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->HONDA_ACCORD_LOW_HIWORLD:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-ne p2, v2, :cond_0

    new-array p2, v5, [B

    const/16 v0, 0x16

    aput-byte v0, p2, v7

    const/16 v0, -0xe

    aput-byte v0, p2, v4

    const/16 v0, 0x10

    aput-byte v0, p2, v6

    .line 561
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "accord_honda_right_enable"

    invoke-static {p1, v0, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    int-to-byte p1, p1

    aput-byte p1, p2, v3

    return-object p2

    .line 564
    :cond_0
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->HYUNDAI_KIA_SIMPLE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v2

    if-eq p2, v2, :cond_2

    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->KIA_K5_MIDDLE_SIMPLE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    .line 565
    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v2

    if-eq p2, v2, :cond_2

    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->KIA_K5_HIGH_SIMPLE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    .line 566
    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v2

    if-eq p2, v2, :cond_2

    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->KIA_K5_HIGH_RUSSIA_SIMPLE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    .line 567
    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v2

    if-eq p2, v2, :cond_2

    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->KIA_KX5_MIDDLE_SIMPLE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    .line 568
    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v2

    if-eq p2, v2, :cond_2

    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->KIA_KX5_HIGH_SIMPLE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    .line 569
    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v2

    if-eq p2, v2, :cond_2

    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->HYUNDAI_SONATA_MIDDLE_SIMPLE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    .line 570
    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v2

    if-eq p2, v2, :cond_2

    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->HYUNDAI_SONATA_HIGH_SIMPLE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    .line 571
    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v2

    if-eq p2, v2, :cond_2

    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->KIA_SORENTO_SIMPLE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    .line 572
    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v2

    if-eq p2, v2, :cond_2

    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->HYUNDAI_SONATA_9_2018_6_PANEL_SIMPLE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    .line 573
    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v2

    if-eq p2, v2, :cond_2

    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->HYUNDAI_SONATA_9_2018_8_PANEL_SIMPLE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    .line 574
    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v2

    if-eq p2, v2, :cond_2

    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->HYUNDAI_SONATA_9_2018_10_PANEL_SIMPLE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    .line 575
    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v2

    if-ne p2, v2, :cond_1

    goto :goto_0

    :cond_1
    return-object v1

    .line 577
    :cond_2
    :goto_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p2

    const-string v2, "factory_module_amplifier"

    invoke-virtual {p2, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getSharedBool(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 578
    invoke-static {p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isCanbusCmdPorting(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_3

    return-object v1

    .line 581
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_4

    const/4 p2, 0x7

    new-array p2, p2, [B

    aput-byte v6, p2, v7

    aput-byte v7, p2, v4

    const/16 v2, 0xa

    aput-byte v2, p2, v6

    aput-byte v2, p2, v3

    aput-byte v2, p2, v5

    const/4 v3, 0x5

    aput-byte v2, p2, v3

    const/4 v3, 0x6

    aput-byte v2, p2, v3

    .line 583
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p2, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-object v1, p2

    goto :goto_1

    .line 585
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 586
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 587
    invoke-static {p1, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    :goto_1
    return-object v1
.end method

.method public reportMpuMedia(Landroid/content/Context;BBLjava/lang/Byte;)V
    .locals 4

    .line 95
    :try_start_0
    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus$3;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus$3;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus;BBLjava/lang/Byte;)V

    invoke-static {p1, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface;->sendMsg(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface$CallBack;)V

    .line 102
    invoke-virtual {p4}, Ljava/lang/Byte;->byteValue()B

    move-result p3

    const/4 v0, 0x4

    invoke-static {p3, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntByteWithBit(BI)Z

    move-result p3

    const/4 v1, 0x0

    if-nez p3, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const-string v2, "PhoneState"

    invoke-static {p3, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    const-string p3, "LcdLog"

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SourceSwitchRepCanbus|reportMpuMedia|sourceType ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",TELConnect ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/Byte;->byteValue()B

    move-result p4

    invoke-static {p4, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntByteWithBit(BI)Z

    move-result p4

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p3, p4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->WLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p3, 0x1

    const-string p4, "SourceSwitchRepCanbus_device"

    if-eqz p2, :cond_3

    const/16 v0, 0x20

    if-eq p2, v0, :cond_1

    goto/16 :goto_0

    .line 113
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, p4, p3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string p4, "LCD_START_TIMER"

    invoke-static {p2, p4, p3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 115
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object p2

    sget-object p3, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {p2, p3}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    .line 116
    invoke-static {p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isYHT(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    move-result-object p2

    sget-object p3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->KT:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    if-ne p2, p3, :cond_2

    .line 117
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->getInstance()Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance p4, Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->getCurrentTimeString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p4, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p4, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "MODE"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    invoke-static {p1, p3}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_lcdPrintfString(Landroid/content/Context;[B)[B

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->reportTempLcdInfor([BLandroid/content/Context;)V

    goto :goto_0

    .line 118
    :cond_2
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->getInstance()Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;

    move-result-object p2

    const-string p3, "  MEDIA "

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    invoke-static {p1, p3}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_lcdPrintfString(Landroid/content/Context;[B)[B

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->reportTempLcdInfor([BLandroid/content/Context;)V

    goto :goto_0

    .line 106
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, p4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-ne p2, p3, :cond_4

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, p4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string p3, "hzbhd_LCD_isFloatView"

    invoke-static {p2, p3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 109
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->getInstance()Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;

    move-result-object p2

    const-wide/16 p3, 0x1f4

    invoke-virtual {p2, p1, p3, p4}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->reportLcdInforByeSource(Landroid/content/Context;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 122
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_0
    return-void
.end method

.method public reportNomediaCanbusInfo(Landroid/content/Context;Z)V
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string/jumbo v2, "reportNomediaCanbusInfo"

    const-string/jumbo v3, "reportNomediaCanbusInfo"

    .line 170
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isCanbusCmdPorting(Landroid/content/Context;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v3, "OFF"

    const/16 v6, 0xe

    const/16 v7, -0x7e

    const/16 v11, 0xa

    const/16 v12, 0xff

    const/4 v15, 0x7

    const/4 v4, 0x6

    const/4 v8, 0x5

    const/4 v13, 0x4

    const/16 v17, 0x16

    const/4 v5, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v14, 0x0

    if-eqz v2, :cond_4

    .line 174
    :try_start_1
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus$8;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v21

    aget v2, v2, v21

    if-eq v2, v8, :cond_3

    if-eq v2, v4, :cond_3

    if-eq v2, v15, :cond_2

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_1

    :pswitch_0
    new-array v2, v10, [B

    aput-byte v17, v2, v14

    const/16 v21, -0x7d

    aput-byte v21, v2, v9

    .line 295
    invoke-static {v2, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->mergeByteArrayAndAscii([BLjava/lang/String;)[B

    move-result-object v2

    .line 296
    invoke-static {v2, v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->makeBytesFixedLength([BI)[B

    move-result-object v2

    .line 297
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_1

    .line 288
    :pswitch_1
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v2

    new-array v6, v15, [B

    aput-byte v17, v6, v14

    const/16 v22, -0x7c

    aput-byte v22, v6, v9

    aput-byte v14, v6, v10

    aput-byte v14, v6, v5

    aput-byte v14, v6, v13

    aput-byte v14, v6, v8

    aput-byte v14, v6, v4

    invoke-virtual {v2, v6}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_1

    .line 285
    :pswitch_2
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->OFF:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;

    invoke-static {v0, v2, v12, v14, v9}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportSimpleMediaInfo(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;IZZ)V

    goto/16 :goto_1

    .line 281
    :pswitch_3
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE;->OFF:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE;

    const-string v6, "            "

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v0, v2, v14, v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportHiworldMideaInfo(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE;Z[B)V

    goto/16 :goto_1

    .line 273
    :pswitch_4
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v2

    new-array v6, v5, [B

    aput-byte v17, v6, v14

    const/16 v22, -0x70

    aput-byte v22, v6, v9

    aput-byte v14, v6, v10

    invoke-direct {v1, v6, v3, v12}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus;->getJeepRaiseMediaInfo([BLjava/lang/String;I)[B

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_1

    .line 268
    :pswitch_5
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v2

    new-array v6, v15, [B

    aput-byte v17, v6, v14

    const/16 v22, -0x7c

    aput-byte v22, v6, v9

    aput-byte v15, v6, v10

    aput-byte v14, v6, v5

    aput-byte v14, v6, v13

    aput-byte v14, v6, v8

    aput-byte v14, v6, v4

    invoke-virtual {v2, v6}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_1

    .line 250
    :pswitch_6
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v2

    new-array v6, v5, [B

    aput-byte v17, v6, v14

    const/16 v22, -0x79

    aput-byte v22, v6, v9

    aput-byte v14, v6, v10

    invoke-virtual {v2, v6}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_1

    .line 247
    :pswitch_7
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v2

    new-array v6, v11, [B

    aput-byte v17, v6, v14

    aput-byte v7, v6, v9

    aput-byte v14, v6, v10

    aput-byte v14, v6, v5

    aput-byte v14, v6, v13

    aput-byte v14, v6, v8

    aput-byte v14, v6, v4

    aput-byte v14, v6, v15

    const/16 v20, 0x8

    aput-byte v14, v6, v20

    const/16 v19, 0x9

    aput-byte v14, v6, v19

    invoke-virtual {v2, v6}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_1

    .line 244
    :pswitch_8
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v2

    new-array v6, v13, [B

    aput-byte v17, v6, v14

    const/16 v18, -0x40

    aput-byte v18, v6, v9

    aput-byte v14, v6, v10

    aput-byte v14, v6, v5

    invoke-virtual {v2, v6}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_1

    :pswitch_9
    new-array v2, v5, [B

    aput-byte v17, v2, v14

    aput-byte v7, v2, v9

    aput-byte v14, v2, v10

    .line 241
    invoke-direct {v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus;->sndNoSrcMediaPerSec([B)V

    goto/16 :goto_1

    :pswitch_a
    new-array v2, v5, [B

    aput-byte v17, v2, v14

    const/16 v6, -0x7a

    aput-byte v6, v2, v9

    aput-byte v14, v2, v10

    .line 236
    invoke-direct {v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus;->sndNoSrcMediaPerSec([B)V

    goto/16 :goto_1

    .line 233
    :pswitch_b
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_XINBAS_MEDIA_TYPE;->MID_OFF:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_XINBAS_MEDIA_TYPE;

    invoke-static {v0, v2, v14}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportXinbasMediaInfo(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_XINBAS_MEDIA_TYPE;Z)V

    goto/16 :goto_1

    .line 220
    :pswitch_c
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "canbus_cur_vol"

    invoke-static {v2, v6, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    if-lez v2, :cond_0

    move v2, v13

    goto :goto_0

    :cond_0
    const/16 v2, 0xc

    :goto_0
    int-to-byte v2, v2

    .line 222
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v6

    sget-object v12, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->BENZ_B200_LUZHENG:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    if-ne v6, v12, :cond_1

    xor-int/lit8 v2, v2, 0x4

    int-to-byte v2, v2

    :cond_1
    const/16 v6, 0xb

    new-array v12, v6, [B

    aput-byte v17, v12, v14

    aput-byte v7, v12, v9

    aput-byte v14, v12, v10

    const/4 v6, -0x1

    aput-byte v6, v12, v5

    aput-byte v6, v12, v13

    aput-byte v6, v12, v8

    aput-byte v6, v12, v4

    aput-byte v6, v12, v15

    const/16 v16, 0x8

    aput-byte v2, v12, v16

    const/16 v2, 0x9

    aput-byte v6, v12, v2

    aput-byte v6, v12, v11

    .line 227
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "currentReport"

    invoke-static {v12, v14}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 228
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_1

    .line 212
    :pswitch_d
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "canbus_cur_vol"

    invoke-static {v2, v6, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    .line 213
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v6

    const/16 v7, 0xe

    new-array v12, v7, [B

    aput-byte v17, v12, v14

    const/16 v7, 0xc

    aput-byte v7, v12, v9

    aput-byte v14, v12, v10

    aput-byte v2, v12, v5

    const/16 v2, 0x8

    aput-byte v2, v12, v13

    aput-byte v14, v12, v8

    aput-byte v14, v12, v4

    aput-byte v14, v12, v15

    aput-byte v14, v12, v2

    const/16 v2, 0x9

    aput-byte v14, v12, v2

    aput-byte v14, v12, v11

    const/16 v2, 0xb

    aput-byte v14, v12, v2

    const/16 v2, 0xc

    aput-byte v14, v12, v2

    const/16 v2, 0xd

    aput-byte v14, v12, v2

    invoke-virtual {v6, v12}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto :goto_1

    .line 209
    :pswitch_e
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->OFF:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;

    const/16 v6, 0xff

    invoke-static {v0, v2, v6, v14, v9}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportSimpleMediaInfo(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;IZZ)V

    goto :goto_1

    :pswitch_f
    new-array v2, v13, [B

    aput-byte v17, v2, v14

    const/16 v6, -0x40

    aput-byte v6, v2, v9

    aput-byte v14, v2, v10

    const/16 v6, 0x22

    aput-byte v6, v2, v5

    .line 181
    invoke-static {v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    const/16 v2, 0x8

    new-array v6, v2, [B

    aput-byte v17, v6, v14

    const/16 v2, -0x3d

    aput-byte v2, v6, v9

    aput-byte v14, v6, v10

    aput-byte v14, v6, v5

    aput-byte v14, v6, v13

    aput-byte v14, v6, v8

    aput-byte v14, v6, v4

    aput-byte v14, v6, v15

    .line 182
    invoke-static {v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    goto :goto_1

    .line 178
    :pswitch_10
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->OFF:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;

    const/16 v6, 0xff

    invoke-static {v0, v2, v6, v14, v14}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportSimpleMediaInfo(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;IZZ)V

    goto :goto_1

    :cond_2
    move v6, v12

    .line 259
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->OFF:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;

    invoke-static {v0, v2, v6, v14, v14}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportSimpleMediaInfo(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;IZZ)V

    goto :goto_1

    :cond_3
    move v6, v12

    .line 263
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->OFF:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;

    invoke-static {v0, v2, v6, v14, v14}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportSimpleMediaInfo(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;IZZ)V

    .line 310
    :cond_4
    :goto_1
    new-instance v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus$5;

    move/from16 v6, p2

    invoke-direct {v2, v1, v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus$5;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus;Z)V

    invoke-static {v0, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface;->sendMsg(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface$CallBack;)V

    .line 318
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus$8;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v6

    invoke-virtual {v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v6

    aget v2, v2, v6

    const/16 v6, 0x28

    if-eq v2, v6, :cond_6

    const/16 v6, 0x29

    if-eq v2, v6, :cond_5

    const/16 v6, 0x3b

    if-eq v2, v6, :cond_7

    const/16 v6, -0x6f

    packed-switch v2, :pswitch_data_2

    .line 523
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    new-array v2, v10, [B

    aput-byte v9, v2, v14

    const/16 v3, -0x10

    aput-byte v3, v2, v9

    invoke-virtual {v0, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_3

    :pswitch_11
    new-array v0, v13, [B

    aput-byte v17, v0, v14

    const/16 v2, -0x40

    aput-byte v2, v0, v9

    aput-byte v14, v0, v10

    aput-byte v14, v0, v5

    .line 500
    invoke-static {v0, v11}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->makeBytesFixedLength([BI)[B

    move-result-object v0

    .line 501
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_3

    :pswitch_12
    new-array v0, v13, [B

    aput-byte v17, v0, v14

    const/16 v2, -0x40

    aput-byte v2, v0, v9

    aput-byte v14, v0, v10

    aput-byte v14, v0, v5

    .line 470
    invoke-static {v0, v11}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->CompensateZero([BI)[B

    move-result-object v0

    .line 471
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_3

    :pswitch_13
    new-array v2, v13, [B

    aput-byte v17, v2, v14

    aput-byte v6, v2, v9

    aput-byte v14, v2, v10

    .line 459
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->getInstance()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->isMpegDiscExist(Landroid/content/Context;)I

    move-result v0

    int-to-byte v0, v0

    aput-byte v0, v2, v5

    const/16 v0, 0x10

    .line 460
    invoke-static {v2, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->CompensateZero([BI)[B

    move-result-object v0

    .line 461
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_3

    :pswitch_14
    new-array v2, v5, [B

    aput-byte v17, v2, v14

    const/16 v0, -0x6b

    aput-byte v0, v2, v9

    aput-byte v14, v2, v10

    const-string v0, "NO SOURCE"
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string v3, "Unicode"

    .line 450
    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v2, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v2
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_0
    move-exception v0

    .line 452
    :try_start_3
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_2
    const/16 v0, 0x27

    .line 454
    invoke-static {v2, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->CompensateZero([BI)[B

    move-result-object v0

    .line 455
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_3

    .line 443
    :pswitch_15
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->OFF:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;

    const/16 v3, 0xff

    invoke-static {v0, v2, v3, v14, v14}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportSimpleMediaInfo(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;IZZ)V

    goto/16 :goto_3

    .line 440
    :pswitch_16
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    new-array v2, v4, [B

    aput-byte v17, v2, v14

    const/16 v3, 0x9

    aput-byte v3, v2, v9

    const/16 v3, -0x80

    aput-byte v3, v2, v10

    aput-byte v14, v2, v5

    aput-byte v14, v2, v13

    aput-byte v14, v2, v8

    invoke-virtual {v0, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_3

    .line 432
    :pswitch_17
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    new-array v2, v13, [B

    aput-byte v17, v2, v14

    const/16 v3, -0x3c

    aput-byte v3, v2, v9

    aput-byte v14, v2, v10

    aput-byte v14, v2, v5

    invoke-virtual {v0, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_3

    .line 429
    :pswitch_18
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    new-array v2, v13, [B

    aput-byte v17, v2, v14

    const/16 v3, -0x40

    aput-byte v3, v2, v9

    aput-byte v14, v2, v10

    aput-byte v14, v2, v5

    invoke-virtual {v0, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_3

    .line 425
    :pswitch_19
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    new-array v2, v5, [B

    aput-byte v17, v2, v14

    const/16 v4, -0x70

    aput-byte v4, v2, v9

    aput-byte v14, v2, v10

    const/16 v4, 0xff

    .line 426
    invoke-direct {v1, v2, v3, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus;->getJeepRaiseMediaInfo([BLjava/lang/String;I)[B

    move-result-object v2

    .line 425
    invoke-virtual {v0, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_3

    .line 417
    :pswitch_1a
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    const/16 v2, 0xe

    new-array v2, v2, [B

    aput-byte v17, v2, v14

    const/16 v3, -0x40

    aput-byte v3, v2, v9

    aput-byte v14, v2, v10

    aput-byte v14, v2, v5

    aput-byte v14, v2, v13

    aput-byte v14, v2, v8

    aput-byte v14, v2, v4

    aput-byte v14, v2, v15

    const/16 v3, 0x8

    aput-byte v14, v2, v3

    const/16 v3, 0x9

    aput-byte v14, v2, v3

    aput-byte v14, v2, v11

    const/16 v3, 0xb

    aput-byte v14, v2, v3

    const/16 v3, 0xc

    aput-byte v14, v2, v3

    const/16 v3, 0xd

    aput-byte v14, v2, v3

    invoke-virtual {v0, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    .line 419
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    new-array v2, v5, [B

    aput-byte v17, v2, v14

    const/16 v3, -0x3d

    aput-byte v3, v2, v9

    aput-byte v5, v2, v10

    const-string v3, " "

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_3

    .line 412
    :pswitch_1b
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    new-array v2, v11, [B

    aput-byte v17, v2, v14

    const/16 v3, -0x40

    aput-byte v3, v2, v9

    aput-byte v14, v2, v10

    aput-byte v14, v2, v5

    aput-byte v14, v2, v13

    aput-byte v14, v2, v8

    aput-byte v14, v2, v4

    aput-byte v14, v2, v15

    const/16 v3, 0x8

    aput-byte v14, v2, v3

    const/16 v3, 0x9

    aput-byte v14, v2, v3

    invoke-virtual {v0, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_3

    .line 409
    :pswitch_1c
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    const/16 v2, 0xe

    new-array v2, v2, [B

    aput-byte v17, v2, v14

    aput-byte v6, v2, v9

    aput-byte v14, v2, v10

    aput-byte v14, v2, v5

    aput-byte v14, v2, v13

    aput-byte v14, v2, v8

    aput-byte v14, v2, v4

    aput-byte v14, v2, v15

    const/16 v3, 0x8

    aput-byte v14, v2, v3

    const/16 v3, 0x9

    aput-byte v14, v2, v3

    aput-byte v14, v2, v11

    const/16 v3, 0xb

    aput-byte v14, v2, v3

    const/16 v3, 0xc

    aput-byte v14, v2, v3

    const/16 v3, 0xd

    aput-byte v14, v2, v3

    invoke-virtual {v0, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_3

    .line 406
    :pswitch_1d
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    new-array v2, v5, [B

    aput-byte v17, v2, v14

    const/16 v3, -0x40

    aput-byte v3, v2, v9

    aput-byte v14, v2, v10

    invoke-virtual {v0, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_3

    .line 401
    :pswitch_1e
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    new-array v2, v5, [B

    aput-byte v17, v2, v14

    const/16 v3, -0x7e

    aput-byte v3, v2, v9

    aput-byte v14, v2, v10

    invoke-virtual {v0, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_3

    .line 396
    :pswitch_1f
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->OFF:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;

    const/16 v3, 0xff

    invoke-static {v0, v2, v3, v14, v14}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportSimpleMediaInfo(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;IZZ)V

    goto/16 :goto_3

    .line 383
    :pswitch_20
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "action_qz_oringinal_screen_rep_0x83_status"

    .line 384
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "qz_src_mode_status"

    .line 385
    invoke-virtual {v2, v3, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 386
    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v2, "QZ"

    const-string v3, "qz_src_mode_status snd no midea"

    .line 387
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "qz_midea_vol"

    invoke-static {v0, v2, v14}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 390
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->getInstance()Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;

    move-result-object v0

    invoke-virtual {v0, v14, v14}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->cmdRepAudioStatus(BB)V

    goto/16 :goto_3

    :pswitch_21
    new-array v0, v4, [B

    aput-byte v17, v0, v14

    const/16 v2, -0x7e

    aput-byte v2, v0, v9

    aput-byte v14, v0, v10

    const/4 v2, -0x1

    aput-byte v2, v0, v5

    aput-byte v2, v0, v13

    aput-byte v2, v0, v8

    .line 379
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_3

    .line 364
    :pswitch_22
    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->getMpegplayerManager(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->isDiscExist()Z

    move-result v0

    invoke-static {v14, v14, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->setIntByteWithBit(IIZ)I

    move-result v0

    .line 365
    invoke-static {v0, v9, v9}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->setIntByteWithBit(IIZ)I

    move-result v0

    const/16 v2, 0x10

    new-array v2, v2, [B

    aput-byte v17, v2, v14

    aput-byte v6, v2, v9

    aput-byte v14, v2, v10

    int-to-byte v0, v0

    aput-byte v0, v2, v5

    aput-byte v14, v2, v13

    aput-byte v14, v2, v8

    aput-byte v14, v2, v4

    aput-byte v14, v2, v15

    const/16 v0, 0x8

    aput-byte v14, v2, v0

    const/16 v0, 0x9

    aput-byte v14, v2, v0

    aput-byte v14, v2, v11

    const/16 v0, 0xb

    aput-byte v14, v2, v0

    const/16 v0, 0xc

    aput-byte v14, v2, v0

    const/16 v0, 0xd

    aput-byte v14, v2, v0

    const/16 v0, 0xe

    aput-byte v14, v2, v0

    const/16 v0, 0xf

    aput-byte v14, v2, v0

    .line 367
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto :goto_3

    .line 344
    :pswitch_23
    invoke-static {v6, v14}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportHiworldSrcInfo(BB)V

    goto :goto_3

    :pswitch_24
    const/16 v0, -0x2e

    .line 340
    invoke-static {v0, v14}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportHiworldSrcInfo(BB)V

    goto :goto_3

    .line 336
    :pswitch_25
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    const/16 v2, 0x8

    new-array v2, v2, [B

    aput-byte v17, v2, v14

    const/16 v3, -0x6d

    aput-byte v3, v2, v9

    aput-byte v14, v2, v10

    aput-byte v14, v2, v5

    aput-byte v14, v2, v13

    aput-byte v14, v2, v8

    aput-byte v14, v2, v4

    aput-byte v14, v2, v15

    invoke-virtual {v0, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto :goto_3

    .line 326
    :cond_5
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    new-array v2, v10, [B

    const/16 v3, 0x13

    aput-byte v3, v2, v14

    const/16 v3, -0x10

    aput-byte v3, v2, v9

    invoke-virtual {v0, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto :goto_3

    .line 322
    :cond_6
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    new-array v2, v13, [B

    aput-byte v17, v2, v14

    const/16 v3, -0x40

    aput-byte v3, v2, v9

    aput-byte v14, v2, v10

    aput-byte v14, v2, v5

    invoke-virtual {v0, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 527
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_7
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x35
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x40
        :pswitch_25
        :pswitch_24
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_1a
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
    .end packed-switch
.end method

.method public reportSourceSwitchChange(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 652
    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus$7;

    invoke-direct {v0, p0, p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus$7;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface;->sendMsg(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface$CallBack;)V

    return-void
.end method

.method public reportWhenDeviceOn(Ljava/lang/String;)V
    .locals 3

    .line 639
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus$8;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x40

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "AUX2"

    .line 641
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 642
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    const/4 v0, 0x3

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, -0x6e

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, -0x7f

    aput-byte v2, v0, v1

    invoke-virtual {p1, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 647
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
