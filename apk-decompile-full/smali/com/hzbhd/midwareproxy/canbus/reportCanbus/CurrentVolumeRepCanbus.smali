.class public Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CurrentVolumeRepCanbus;
.super Ljava/lang/Object;
.source "CurrentVolumeRepCanbus.java"


# static fields
.field static mCurrentVolumeRepCanbus:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CurrentVolumeRepCanbus;

.field private static mFormat:Ljava/text/DateFormat;


# instance fields
.field private currentValue:I

.field datas:[B

.field private mIsMute:Z

.field private mVolValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CurrentVolumeRepCanbus;

    invoke-direct {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CurrentVolumeRepCanbus;-><init>()V

    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CurrentVolumeRepCanbus;->mCurrentVolumeRepCanbus:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CurrentVolumeRepCanbus;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CurrentVolumeRepCanbus;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CurrentVolumeRepCanbus;->mVolValue:I

    return p0
.end method

.method static synthetic access$100(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CurrentVolumeRepCanbus;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CurrentVolumeRepCanbus;->mIsMute:Z

    return p0
.end method

.method public static declared-synchronized getInstance()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CurrentVolumeRepCanbus;
    .locals 2

    const-class v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CurrentVolumeRepCanbus;

    monitor-enter v0

    .line 35
    :try_start_0
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CurrentVolumeRepCanbus;->mCurrentVolumeRepCanbus:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CurrentVolumeRepCanbus;

    if-nez v1, :cond_0

    .line 36
    new-instance v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CurrentVolumeRepCanbus;

    invoke-direct {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CurrentVolumeRepCanbus;-><init>()V

    sput-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CurrentVolumeRepCanbus;->mCurrentVolumeRepCanbus:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CurrentVolumeRepCanbus;

    .line 38
    :cond_0
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CurrentVolumeRepCanbus;->mCurrentVolumeRepCanbus:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CurrentVolumeRepCanbus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private sndMazdaXinbasVol(B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v0, 0x28

    if-lt p1, v0, :cond_0

    move p1, v0

    :cond_0
    if-nez p1, :cond_1

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    :cond_1
    const/16 v0, 0x8

    new-array v0, v0, [B

    const/16 v1, 0x16

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/4 v1, 0x1

    const/16 v3, -0x7c

    aput-byte v3, v0, v1

    const/4 v1, 0x2

    const/16 v3, 0xd

    aput-byte v3, v0, v1

    const/4 v1, 0x3

    aput-byte p1, v0, v1

    const/4 p1, 0x4

    aput-byte v2, v0, p1

    const/4 p1, 0x5

    aput-byte v2, v0, p1

    const/4 p1, 0x6

    aput-byte v2, v0, p1

    const/4 p1, 0x7

    aput-byte v2, v0, p1

    .line 123
    iput-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CurrentVolumeRepCanbus;->datas:[B

    .line 124
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CurrentVolumeRepCanbus;->datas:[B

    invoke-virtual {p1, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    return-void
.end method

.method private sndSimpleNissanTeanaVol(BZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v0, 0x28

    if-lt p1, v0, :cond_0

    move p1, v0

    :cond_0
    if-eqz p2, :cond_1

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    :cond_1
    const/4 p2, 0x3

    new-array p2, p2, [B

    const/4 v0, 0x0

    const/16 v1, 0x16

    aput-byte v1, p2, v0

    const/4 v0, 0x1

    const/16 v1, 0xa

    aput-byte v1, p2, v0

    const/4 v0, 0x2

    aput-byte p1, p2, v0

    .line 111
    iput-object p2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CurrentVolumeRepCanbus;->datas:[B

    .line 112
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    iget-object p2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CurrentVolumeRepCanbus;->datas:[B

    invoke-virtual {p1, p2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    return-void
.end method

.method private sndSimpleVol(BBZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v0, 0x28

    if-lt p1, v0, :cond_0

    move p1, v0

    :cond_0
    if-lt p2, p1, :cond_1

    move p2, p1

    :cond_1
    shl-int/lit8 p1, p3, 0x7

    and-int/lit8 p2, p2, 0x7f

    or-int/2addr p1, p2

    int-to-byte p1, p1

    const/4 p2, 0x3

    new-array p2, p2, [B

    const/4 p3, 0x0

    const/16 v0, 0x16

    aput-byte v0, p2, p3

    const/4 p3, 0x1

    const/16 v0, -0x3c

    aput-byte v0, p2, p3

    const/4 p3, 0x2

    aput-byte p1, p2, p3

    .line 55
    iput-object p2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CurrentVolumeRepCanbus;->datas:[B

    .line 56
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    iget-object p2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CurrentVolumeRepCanbus;->datas:[B

    invoke-virtual {p1, p2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    return-void
.end method

.method private sndSimpleVolWithoutMute(BB)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v0, 0x28

    if-lt p1, v0, :cond_0

    move p1, v0

    :cond_0
    if-lt p2, p1, :cond_1

    move p2, p1

    :cond_1
    const/4 p1, 0x3

    new-array p1, p1, [B

    const/4 v0, 0x0

    const/16 v1, 0x16

    aput-byte v1, p1, v0

    const/4 v0, 0x1

    const/16 v1, -0x3c

    aput-byte v1, p1, v0

    const/4 v0, 0x2

    aput-byte p2, p1, v0

    .line 69
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CurrentVolumeRepCanbus;->datas:[B

    .line 70
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    iget-object p2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CurrentVolumeRepCanbus;->datas:[B

    invoke-virtual {p1, p2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    return-void
.end method

.method private sndXinbasHondaCivicVol(BZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v0, 0x28

    if-lt p1, v0, :cond_0

    move p1, v0

    :cond_0
    if-eqz p2, :cond_1

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    :cond_1
    const/4 p2, 0x3

    new-array p2, p2, [B

    const/4 v0, 0x0

    const/16 v1, 0x16

    aput-byte v1, p2, v0

    const/4 v0, 0x1

    const/16 v1, -0x7a

    aput-byte v1, p2, v0

    const/4 v0, 0x2

    aput-byte p1, p2, v0

    .line 99
    iput-object p2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CurrentVolumeRepCanbus;->datas:[B

    .line 100
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    iget-object p2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CurrentVolumeRepCanbus;->datas:[B

    invoke-virtual {p1, p2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    return-void
.end method

.method private sndXinbasVol(Landroid/content/Context;BBZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 p4, 0x28

    if-lt p2, p4, :cond_0

    move p2, p4

    :cond_0
    if-lt p3, p2, :cond_1

    move p3, p2

    .line 84
    :cond_1
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p2

    const/4 p4, 0x7

    new-array p4, p4, [B

    const/16 v0, 0x16

    const/4 v1, 0x0

    aput-byte v0, p4, v1

    const/4 v0, 0x1

    const/16 v2, -0x7c

    aput-byte v2, p4, v0

    const/4 v0, 0x2

    const/16 v2, 0xd

    aput-byte v2, p4, v0

    const/4 v0, 0x3

    aput-byte p3, p4, v0

    const/4 p3, 0x4

    aput-byte v1, p4, p3

    const/4 p3, 0x5

    aput-byte v1, p4, p3

    const/4 p3, 0x6

    aput-byte v1, p4, p3

    invoke-virtual {p2, p4}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "currentReport"

    invoke-static {p1, p2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 87
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 88
    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    :cond_2
    return-void
.end method


# virtual methods
.method public reportCanbusInfo(Landroid/content/Context;IZ)V
    .locals 8

    .line 176
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "curCanbusRepVol"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 177
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "REP_CAN_CUR_VOL"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Util.isCanbusCmdPorting(mContext)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isCanbusCmdPorting(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotyfyAudioVolume"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCantype="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "volVlue="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-static {p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isCanbusCmdPorting(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x28

    if-eqz v0, :cond_2

    .line 203
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CurrentVolumeRepCanbus$2;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v5

    aget v0, v0, v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "currentReport"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    int-to-byte v0, p2

    .line 282
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CurrentVolumeRepCanbus;->sndFordRaiseVol(B)V

    goto/16 :goto_2

    :pswitch_1
    int-to-byte v0, p2

    if-nez p2, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move v5, v3

    .line 279
    :goto_0
    invoke-direct {p0, v4, v0, v5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CurrentVolumeRepCanbus;->sndSimpleVol(BBZ)V

    goto/16 :goto_2

    :pswitch_2
    int-to-byte v0, p2

    .line 270
    invoke-direct {p0, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CurrentVolumeRepCanbus;->sndMazdaXinbasVol(B)V

    const-wide/16 v6, 0x32

    .line 271
    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    .line 272
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 273
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 274
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto :goto_2

    :pswitch_3
    int-to-byte v0, p2

    .line 259
    invoke-direct {p0, v4, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CurrentVolumeRepCanbus;->sndSimpleVolWithoutMute(BB)V

    goto :goto_2

    :pswitch_4
    int-to-byte v0, p2

    .line 253
    invoke-direct {p0, v4, v0, p3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CurrentVolumeRepCanbus;->sndSimpleVol(BBZ)V

    goto :goto_2

    :pswitch_5
    const/16 v0, 0x27

    int-to-byte v5, p2

    .line 250
    invoke-direct {p0, p1, v0, v5, p3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CurrentVolumeRepCanbus;->sndXinbasVol(Landroid/content/Context;BBZ)V

    goto :goto_2

    :pswitch_6
    const/16 v0, 0x23

    int-to-byte v5, p2

    .line 246
    invoke-direct {p0, v0, v5, p3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CurrentVolumeRepCanbus;->sndSimpleVol(BBZ)V

    goto :goto_2

    .line 218
    :pswitch_7
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "canbus_cur_vol"

    invoke-static {v0, v6, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 219
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 220
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    int-to-byte v5, p2

    .line 221
    aput-byte v5, v0, v1

    .line 222
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto :goto_2

    :pswitch_8
    const/16 v0, 0x3f

    int-to-byte v5, p2

    .line 215
    invoke-direct {p0, v0, v5, p3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CurrentVolumeRepCanbus;->sndSimpleVol(BBZ)V

    goto :goto_2

    :pswitch_9
    const/16 v0, 0x1e

    int-to-byte v5, p2

    if-nez p2, :cond_1

    move v6, v2

    goto :goto_1

    :cond_1
    move v6, v3

    .line 210
    :goto_1
    invoke-direct {p0, v0, v5, v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CurrentVolumeRepCanbus;->sndSimpleVol(BBZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 286
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 297
    :cond_2
    :goto_2
    iput p2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CurrentVolumeRepCanbus;->mVolValue:I

    .line 298
    iput-boolean p3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CurrentVolumeRepCanbus;->mIsMute:Z

    .line 300
    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CurrentVolumeRepCanbus$1;

    invoke-direct {v0, p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CurrentVolumeRepCanbus$1;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CurrentVolumeRepCanbus;)V

    invoke-static {p1, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface;->sendMsg(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface$CallBack;)V

    .line 308
    :try_start_2
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CurrentVolumeRepCanbus$2;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v0

    aget p1, p1, v0

    packed-switch p1, :pswitch_data_1

    goto :goto_4

    :pswitch_a
    if-eqz p3, :cond_3

    const/16 p1, 0x80

    goto :goto_3

    :cond_3
    move p1, v3

    .line 328
    :goto_3
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p2

    new-array p3, v1, [B

    const/16 v0, 0x16

    aput-byte v0, p3, v3

    const/16 v0, -0x3c

    aput-byte v0, p3, v2

    const/4 v0, 0x2

    int-to-byte p1, p1

    aput-byte p1, p3, v0

    invoke-virtual {p2, p3}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto :goto_4

    .line 323
    :pswitch_b
    invoke-virtual {p0, v4, p2, p3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CurrentVolumeRepCanbus;->sndXinbasHonda15CRVVol(IIZ)V

    goto :goto_4

    :pswitch_c
    int-to-byte p1, p2

    .line 316
    invoke-direct {p0, v4, p1, p3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CurrentVolumeRepCanbus;->sndSimpleVol(BBZ)V

    goto :goto_4

    :pswitch_d
    int-to-byte p1, p2

    .line 310
    invoke-direct {p0, v4, p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CurrentVolumeRepCanbus;->sndSimpleVolWithoutMute(BB)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception p1

    .line 333
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x21
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method

.method public sndFordRaiseVol(B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v0, 0x1e

    if-lt p1, v0, :cond_0

    move p1, v0

    .line 137
    :cond_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/16 v3, 0x16

    aput-byte v3, v1, v2

    const/4 v2, 0x1

    const/16 v3, -0x3e

    aput-byte v3, v1, v2

    const/4 v2, 0x2

    aput-byte p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    return-void
.end method

.method public sndHiworldVol(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 141
    iget v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CurrentVolumeRepCanbus;->currentValue:I

    if-ne v0, p1, :cond_0

    return-void

    .line 144
    :cond_0
    iput p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CurrentVolumeRepCanbus;->currentValue:I

    .line 145
    div-int/lit8 v0, p1, 0xa

    add-int/lit8 v0, v0, 0x30

    .line 146
    rem-int/lit8 p1, p1, 0xa

    add-int/lit8 p1, p1, 0x30

    const/4 v1, 0x5

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/16 v3, 0x16

    aput-byte v3, v1, v2

    const/4 v2, 0x1

    const/16 v3, -0x6f

    aput-byte v3, v1, v2

    const/4 v2, 0x2

    const/16 v3, 0x20

    aput-byte v3, v1, v2

    const/4 v2, 0x3

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    const/4 v0, 0x4

    int-to-byte p1, p1

    aput-byte p1, v1, v0

    const/16 p1, 0xf

    .line 148
    invoke-static {v1, p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->makeBytesFixedLength([BI)[B

    move-result-object p1

    .line 149
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    return-void
.end method

.method public sndHyundaiHiworldAmpVol(B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 129
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/16 v3, 0x16

    aput-byte v3, v1, v2

    const/16 v2, -0x53

    const/4 v3, 0x1

    aput-byte v2, v1, v3

    const/4 v2, 0x2

    aput-byte v3, v1, v2

    const/4 v2, 0x3

    aput-byte p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    return-void
.end method

.method public sndXinbasHonda15CRVVol(IIZ)V
    .locals 1

    const/16 v0, 0x28

    if-lt p1, v0, :cond_0

    move p1, v0

    :cond_0
    if-lt p2, p1, :cond_1

    move p2, p1

    :cond_1
    shl-int/lit8 p1, p3, 0x7

    and-int/lit8 p2, p2, 0x7f

    or-int/2addr p1, p2

    int-to-byte p1, p1

    const/4 p2, 0x3

    new-array p2, p2, [B

    const/4 p3, 0x0

    const/16 v0, 0x16

    aput-byte v0, p2, p3

    const/4 p3, 0x1

    const/16 v0, -0x77

    aput-byte v0, p2, p3

    const/4 p3, 0x2

    aput-byte p1, p2, p3

    .line 164
    iput-object p2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CurrentVolumeRepCanbus;->datas:[B

    .line 166
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    iget-object p2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CurrentVolumeRepCanbus;->datas:[B

    invoke-virtual {p1, p2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 168
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method
