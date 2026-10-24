.class public Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;
.super Ljava/lang/Object;
.source "BTPhoneRepCanbus.java"


# static fields
.field static PhoneState:I

.field static isIncoming:Z

.field static mRadio:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;

.field private static prevCallingSt:B

.field private static timerBtInfo:Ljava/util/Timer;

.field private static timerBtStatus:Ljava/util/Timer;

.field private static timerPerSec:Ljava/util/Timer;

.field private static tsBtInfo:Ljava/util/TimerTask;

.field private static tsBtStatus:Ljava/util/TimerTask;

.field private static tsPerSec:Ljava/util/TimerTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;

    invoke-direct {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;-><init>()V

    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->mRadio:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;

    const/4 v0, 0x0

    .line 346
    sput v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->PhoneState:I

    .line 347
    sput-boolean v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->isIncoming:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Ljava/util/TimerTask;)Ljava/util/TimerTask;
    .locals 0

    .line 36
    sput-object p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->tsBtStatus:Ljava/util/TimerTask;

    return-object p0
.end method

.method static synthetic access$102(Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 36
    sput-object p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->timerBtStatus:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$202(Ljava/util/TimerTask;)Ljava/util/TimerTask;
    .locals 0

    .line 36
    sput-object p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->tsBtInfo:Ljava/util/TimerTask;

    return-object p0
.end method

.method static synthetic access$302(Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 36
    sput-object p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->timerBtInfo:Ljava/util/Timer;

    return-object p0
.end method

.method public static destroyTsPerSec()V
    .locals 1

    .line 70
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->tsPerSec:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    const/4 v0, 0x0

    .line 72
    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->timerPerSec:Ljava/util/Timer;

    .line 73
    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->tsPerSec:Ljava/util/TimerTask;

    :cond_0
    return-void
.end method

.method public static getCurrentPhoneState()I
    .locals 1

    .line 350
    sget v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->PhoneState:I

    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;
    .locals 2

    const-class v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;

    monitor-enter v0

    .line 45
    :try_start_0
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->mRadio:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;

    if-nez v1, :cond_0

    .line 46
    new-instance v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;

    invoke-direct {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;-><init>()V

    sput-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->mRadio:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;

    .line 48
    :cond_0
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->mRadio:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static noNeedRepBtStatus(ZI)Z
    .locals 0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static sndBuickEnvlavePhone([BB)V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, -0x6f

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    aput-byte p1, v0, v1

    .line 338
    invoke-static {v0, p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object p0

    const/16 p1, 0x10

    invoke-static {p0, p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->CompensateZero([BI)[B

    move-result-object p0

    .line 340
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 342
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static sndGeneralPhone([B[B)V
    .locals 0

    .line 275
    invoke-static {p0, p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object p0

    .line 277
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 279
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static sndGeneralPhoneWithFixedLen([B[BI)V
    .locals 3

    .line 286
    array-length v0, p1

    const/4 v1, 0x0

    if-lt v0, p2, :cond_0

    move v0, v1

    goto :goto_0

    .line 290
    :cond_0
    array-length v0, p1

    sub-int/2addr p2, v0

    .line 291
    array-length v0, p1

    move v2, v0

    move v0, p2

    move p2, v2

    .line 293
    :goto_0
    invoke-static {p1, v1, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    if-nez v0, :cond_1

    .line 295
    invoke-static {p0, p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object p0

    goto :goto_1

    .line 297
    :cond_1
    invoke-static {p0, p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object p0

    new-array p1, v0, [B

    invoke-static {p0, p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object p0

    .line 300
    :goto_1
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 302
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private static sndHiworldPhonenumber(BB[B)V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [B

    const/16 v1, 0x16

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/4 v1, 0x1

    aput-byte p0, v0, v1

    const/4 p0, 0x2

    aput-byte p1, v0, p0

    const/16 p1, 0x1a

    new-array v3, p1, [B

    aput-byte v2, v3, v2

    aput-byte v2, v3, v1

    .line 119
    invoke-static {p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->phoneNum2UnicodeLittleExtra([B)[B

    move-result-object p2

    :goto_0
    if-ge p0, p1, :cond_1

    add-int/lit8 v1, p0, -0x2

    .line 121
    array-length v4, p2

    if-ge v1, v4, :cond_0

    .line 122
    aget-byte v1, p2, v1

    aput-byte v1, v3, p0

    goto :goto_1

    .line 124
    :cond_0
    aput-byte v2, v3, p0

    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 127
    :cond_1
    invoke-static {v0, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object p0

    .line 129
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 132
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private static sndHondaXinbasPhone(ZBBBB)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/16 p0, 0x80

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    int-to-byte p0, p0

    or-int/2addr p0, p1

    int-to-byte p0, p0

    .line 312
    div-int/lit8 p1, p2, 0xa

    shl-int/lit8 p1, p1, 0x4

    int-to-byte p1, p1

    .line 313
    rem-int/lit8 p2, p2, 0xa

    and-int/lit8 p2, p2, 0xf

    int-to-byte p2, p2

    .line 314
    div-int/lit8 v1, p3, 0xa

    shl-int/lit8 v1, v1, 0x4

    int-to-byte v1, v1

    .line 315
    rem-int/lit8 p3, p3, 0xa

    and-int/lit8 p3, p3, 0xf

    int-to-byte p3, p3

    .line 316
    div-int/lit8 v2, p4, 0xa

    shl-int/lit8 v2, v2, 0x4

    int-to-byte v2, v2

    .line 317
    rem-int/lit8 p4, p4, 0xa

    and-int/lit8 p4, p4, 0xf

    int-to-byte p4, p4

    const/4 v3, 0x3

    new-array v4, v3, [B

    or-int/2addr p1, p2

    int-to-byte p1, p1

    aput-byte p1, v4, v0

    or-int p1, v1, p3

    int-to-byte p1, p1

    const/4 p2, 0x1

    aput-byte p1, v4, p2

    or-int p1, v2, p4

    int-to-byte p1, p1

    const/4 p3, 0x2

    aput-byte p1, v4, p3

    .line 320
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    new-array p4, v3, [B

    const/16 v1, 0x16

    aput-byte v1, p4, v0

    const/16 v0, -0x7a

    aput-byte v0, p4, p2

    aput-byte p0, p4, p3

    invoke-static {p4, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 322
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private static sndNissanPhone(B[B)V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, -0x3b

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    const/4 v1, 0x2

    aput-byte p0, v0, v1

    const/4 p0, 0x3

    aput-byte v2, v0, p0

    .line 266
    invoke-static {v0, p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object p0

    .line 268
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 270
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static sndPhoneMediaPerSec([B)V
    .locals 7

    .line 52
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->timerPerSec:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->timerPerSec:Ljava/util/Timer;

    .line 55
    :cond_0
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->tsPerSec:Ljava/util/TimerTask;

    if-nez v0, :cond_1

    .line 56
    new-instance v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$1;

    invoke-direct {v2, p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$1;-><init>([B)V

    sput-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->tsPerSec:Ljava/util/TimerTask;

    .line 65
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->timerPerSec:Ljava/util/Timer;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_1
    return-void
.end method

.method private static sndPhoneNumberByUnicode(B[B)V
    .locals 3

    .line 78
    invoke-static {p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->phoneNum2UnicodeLittleExtra([B)[B

    move-result-object p1

    .line 80
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte p0, v1, v2

    invoke-static {v1, p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 83
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static sndSimpleHondaPhone([B[BI)V
    .locals 3

    .line 173
    new-array v0, p2, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    .line 175
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 176
    aget-byte v2, p1, v1

    aput-byte v2, v0, v1

    goto :goto_1

    :cond_0
    const/4 v2, -0x1

    .line 178
    aput-byte v2, v0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 181
    :cond_1
    invoke-static {p0, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object p0

    .line 183
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 185
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private static sndSimplePsaPhoneNum(BZZ[BBBB)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    const/4 v1, 0x5

    .line 192
    invoke-static {p0, v1, p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->setIntByteWithBit(IIZ)I

    move-result p0

    int-to-byte p0, p0

    const/4 p1, 0x6

    xor-int/2addr p2, v0

    .line 193
    invoke-static {p0, p1, p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->setIntByteWithBit(IIZ)I

    move-result p0

    int-to-byte p0, p0

    const/4 p1, 0x3

    new-array p2, p1, [B

    .line 194
    fill-array-data p2, :array_0

    const/4 v1, -0x1

    .line 195
    invoke-static {p2, p3, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[BB)[B

    move-result-object p2

    .line 196
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    const-wide/16 p2, 0x64

    .line 198
    :try_start_0
    invoke-static {p2, p3}, Lcom/hzbhd/midwareproxy/utils/ThreadUtils;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 200
    invoke-virtual {p2}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    const/4 p2, 0x4

    new-array p2, p2, [B

    const/16 p3, 0x16

    const/4 v1, 0x0

    aput-byte p3, p2, v1

    const/16 p3, -0x3b

    aput-byte p3, p2, v0

    const/16 p3, 0x33

    const/4 v2, 0x2

    aput-byte p3, p2, v2

    aput-byte p0, p2, p1

    new-array p0, p1, [B

    aput-byte p4, p0, v1

    aput-byte p5, p0, v0

    aput-byte p6, p0, v2

    .line 204
    invoke-static {p2, p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object p0

    .line 205
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    return-void

    :array_0
    .array-data 1
        0x16t
        -0x35t
        0x1t
    .end array-data
.end method

.method private static sndThrumpchiRaisePhone(BBIII[B)V
    .locals 4

    .line 95
    array-length v0, p5

    int-to-byte v0, v0

    const/16 v1, 0x8

    new-array v1, v1, [B

    const/16 v2, 0x16

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    const/4 v2, 0x1

    aput-byte p0, v1, v2

    const/4 p0, 0x2

    aput-byte p1, v1, p0

    int-to-byte p0, p2

    const/4 p1, 0x3

    aput-byte p0, v1, p1

    int-to-byte p0, p3

    const/4 p1, 0x4

    aput-byte p0, v1, p1

    int-to-byte p0, p4

    const/4 p1, 0x5

    aput-byte p0, v1, p1

    const/4 p0, 0x6

    aput-byte v3, v1, p0

    const/4 p0, 0x7

    aput-byte v0, v1, p0

    .line 97
    invoke-static {v1, p5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object p0

    .line 99
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 102
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static sndToyotaSimplePhone([B)V
    .locals 5

    .line 328
    invoke-static {p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->phoneNum2UnicodeLittleExtra([B)[B

    move-result-object p0

    .line 330
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/16 v3, 0x16

    aput-byte v3, v1, v2

    const/16 v2, -0x38

    const/4 v3, 0x1

    aput-byte v2, v1, v3

    const/4 v2, 0x2

    const/16 v4, 0x10

    aput-byte v4, v1, v2

    const/4 v2, 0x3

    aput-byte v3, v1, v2

    invoke-static {v1, p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 332
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static sndVwMqbPhoneInfo([B)V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 242
    fill-array-data v0, :array_0

    .line 243
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->timerBtInfo:Ljava/util/Timer;

    if-nez v1, :cond_0

    .line 244
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    sput-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->timerBtInfo:Ljava/util/Timer;

    .line 246
    :cond_0
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->tsBtInfo:Ljava/util/TimerTask;

    if-nez v1, :cond_1

    .line 247
    new-instance v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$3;

    invoke-direct {v1, v0, p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$3;-><init>([B[B)V

    sput-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->tsBtInfo:Ljava/util/TimerTask;

    .line 259
    sget-object p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->timerBtInfo:Ljava/util/Timer;

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_1
    return-void

    :array_0
    .array-data 1
        0x16t
        -0x36t
        0x3t
        0x1t
    .end array-data
.end method

.method private static sndVwMqbPhoneStatus(ZZZB)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/16 p1, 0x20

    :goto_0
    int-to-byte p1, p1

    if-eqz p0, :cond_1

    move p0, v0

    goto :goto_1

    :cond_1
    const/16 p0, 0x40

    :goto_1
    int-to-byte p0, p0

    if-eqz p2, :cond_2

    const/16 v0, 0x10

    :cond_2
    int-to-byte p2, v0

    or-int/2addr p0, p1

    or-int/2addr p0, p2

    or-int/2addr p0, p3

    int-to-byte p0, p0

    .line 220
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->timerBtStatus:Ljava/util/Timer;

    if-nez p1, :cond_3

    .line 221
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    sput-object p1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->timerBtStatus:Ljava/util/Timer;

    .line 223
    :cond_3
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->tsBtStatus:Ljava/util/TimerTask;

    if-nez p1, :cond_4

    .line 224
    new-instance p1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$2;

    invoke-direct {p1, p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$2;-><init>(B)V

    sput-object p1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->tsBtStatus:Ljava/util/TimerTask;

    .line 236
    sget-object p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->timerBtStatus:Ljava/util/Timer;

    const-wide/16 p2, 0x7d0

    invoke-virtual {p0, p1, p2, p3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_4
    return-void
.end method

.method private static sndVwSkodaPhone([B[BI)V
    .locals 3

    .line 143
    new-array v0, p2, [B

    .line 144
    array-length v1, p1

    invoke-static {p1, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->asciiToBcd([BI)[B

    move-result-object p1

    .line 145
    array-length v1, p1

    const/4 v2, 0x0

    if-lt v1, p2, :cond_0

    :goto_0
    if-ge v2, p2, :cond_2

    .line 147
    aget-byte v1, p1, v2

    aput-byte v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v2, p2, :cond_2

    .line 151
    array-length v1, p1

    if-ge v2, v1, :cond_1

    .line 152
    aget-byte v1, p1, v2

    aput-byte v1, v0, v2

    goto :goto_2

    :cond_1
    const/4 v1, -0x1

    .line 154
    aput-byte v1, v0, v2

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 158
    :cond_2
    invoke-static {p0, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object p0

    .line 160
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 162
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_3
    return-void
.end method


# virtual methods
.method public reportBtCallLogToCan(Landroid/content/Context;IILjava/lang/String;)V
    .locals 3

    .line 2431
    :try_start_0
    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$12;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$12;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;IILjava/lang/String;)V

    invoke-static {p1, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface;->sendMsg(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface$CallBack;)V

    .line 2438
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$13;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/16 v0, 0x1a

    if-eq p1, v0, :cond_0

    const/16 v0, 0x57

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    if-lt p2, p1, :cond_1

    return-void

    :cond_1
    new-array p1, p1, [B

    const/4 v0, 0x0

    const/16 v1, 0x16

    aput-byte v1, p1, v0

    const/16 v0, -0x39

    const/4 v1, 0x1

    aput-byte v0, p1, v1

    const/4 v0, 0x2

    const/16 v2, 0x10

    aput-byte v2, p1, v0

    const/4 v0, 0x3

    add-int/2addr p2, v1

    int-to-byte p2, p2

    aput-byte p2, p1, v0

    const/4 p2, 0x4

    int-to-byte p3, p3

    aput-byte p3, p1, p2

    .line 2443
    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->phoneNum2UnicodeLittleExtra([B)[B

    move-result-object p2

    .line 2444
    invoke-static {p1, p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object p1

    .line 2445
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2450
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public reportBtHangUpToCan(Landroid/content/Context;[BZZ)V
    .locals 30

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    move/from16 v10, p3

    move/from16 v11, p4

    const/4 v12, 0x0

    .line 1473
    sput v12, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->PhoneState:I

    const-string v3, "REPORT BT"

    const-string/jumbo v4, "reportBtHangUpToCan"

    .line 1474
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "PhoneState"

    invoke-static {v3, v4, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1476
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "btState"

    const/4 v13, 0x1

    invoke-static {v3, v4, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1477
    sput-byte v12, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->prevCallingSt:B

    .line 1479
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v3

    if-eqz v3, :cond_10

    if-eqz v0, :cond_10

    .line 1481
    new-instance v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$7;

    invoke-direct {v3, v1, v0, v10, v11}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$7;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;[BZZ)V

    invoke-static {v2, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface;->sendMsg(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface$CallBack;)V

    .line 1488
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getFactoryCanType()I

    .line 1489
    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isCanbusCmdPorting(Landroid/content/Context;)Z

    move-result v3

    const/16 v4, 0x3c

    const/16 v16, 0xb

    const/16 v8, 0x1a

    const/16 v17, -0x3b

    const/16 v7, 0x40

    const/16 v18, 0x8

    const/16 v19, -0x40

    const/16 v6, 0xa

    const/16 v22, 0x16

    const/4 v15, 0x5

    const/4 v5, 0x4

    const/4 v14, 0x2

    const/4 v9, 0x3

    if-eqz v3, :cond_4

    .line 1491
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$13;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v26

    aget v3, v3, v26

    if-eq v3, v8, :cond_3

    if-eq v3, v4, :cond_0

    if-eq v3, v7, :cond_1

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    :goto_0
    move v8, v5

    move v14, v6

    move/from16 v26, v7

    const/16 v6, 0x9

    const/4 v7, 0x6

    goto/16 :goto_7

    :cond_0
    :pswitch_0
    const/4 v6, 0x6

    const/16 v7, 0x9

    goto/16 :goto_6

    .line 1556
    :pswitch_1
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v3

    new-array v4, v6, [B

    aput-byte v22, v4, v12

    aput-byte v19, v4, v13

    aput-byte v15, v4, v14

    aput-byte v7, v4, v9

    aput-byte v12, v4, v5

    aput-byte v12, v4, v15

    const/16 v25, 0x6

    aput-byte v12, v4, v25

    const/16 v24, 0x7

    aput-byte v12, v4, v24

    aput-byte v12, v4, v18

    const/16 v23, 0x9

    aput-byte v12, v4, v23

    invoke-virtual {v3, v4}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto :goto_0

    .line 1550
    :pswitch_2
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v3

    new-array v4, v9, [B

    aput-byte v22, v4, v12

    const/16 v23, 0x9

    aput-byte v23, v4, v13

    aput-byte v16, v4, v14

    invoke-virtual {v3, v4}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    .line 1551
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v3

    new-array v4, v5, [B

    aput-byte v22, v4, v12

    const/16 v23, 0x9

    aput-byte v23, v4, v13

    const/16 v24, 0x7

    aput-byte v24, v4, v14

    const/16 v25, 0x6

    aput-byte v25, v4, v9

    invoke-virtual {v3, v4}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto :goto_0

    .line 1535
    :pswitch_3
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v3

    new-array v4, v6, [B

    aput-byte v22, v4, v12

    const/16 v26, -0x7e

    aput-byte v26, v4, v13

    aput-byte v15, v4, v14

    aput-byte v9, v4, v9

    aput-byte v13, v4, v5

    aput-byte v12, v4, v15

    const/16 v25, 0x6

    aput-byte v12, v4, v25

    const/16 v24, 0x7

    aput-byte v12, v4, v24

    aput-byte v12, v4, v18

    const/16 v23, 0x9

    aput-byte v12, v4, v23

    invoke-virtual {v3, v4}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_0

    .line 1531
    :pswitch_4
    invoke-static {v13, v12, v12, v12, v12}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->sndHondaXinbasPhone(ZBBBB)V

    goto/16 :goto_0

    .line 1527
    :pswitch_5
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->getInstance()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;

    move-result-object v3

    invoke-virtual {v3, v2, v10, v13, v15}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->reportSimpleHondaAccordDeviceStatus(Landroid/content/Context;ZZB)V

    .line 1528
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v3

    new-array v4, v6, [B

    aput-byte v22, v4, v12

    aput-byte v19, v4, v13

    aput-byte v15, v4, v14

    aput-byte v7, v4, v9

    aput-byte v12, v4, v5

    aput-byte v12, v4, v15

    const/16 v25, 0x6

    aput-byte v12, v4, v25

    const/16 v24, 0x7

    aput-byte v12, v4, v24

    aput-byte v12, v4, v18

    const/16 v23, 0x9

    aput-byte v12, v4, v23

    invoke-virtual {v3, v4}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_0

    .line 1524
    :pswitch_6
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v3

    const/4 v4, 0x7

    new-array v7, v4, [B

    aput-byte v22, v7, v12

    const/16 v4, -0x7c

    aput-byte v4, v7, v13

    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_XINBAS_MEDIA_TYPE;->MID_PHONE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_XINBAS_MEDIA_TYPE;

    invoke-virtual {v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_XINBAS_MEDIA_TYPE;->ordinal()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v7, v14

    const/16 v4, 0x60

    aput-byte v4, v7, v9

    aput-byte v12, v7, v5

    aput-byte v12, v7, v15

    const/4 v4, 0x6

    aput-byte v12, v7, v4

    invoke-virtual {v3, v7}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto :goto_1

    .line 1518
    :pswitch_7
    invoke-static/range {p2 .. p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->sndVwMqbPhoneInfo([B)V

    .line 1519
    invoke-static {v11, v10, v13, v15}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->sndVwMqbPhoneStatus(ZZZB)V

    :goto_1
    move v8, v5

    move v14, v6

    const/16 v6, 0x9

    const/4 v7, 0x6

    goto :goto_3

    .line 1513
    :pswitch_8
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v3

    new-array v4, v6, [B

    aput-byte v22, v4, v12

    aput-byte v19, v4, v13

    const/16 v7, 0x43

    aput-byte v7, v4, v14

    const/4 v7, -0x1

    aput-byte v7, v4, v9

    aput-byte v12, v4, v5

    aput-byte v12, v4, v15

    const/4 v7, 0x6

    aput-byte v12, v4, v7

    const/4 v7, 0x7

    aput-byte v12, v4, v7

    aput-byte v12, v4, v18

    const/16 v7, 0x9

    aput-byte v12, v4, v7

    invoke-virtual {v3, v4}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    .line 1514
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v3

    new-array v4, v9, [B

    aput-byte v22, v4, v12

    const/16 v23, 0x70

    aput-byte v23, v4, v13

    const/16 v23, 0x10

    aput-byte v23, v4, v14

    invoke-static/range {p2 .. p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->phoneNum2UnicodeBig([B)[B

    move-result-object v6

    invoke-static {v4, v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto :goto_2

    :pswitch_9
    const/16 v7, 0x9

    .line 1510
    invoke-static {v12, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->sndNissanPhone(B[B)V

    :goto_2
    move v8, v5

    move v6, v7

    const/4 v7, 0x6

    const/16 v14, 0xa

    :goto_3
    const/16 v26, 0x40

    goto/16 :goto_7

    :pswitch_a
    const/16 v7, 0x9

    new-array v3, v9, [B

    aput-byte v22, v3, v12

    aput-byte v17, v3, v13

    aput-byte v12, v3, v14

    const/4 v6, 0x6

    .line 1505
    invoke-static {v3, v0, v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->sndVwSkodaPhone([B[BI)V

    :goto_4
    move v8, v5

    const/16 v14, 0xa

    const/16 v26, 0x40

    move/from16 v29, v7

    move v7, v6

    move/from16 v6, v29

    goto/16 :goto_7

    :pswitch_b
    const/4 v6, 0x6

    const/16 v7, 0x9

    new-array v3, v9, [B

    aput-byte v22, v3, v12

    const/16 v4, -0x65

    aput-byte v4, v3, v13

    aput-byte v5, v3, v14

    .line 1495
    invoke-static/range {p2 .. p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->phoneNum2UnicodeLittleExtra([B)[B

    move-result-object v4

    .line 1496
    invoke-static {v3, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v3

    const/16 v4, 0x1b

    .line 1497
    invoke-static {v3, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->makeBytesFixedLength([BI)[B

    move-result-object v3

    .line 1498
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto :goto_4

    :cond_1
    const/4 v6, 0x6

    const/16 v7, 0x9

    .line 1540
    array-length v3, v0

    const/16 v4, 0xc

    if-gt v3, v4, :cond_2

    .line 1541
    array-length v3, v0

    int-to-byte v3, v3

    goto :goto_5

    :cond_2
    move v3, v4

    :goto_5
    new-array v4, v9, [B

    aput-byte v22, v4, v12

    const/16 v20, -0x7d

    aput-byte v20, v4, v13

    aput-byte v3, v4, v14

    .line 1545
    invoke-static {v4, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v3

    .line 1546
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto :goto_4

    :goto_6
    const/16 v3, 0x15

    const/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v21, 0xc

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v23, v6

    const/16 v14, 0xa

    move-object/from16 v6, p2

    const/16 v26, 0x40

    move/from16 v7, v25

    move/from16 v8, v27

    move/from16 v9, v28

    .line 1562
    invoke-static/range {v3 .. v9}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->sndSimplePsaPhoneNum(BZZ[BBBB)V

    const/16 v6, 0x9

    const/4 v7, 0x6

    const/4 v8, 0x4

    const/4 v9, 0x3

    goto :goto_7

    :cond_3
    move v14, v6

    move/from16 v26, v7

    .line 1566
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v3

    new-array v4, v14, [B

    aput-byte v22, v4, v12

    aput-byte v19, v4, v13

    const/4 v5, 0x2

    aput-byte v15, v4, v5

    const/4 v9, 0x3

    aput-byte v26, v4, v9

    const/4 v8, 0x4

    aput-byte v8, v4, v8

    aput-byte v12, v4, v15

    const/4 v7, 0x6

    aput-byte v12, v4, v7

    const/4 v5, 0x7

    aput-byte v12, v4, v5

    aput-byte v12, v4, v18

    const/16 v6, 0x9

    aput-byte v12, v4, v6

    invoke-virtual {v3, v4}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    const/4 v3, 0x2

    new-array v4, v3, [B

    aput-byte v12, v4, v12

    aput-byte v12, v4, v13

    .line 1567
    invoke-static {v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->sndToyotaSimplePhone([B)V

    goto :goto_7

    :cond_4
    move v8, v5

    move v14, v6

    move/from16 v26, v7

    const/16 v6, 0x9

    const/4 v7, 0x6

    .line 1582
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$13;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v5

    aget v3, v3, v5

    if-eq v3, v9, :cond_6

    if-eq v3, v8, :cond_6

    const/16 v5, 0x17

    if-eq v3, v5, :cond_5

    const/16 v5, 0x18

    if-eq v3, v5, :cond_5

    if-eq v3, v4, :cond_5

    :goto_7
    move v15, v8

    move v14, v9

    goto :goto_8

    :cond_5
    const/16 v3, 0x15

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    move/from16 v4, p3

    move/from16 v5, p4

    move v15, v6

    move-object/from16 v6, p2

    move v14, v7

    move/from16 v7, v21

    move v15, v8

    move/from16 v8, v23

    move v14, v9

    move/from16 v9, v25

    .line 1591
    invoke-static/range {v3 .. v9}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->sndSimplePsaPhoneNum(BZZ[BBBB)V

    goto :goto_8

    :cond_6
    move v15, v8

    move v14, v9

    new-array v3, v15, [B

    aput-byte v12, v3, v12

    aput-byte v12, v3, v13

    const/4 v4, 0x7

    const/4 v5, 0x2

    aput-byte v4, v3, v5

    aput-byte v12, v3, v14

    const/4 v4, 0x6

    .line 1585
    invoke-static {v3, v0, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->sndVwSkodaPhone([B[BI)V

    .line 1602
    :goto_8
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$13;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v4

    aget v3, v3, v4

    if-eq v3, v14, :cond_e

    const/16 v4, 0x1a

    if-eq v3, v4, :cond_d

    const/16 v5, 0x32

    const/16 v6, 0xe

    if-eq v3, v5, :cond_b

    const/16 v4, 0x3d

    if-eq v3, v4, :cond_a

    const/16 v4, 0x41

    if-eq v3, v4, :cond_e

    const/16 v4, 0x9

    if-eq v3, v4, :cond_7

    const/16 v4, 0xa

    if-eq v3, v4, :cond_7

    packed-switch v3, :pswitch_data_2

    packed-switch v3, :pswitch_data_3

    packed-switch v3, :pswitch_data_4

    .line 1736
    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isCanbusCmdPorting(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 1737
    array-length v3, v0

    const/4 v4, 0x2

    add-int/2addr v3, v4

    int-to-byte v3, v3

    const/4 v5, 0x5

    new-array v5, v5, [B

    aput-byte v12, v5, v12

    aput-byte v4, v5, v13

    aput-byte v3, v5, v4

    aput-byte v12, v5, v14

    aput-byte v13, v5, v15

    .line 1739
    invoke-static {v5, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v0

    .line 1740
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_c

    :pswitch_c
    const/4 v0, 0x2

    new-array v0, v0, [B

    aput-byte v22, v0, v12

    const/16 v3, -0x7d

    aput-byte v3, v0, v13

    const-string v3, "HAND UP"

    .line 1731
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v0, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v0

    .line 1732
    invoke-static {v0, v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->makeBytesFixedLength([BI)[B

    move-result-object v0

    .line 1733
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_c

    .line 1722
    :pswitch_d
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v3

    new-array v4, v15, [B

    aput-byte v22, v4, v12

    aput-byte v17, v4, v13

    const/4 v5, 0x2

    aput-byte v12, v4, v5

    const/4 v5, 0x5

    aput-byte v5, v4, v14

    invoke-virtual {v3, v4}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    new-array v3, v15, [B

    aput-byte v22, v3, v12

    const/16 v4, -0x36

    aput-byte v4, v3, v13

    const/4 v4, 0x2

    aput-byte v15, v3, v4

    const/16 v4, 0x10

    aput-byte v4, v3, v14

    .line 1724
    invoke-static/range {p2 .. p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->phoneNum2UnicodeLittleExtra([B)[B

    move-result-object v0

    .line 1725
    invoke-static {v3, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v0

    .line 1726
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_c

    :pswitch_e
    const/16 v3, -0x40

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v8, p2

    .line 1717
    invoke-static/range {v3 .. v8}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->sndThrumpchiRaisePhone(BBIII[B)V

    goto/16 :goto_c

    .line 1707
    :pswitch_f
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    new-array v3, v15, [B

    aput-byte v22, v3, v12

    aput-byte v19, v3, v13

    const/4 v4, 0x5

    const/4 v5, 0x2

    aput-byte v4, v3, v5

    aput-byte v26, v3, v14

    invoke-virtual {v0, v3}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    .line 1708
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    new-array v3, v15, [B

    aput-byte v22, v3, v12

    aput-byte v17, v3, v13

    const/4 v4, 0x2

    aput-byte v12, v3, v4

    const/4 v4, 0x5

    aput-byte v4, v3, v14

    invoke-virtual {v0, v3}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_c

    :pswitch_10
    new-array v3, v15, [B

    aput-byte v22, v3, v12

    aput-byte v17, v3, v13

    const/4 v4, 0x2

    aput-byte v12, v3, v4

    aput-byte v13, v3, v14

    .line 1703
    invoke-static {v3, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->sndGeneralPhone([B[B)V

    goto/16 :goto_c

    .line 1698
    :pswitch_11
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    const/16 v3, 0xc

    new-array v3, v3, [B

    aput-byte v22, v3, v12

    aput-byte v19, v3, v13

    const/4 v4, 0x5

    const/4 v5, 0x2

    aput-byte v4, v3, v5

    const/4 v5, -0x1

    aput-byte v5, v3, v14

    aput-byte v12, v3, v15

    aput-byte v12, v3, v4

    const/4 v4, 0x6

    aput-byte v12, v3, v4

    const/4 v4, 0x7

    aput-byte v12, v3, v4

    aput-byte v12, v3, v18

    const/16 v4, 0x9

    aput-byte v12, v3, v4

    const/16 v4, 0xa

    aput-byte v12, v3, v4

    aput-byte v12, v3, v16

    invoke-virtual {v0, v3}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    .line 1699
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    new-array v3, v14, [B

    aput-byte v22, v3, v12

    const/16 v4, -0x3d

    aput-byte v4, v3, v13

    const/4 v4, 0x2

    aput-byte v14, v3, v4

    const-string v4, " "

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_c

    :pswitch_12
    const/4 v3, 0x5

    new-array v4, v3, [B

    aput-byte v22, v4, v12

    aput-byte v19, v4, v13

    const/4 v5, 0x2

    aput-byte v3, v4, v5

    aput-byte v12, v4, v14

    aput-byte v13, v4, v15

    .line 1692
    invoke-static {v4, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->sndGeneralPhone([B[B)V

    goto/16 :goto_c

    .line 1680
    :pswitch_13
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    new-array v3, v14, [B

    const/16 v4, -0x4f

    aput-byte v4, v3, v12

    aput-byte v15, v3, v13

    const/4 v4, 0x2

    aput-byte v12, v3, v4

    invoke-virtual {v0, v3}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_c

    .line 1639
    :cond_7
    array-length v3, v0

    add-int/2addr v3, v15

    int-to-byte v3, v3

    const/16 v4, 0x15

    if-nez v10, :cond_8

    move v5, v13

    goto :goto_9

    :cond_8
    move v5, v12

    :goto_9
    const/4 v6, 0x5

    .line 1641
    invoke-static {v4, v6, v5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->setIntByteWithBit(IIZ)I

    move-result v4

    int-to-byte v4, v4

    if-nez v11, :cond_9

    move v5, v13

    goto :goto_a

    :cond_9
    move v5, v12

    :goto_a
    const/4 v6, 0x6

    .line 1642
    invoke-static {v4, v6, v5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->setIntByteWithBit(IIZ)I

    move-result v4

    int-to-byte v4, v4

    const/4 v5, 0x7

    new-array v5, v5, [B

    aput-byte v12, v5, v12

    aput-byte v13, v5, v13

    const/4 v6, 0x2

    aput-byte v3, v5, v6

    const/16 v3, 0x33

    aput-byte v3, v5, v14

    aput-byte v4, v5, v15

    const/4 v3, 0x5

    aput-byte v14, v5, v3

    const/4 v3, 0x6

    aput-byte v13, v5, v3

    .line 1644
    invoke-static {v5, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v0

    .line 1645
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_c

    .line 1711
    :cond_a
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v3

    new-array v4, v15, [B

    aput-byte v22, v4, v12

    const/16 v5, -0x3c

    aput-byte v5, v4, v13

    const/4 v5, 0x5

    const/4 v6, 0x2

    aput-byte v5, v4, v6

    aput-byte v12, v4, v14

    invoke-static {v4, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    .line 1712
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    new-array v3, v5, [B

    aput-byte v22, v3, v12

    aput-byte v17, v3, v13

    const/4 v4, 0x2

    aput-byte v14, v3, v4

    aput-byte v12, v3, v14

    aput-byte v12, v3, v15

    invoke-virtual {v0, v3}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto :goto_c

    :cond_b
    const/16 v3, 0xc

    const/16 v0, 0xf

    new-array v0, v0, [B

    aput-byte v22, v0, v12

    const/16 v5, -0x6f

    aput-byte v5, v0, v13

    const/16 v5, 0xa

    const/4 v7, 0x2

    aput-byte v5, v0, v7

    aput-byte v12, v0, v14

    aput-byte v12, v0, v15

    const/4 v5, 0x5

    aput-byte v12, v0, v5

    const/4 v5, 0x6

    aput-byte v12, v0, v5

    const/4 v5, 0x7

    aput-byte v12, v0, v5

    aput-byte v12, v0, v18

    const/16 v5, 0x9

    aput-byte v12, v0, v5

    const/16 v5, 0xa

    aput-byte v12, v0, v5

    aput-byte v12, v0, v16

    aput-byte v12, v0, v3

    const/16 v3, 0xd

    aput-byte v12, v0, v3

    aput-byte v12, v0, v6

    .line 1627
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    new-array v0, v14, [B

    aput-byte v22, v0, v12

    const/16 v3, -0x33

    aput-byte v3, v0, v13

    const/4 v3, 0x2

    aput-byte v12, v0, v3

    new-array v3, v4, [B

    move v5, v12

    :goto_b
    if-ge v5, v4, :cond_c

    .line 1631
    aput-byte v12, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .line 1633
    :cond_c
    invoke-static {v0, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v0

    .line 1634
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto :goto_c

    .line 1605
    :cond_d
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    const/4 v3, 0x5

    new-array v4, v3, [B

    aput-byte v22, v4, v12

    aput-byte v19, v4, v13

    const/4 v5, 0x2

    aput-byte v3, v4, v5

    aput-byte v26, v4, v14

    aput-byte v15, v4, v15

    invoke-virtual {v0, v4}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_e
    :goto_c
    :pswitch_14
    const-wide/16 v3, 0x64

    .line 1747
    :try_start_1
    invoke-static {v3, v4}, Lcom/hzbhd/midwareproxy/utils/ThreadUtils;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_d

    :catch_0
    move-exception v0

    move-object v3, v0

    .line 1749
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1752
    :goto_d
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "currentReport"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 1753
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    sget-object v3, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->SMALL_LCD_FUNCTION:Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;

    invoke-virtual {v3}, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getSharedBool(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1754
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$13;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$Util$SingleSpinMachine:[I

    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isYHT(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_5

    goto :goto_e

    .line 1763
    :pswitch_15
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->getInstance()Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;

    move-result-object v0

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->KT:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    invoke-virtual {v0, v2, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->clearAllPriIcont(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;)V

    .line 1764
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "LCD_START_TIMER"

    invoke-static {v0, v3, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1765
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->getInstance()Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->getCurrentTimeString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "mm"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " BT "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_lcdPrintfString(Landroid/content/Context;[B)[B

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->reportTempLcdInfor([BLandroid/content/Context;)V

    goto :goto_e

    .line 1760
    :pswitch_16
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->getInstance()Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;

    move-result-object v0

    const-string v3, "CALL ENDS"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_lcdPrintfString(Landroid/content/Context;[B)[B

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->reportTempLcdInfor([BLandroid/content/Context;)V

    .line 1770
    :cond_f
    :goto_e
    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$8;

    invoke-direct {v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$8;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;Landroid/content/Context;)V

    .line 1801
    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$8;->start()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_f

    :catch_1
    move-exception v0

    .line 1808
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_10
    :goto_f
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xd
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1c
        :pswitch_13
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x34
        :pswitch_12
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_15
    .end packed-switch
.end method

.method public reportBtIncomingToCan(Landroid/content/Context;[BZZ)V
    .locals 27

    move-object/from16 v0, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    const/4 v11, 0x1

    .line 354
    sput v11, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->PhoneState:I

    .line 355
    sput-boolean v11, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->isIncoming:Z

    const-string v1, "REPORT BT"

    const-string/jumbo v2, "reportBtIncomingToCan"

    .line 356
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "PhoneState"

    invoke-static {v1, v2, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 358
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "btState"

    const/4 v12, 0x0

    invoke-static {v1, v2, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 359
    sput-byte v11, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->prevCallingSt:B

    .line 361
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    if-eqz v1, :cond_c

    if-eqz v8, :cond_c

    .line 363
    new-instance v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$4;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v13, p0

    :try_start_1
    invoke-direct {v1, v13, v8, v9, v10}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$4;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;[BZZ)V

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface;->sendMsg(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface$CallBack;)V

    .line 370
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getFactoryCanType()I

    .line 371
    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isCanbusCmdPorting(Landroid/content/Context;)Z

    move-result v1

    const/16 v16, -0x3b

    const/16 v17, 0x40

    const/16 v18, 0xb

    const/16 v19, -0x40

    const/16 v5, 0xa

    const/4 v4, 0x7

    const/4 v3, 0x6

    const/4 v2, 0x5

    const/4 v15, 0x4

    const/16 v21, 0x16

    const/4 v14, 0x2

    const/4 v6, 0x3

    if-eqz v1, :cond_0

    .line 373
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$13;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v23

    aget v1, v1, v23

    const/16 v23, -0x7c

    packed-switch v1, :pswitch_data_0

    :goto_0
    move v15, v2

    move v14, v5

    move v7, v6

    move v6, v3

    move v5, v4

    const/16 v3, 0x9

    :goto_1
    const/16 v4, 0x8

    goto/16 :goto_3

    .line 457
    :pswitch_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    new-array v7, v3, [B

    aput-byte v21, v7, v12

    const/16 v23, -0x39

    aput-byte v23, v7, v11

    aput-byte v12, v7, v14

    aput-byte v3, v7, v6

    aput-byte v12, v7, v15

    aput-byte v12, v7, v2

    invoke-virtual {v1, v7}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    const/16 v1, -0x36

    .line 458
    invoke-static {v1, v8}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->sndPhoneNumberByUnicode(B[B)V

    goto :goto_0

    .line 447
    :pswitch_1
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    new-array v7, v5, [B

    aput-byte v21, v7, v12

    aput-byte v19, v7, v11

    aput-byte v2, v7, v14

    aput-byte v17, v7, v6

    aput-byte v11, v7, v15

    aput-byte v12, v7, v2

    aput-byte v12, v7, v3

    aput-byte v12, v7, v4

    const/16 v24, 0x8

    aput-byte v12, v7, v24

    const/16 v22, 0x9

    aput-byte v12, v7, v22

    invoke-virtual {v1, v7}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    .line 448
    invoke-static/range {p2 .. p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->sndToyotaSimplePhone([B)V

    goto :goto_2

    :pswitch_2
    const/16 v22, 0x9

    const/16 v24, 0x8

    .line 443
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    new-array v7, v4, [B

    aput-byte v21, v7, v12

    aput-byte v23, v7, v11

    aput-byte v2, v7, v14

    aput-byte v12, v7, v6

    aput-byte v12, v7, v15

    aput-byte v12, v7, v2

    aput-byte v12, v7, v3

    invoke-virtual {v1, v7}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    :goto_2
    move v15, v2

    move v14, v5

    move v7, v6

    move v6, v3

    move v5, v4

    move/from16 v3, v22

    move/from16 v4, v24

    goto/16 :goto_3

    :pswitch_3
    const/16 v22, 0x9

    const/16 v24, 0x8

    const/16 v1, 0x11

    const/4 v7, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    move v15, v2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p2

    move v14, v5

    move v5, v7

    move/from16 v7, v22

    move/from16 v6, v23

    move/from16 v7, v25

    .line 440
    invoke-static/range {v1 .. v7}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->sndSimplePsaPhoneNum(BZZ[BBBB)V

    const/16 v3, 0x9

    const/16 v4, 0x8

    const/4 v5, 0x7

    const/4 v6, 0x6

    const/4 v7, 0x3

    goto/16 :goto_3

    :pswitch_4
    move v15, v2

    move v14, v5

    .line 435
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    new-array v2, v14, [B

    aput-byte v21, v2, v12

    aput-byte v19, v2, v11

    const/4 v3, 0x2

    aput-byte v15, v2, v3

    const/4 v7, 0x3

    aput-byte v17, v2, v7

    const/4 v3, 0x4

    aput-byte v11, v2, v3

    aput-byte v12, v2, v15

    const/4 v6, 0x6

    aput-byte v12, v2, v6

    const/4 v5, 0x7

    aput-byte v12, v2, v5

    const/16 v4, 0x8

    aput-byte v12, v2, v4

    const/16 v3, 0x9

    aput-byte v12, v2, v3

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_3

    :pswitch_5
    move v15, v2

    move v14, v5

    move v7, v6

    move v6, v3

    move v5, v4

    const/16 v3, 0x9

    const/16 v4, 0x8

    .line 429
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    new-array v2, v7, [B

    aput-byte v21, v2, v12

    aput-byte v3, v2, v11

    const/16 v22, 0x2

    aput-byte v18, v2, v22

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    .line 430
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    const/4 v2, 0x4

    new-array v4, v2, [B

    aput-byte v21, v4, v12

    aput-byte v3, v4, v11

    const/4 v2, 0x2

    aput-byte v5, v4, v2

    aput-byte v11, v4, v7

    invoke-virtual {v1, v4}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_1

    :pswitch_6
    move v15, v2

    move v14, v5

    move v7, v6

    move v6, v3

    move v5, v4

    const/16 v3, 0x9

    .line 426
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    new-array v2, v14, [B

    aput-byte v21, v2, v12

    const/16 v4, -0x7e

    aput-byte v4, v2, v11

    const/4 v4, 0x2

    aput-byte v15, v2, v4

    aput-byte v7, v2, v7

    const/16 v22, 0x4

    aput-byte v4, v2, v22

    aput-byte v12, v2, v15

    aput-byte v12, v2, v6

    aput-byte v12, v2, v5

    const/16 v4, 0x8

    aput-byte v12, v2, v4

    aput-byte v12, v2, v3

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_1

    :pswitch_7
    move v15, v2

    move v14, v5

    move v7, v6

    move v6, v3

    move v5, v4

    const/16 v3, 0x9

    .line 422
    invoke-static {v11, v11, v12, v12, v12}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->sndHondaXinbasPhone(ZBBBB)V

    goto/16 :goto_1

    :pswitch_8
    move v15, v2

    move v14, v5

    move v7, v6

    move v6, v3

    move v5, v4

    const/16 v3, 0x9

    .line 418
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->getInstance()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;

    move-result-object v1

    invoke-virtual {v1, v0, v9, v11, v11}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->reportSimpleHondaAccordDeviceStatus(Landroid/content/Context;ZZB)V

    const/4 v1, 0x4

    new-array v2, v1, [B

    aput-byte v21, v2, v12

    const/16 v1, -0x35

    aput-byte v1, v2, v11

    const/4 v1, 0x2

    aput-byte v11, v2, v1

    aput-byte v11, v2, v7

    .line 419
    array-length v1, v8

    add-int/2addr v1, v11

    invoke-static {v2, v8, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->sndSimpleHondaPhone([B[BI)V

    goto/16 :goto_1

    :pswitch_9
    move v15, v2

    move v14, v5

    move v7, v6

    move v6, v3

    move v5, v4

    const/16 v3, 0x9

    new-array v1, v7, [B

    aput-byte v21, v1, v12

    const/16 v2, -0x35

    aput-byte v2, v1, v11

    const/4 v2, 0x2

    aput-byte v11, v1, v2

    .line 415
    array-length v2, v8

    invoke-static {v1, v8, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->sndSimpleHondaPhone([B[BI)V

    goto/16 :goto_1

    :pswitch_a
    move v15, v2

    move v14, v5

    move v7, v6

    move v6, v3

    move v5, v4

    const/16 v3, 0x9

    .line 411
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    new-array v2, v5, [B

    aput-byte v21, v2, v12

    aput-byte v23, v2, v11

    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_XINBAS_MEDIA_TYPE;->MID_PHONE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_XINBAS_MEDIA_TYPE;

    invoke-virtual {v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_XINBAS_MEDIA_TYPE;->ordinal()I

    move-result v4

    int-to-byte v4, v4

    const/16 v22, 0x2

    aput-byte v4, v2, v22

    aput-byte v12, v2, v7

    const/4 v4, 0x4

    aput-byte v12, v2, v4

    aput-byte v12, v2, v15

    aput-byte v12, v2, v6

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_1

    :pswitch_b
    move v15, v2

    move v14, v5

    move v7, v6

    move v6, v3

    move v5, v4

    const/16 v3, 0x9

    .line 405
    invoke-static/range {p2 .. p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->sndVwMqbPhoneInfo([B)V

    .line 406
    invoke-static {v10, v9, v11, v11}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->sndVwMqbPhoneStatus(ZZZB)V

    goto/16 :goto_1

    :pswitch_c
    move v15, v2

    move v14, v5

    move v7, v6

    move v6, v3

    move v5, v4

    const/16 v3, 0x9

    .line 400
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    new-array v2, v14, [B

    aput-byte v21, v2, v12

    aput-byte v19, v2, v11

    const/16 v4, 0x41

    const/16 v22, 0x2

    aput-byte v4, v2, v22

    const/4 v4, -0x1

    aput-byte v4, v2, v7

    const/4 v4, 0x4

    aput-byte v12, v2, v4

    aput-byte v12, v2, v15

    aput-byte v12, v2, v6

    aput-byte v12, v2, v5

    const/16 v4, 0x8

    aput-byte v12, v2, v4

    aput-byte v12, v2, v3

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    .line 401
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    new-array v2, v7, [B

    aput-byte v21, v2, v12

    const/16 v4, 0x70

    aput-byte v4, v2, v11

    const/16 v4, 0x10

    const/16 v20, 0x2

    aput-byte v4, v2, v20

    invoke-static/range {p2 .. p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->phoneNum2UnicodeBig([B)[B

    move-result-object v4

    invoke-static {v2, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_1

    :pswitch_d
    move v15, v2

    move v14, v5

    move v7, v6

    move v6, v3

    move v5, v4

    const/16 v3, 0x9

    .line 397
    invoke-static {v11, v8}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->sndNissanPhone(B[B)V

    goto/16 :goto_1

    :pswitch_e
    move v15, v2

    move v14, v5

    move v7, v6

    move v6, v3

    move v5, v4

    const/16 v3, 0x9

    .line 390
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->PHONE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;

    const/16 v2, 0xff

    invoke-static {v0, v1, v2, v12, v12}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportSimpleMediaInfo(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;IZZ)V

    .line 391
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    const/16 v4, 0x8

    new-array v2, v4, [B

    aput-byte v21, v2, v12

    const/16 v22, -0x3d

    aput-byte v22, v2, v11

    const/16 v22, 0x2

    aput-byte v12, v2, v22

    aput-byte v12, v2, v7

    const/16 v22, 0x4

    aput-byte v12, v2, v22

    aput-byte v12, v2, v15

    aput-byte v12, v2, v6

    aput-byte v12, v2, v5

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    new-array v1, v7, [B

    aput-byte v21, v1, v12

    aput-byte v16, v1, v11

    const/4 v2, 0x2

    aput-byte v11, v1, v2

    .line 392
    invoke-static {v1, v8, v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->sndVwSkodaPhone([B[BI)V

    goto :goto_3

    :pswitch_f
    move v15, v2

    move v14, v5

    move v7, v6

    move v6, v3

    move v5, v4

    const/16 v3, 0x9

    const/16 v4, 0x8

    new-array v1, v7, [B

    aput-byte v21, v1, v12

    const/16 v2, -0x65

    aput-byte v2, v1, v11

    const/4 v2, 0x2

    aput-byte v11, v1, v2

    .line 377
    invoke-static/range {p2 .. p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->phoneNum2UnicodeLittleExtra([B)[B

    move-result-object v2

    .line 378
    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v1

    const/16 v2, 0x1b

    .line 379
    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->makeBytesFixedLength([BI)[B

    move-result-object v1

    .line 380
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto :goto_3

    :cond_0
    move v15, v2

    move v14, v5

    move v7, v6

    move v6, v3

    move v5, v4

    const/16 v3, 0x9

    const/16 v4, 0x8

    .line 463
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$13;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/16 v2, 0x17

    if-eq v1, v2, :cond_1

    const/16 v2, 0x18

    if-eq v1, v2, :cond_1

    :goto_3
    move v11, v3

    move/from16 v26, v4

    move v12, v7

    goto :goto_4

    :cond_1
    const/16 v1, 0x11

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move/from16 v2, p3

    move v11, v3

    move/from16 v3, p4

    move/from16 v26, v4

    move-object/from16 v4, p2

    move/from16 v5, v22

    move/from16 v6, v23

    move v12, v7

    move/from16 v7, v24

    .line 467
    invoke-static/range {v1 .. v7}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->sndSimplePsaPhoneNum(BZZ[BBBB)V

    .line 477
    :goto_4
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$13;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v12, :cond_a

    const/4 v2, 0x4

    if-eq v1, v2, :cond_9

    if-eq v1, v11, :cond_6

    if-eq v1, v14, :cond_6

    const/16 v2, 0x1a

    if-eq v1, v2, :cond_5

    packed-switch v1, :pswitch_data_1

    const/16 v2, 0xf

    const/16 v3, 0xe

    const/16 v4, 0xc

    packed-switch v1, :pswitch_data_2

    .line 707
    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isCanbusCmdPorting(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 708
    array-length v1, v8

    const/4 v2, 0x2

    add-int/2addr v1, v2

    int-to-byte v1, v1

    new-array v3, v15, [B

    const/4 v4, 0x0

    aput-byte v4, v3, v4

    const/4 v4, 0x1

    aput-byte v2, v3, v4

    aput-byte v1, v3, v2

    aput-byte v12, v3, v12

    const/4 v1, 0x4

    aput-byte v4, v3, v1

    .line 710
    invoke-static {v3, v8}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v1

    .line 711
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_b

    :pswitch_10
    const/4 v1, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte v21, v1, v2

    const/16 v2, -0x7d

    const/4 v4, 0x1

    aput-byte v2, v1, v4

    const-string v2, "INCOMING"

    .line 702
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v1

    .line 703
    invoke-static {v1, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->makeBytesFixedLength([BI)[B

    move-result-object v1

    .line 704
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_b

    .line 687
    :pswitch_11
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    const/4 v2, 0x4

    new-array v3, v2, [B

    const/4 v2, 0x0

    aput-byte v21, v3, v2

    const/4 v4, 0x1

    aput-byte v16, v3, v4

    const/4 v5, 0x2

    aput-byte v2, v3, v5

    aput-byte v4, v3, v12

    invoke-virtual {v1, v3}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    const/4 v1, 0x4

    new-array v3, v1, [B

    aput-byte v21, v3, v2

    const/16 v2, -0x36

    aput-byte v2, v3, v4

    const/4 v2, 0x2

    aput-byte v1, v3, v2

    const/16 v1, 0x10

    aput-byte v1, v3, v12

    .line 689
    invoke-static/range {p2 .. p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->phoneNum2UnicodeLittleExtra([B)[B

    move-result-object v1

    .line 690
    invoke-static {v3, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v1

    .line 691
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_b

    :pswitch_12
    const/16 v1, -0x40

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v6, p2

    .line 683
    invoke-static/range {v1 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->sndThrumpchiRaisePhone(BBIII[B)V

    goto/16 :goto_b

    .line 679
    :pswitch_13
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    const/4 v2, 0x4

    new-array v3, v2, [B

    const/4 v2, 0x0

    aput-byte v21, v3, v2

    const/4 v2, 0x1

    aput-byte v19, v3, v2

    const/4 v2, 0x2

    aput-byte v15, v3, v2

    aput-byte v17, v3, v12

    invoke-virtual {v1, v3}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    .line 680
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [B

    const/4 v3, 0x0

    aput-byte v21, v2, v3

    const/4 v4, 0x1

    aput-byte v16, v2, v4

    const/4 v5, 0x2

    aput-byte v3, v2, v5

    aput-byte v4, v2, v12

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_b

    :pswitch_14
    const/4 v1, 0x4

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte v21, v1, v2

    const/4 v2, 0x1

    aput-byte v16, v1, v2

    const/4 v3, 0x2

    aput-byte v2, v1, v3

    aput-byte v2, v1, v12

    .line 675
    invoke-static {v1, v8}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->sndGeneralPhone([B[B)V

    goto/16 :goto_b

    .line 670
    :pswitch_15
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    new-array v2, v4, [B

    const/4 v3, 0x0

    aput-byte v21, v2, v3

    const/4 v4, 0x1

    aput-byte v19, v2, v4

    const/4 v4, 0x2

    aput-byte v15, v2, v4

    const/4 v4, -0x1

    aput-byte v4, v2, v12

    const/4 v4, 0x4

    aput-byte v3, v2, v4

    aput-byte v3, v2, v15

    const/4 v5, 0x6

    aput-byte v3, v2, v5

    const/4 v6, 0x7

    aput-byte v3, v2, v6

    aput-byte v3, v2, v26

    aput-byte v3, v2, v11

    aput-byte v3, v2, v14

    aput-byte v3, v2, v18

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    .line 671
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    new-array v2, v12, [B

    aput-byte v21, v2, v3

    const/16 v3, -0x3d

    const/4 v4, 0x1

    aput-byte v3, v2, v4

    const/4 v3, 0x2

    aput-byte v12, v2, v3

    invoke-static {v2, v8}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_b

    :pswitch_16
    new-array v1, v15, [B

    const/4 v2, 0x0

    aput-byte v21, v1, v2

    const/4 v2, 0x1

    aput-byte v19, v1, v2

    const/4 v3, 0x2

    aput-byte v15, v1, v3

    aput-byte v2, v1, v12

    const/4 v3, 0x4

    aput-byte v2, v1, v3

    .line 663
    invoke-static {v1, v8}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->sndGeneralPhone([B[B)V

    goto/16 :goto_b

    :pswitch_17
    const/4 v6, 0x7

    .line 654
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "action_qz_oringinal_screen_rep_0x83_status"

    .line 655
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "qz_src_mode_status"

    .line 656
    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 657
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v1, "QZ"

    const-string v2, "qz_src_mode_status snd android"

    .line 658
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :pswitch_18
    const/4 v5, 0x6

    const/4 v6, 0x7

    new-array v1, v2, [B

    const/4 v2, 0x0

    aput-byte v21, v1, v2

    const/16 v7, -0x6f

    const/4 v8, 0x1

    aput-byte v7, v1, v8

    const/4 v7, 0x2

    aput-byte v14, v1, v7

    aput-byte v2, v1, v12

    const/4 v7, 0x4

    aput-byte v2, v1, v7

    aput-byte v2, v1, v15

    aput-byte v2, v1, v5

    aput-byte v2, v1, v6

    aput-byte v2, v1, v26

    aput-byte v2, v1, v11

    aput-byte v2, v1, v14

    aput-byte v2, v1, v18

    aput-byte v2, v1, v4

    const/16 v4, 0xd

    aput-byte v2, v1, v4

    aput-byte v2, v1, v3

    const/4 v3, 0x2

    new-array v3, v3, [B

    const/16 v4, -0x33

    aput-byte v4, v3, v2

    const/4 v2, 0x1

    aput-byte v2, v3, v2

    .line 625
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    .line 626
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    const/16 v2, 0x1d

    invoke-static {v3, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->CompensateZero([BI)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_b

    :pswitch_19
    const/4 v5, 0x6

    const/4 v6, 0x7

    .line 608
    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->getMpegplayerManager(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->isDiscExist()Z

    move-result v1

    const/4 v7, 0x0

    invoke-static {v7, v7, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->setIntByteWithBit(IIZ)I

    move-result v1

    const/16 v8, 0x10

    new-array v8, v8, [B

    aput-byte v21, v8, v7

    const/16 v9, -0x6f

    const/4 v10, 0x1

    aput-byte v9, v8, v10

    const/4 v9, 0x2

    aput-byte v14, v8, v9

    int-to-byte v1, v1

    aput-byte v1, v8, v12

    const/4 v1, 0x4

    aput-byte v7, v8, v1

    aput-byte v7, v8, v15

    aput-byte v7, v8, v5

    aput-byte v7, v8, v6

    aput-byte v7, v8, v26

    aput-byte v7, v8, v11

    aput-byte v7, v8, v14

    aput-byte v7, v8, v18

    aput-byte v7, v8, v4

    const/16 v1, 0xd

    aput-byte v7, v8, v1

    aput-byte v7, v8, v3

    aput-byte v7, v8, v2

    .line 610
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_b

    :pswitch_1a
    new-array v1, v12, [B

    const/4 v2, 0x0

    aput-byte v21, v1, v2

    const/16 v2, -0x2e

    const/4 v3, 0x1

    aput-byte v2, v1, v3

    const/4 v2, 0x2

    aput-byte v14, v1, v2

    const-string v2, "            "

    .line 586
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v1

    .line 587
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_b

    .line 558
    :pswitch_1b
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v8}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->string2UnicodeBIG(Ljava/lang/String;)[B

    move-result-object v1

    .line 559
    array-length v2, v1

    new-array v2, v12, [B

    const/4 v3, 0x0

    aput-byte v21, v2, v3

    const/16 v3, -0x70

    const/4 v4, 0x1

    aput-byte v3, v2, v4

    const/4 v3, 0x2

    aput-byte v14, v2, v3

    const/16 v3, 0x21

    new-array v4, v3, [B

    .line 562
    invoke-static {v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v1

    const/4 v12, 0x0

    .line 563
    :goto_5
    array-length v2, v1

    if-ge v12, v2, :cond_3

    if-ne v3, v12, :cond_2

    goto :goto_6

    .line 565
    :cond_2
    aget-byte v2, v1, v12

    aput-byte v2, v4, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 567
    :cond_3
    :goto_6
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_b

    :pswitch_1c
    new-array v1, v12, [B

    const/4 v2, 0x0

    aput-byte v21, v1, v2

    const/16 v2, -0x35

    const/4 v3, 0x1

    aput-byte v2, v1, v3

    const/4 v2, 0x2

    aput-byte v3, v1, v2

    .line 524
    array-length v2, v8

    invoke-static {v1, v8, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->sndSimpleHondaPhone([B[BI)V

    goto/16 :goto_b

    :pswitch_1d
    new-array v1, v4, [B

    const/16 v2, 0x20

    .line 505
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([BB)V

    const-string v2, "BTPhone"

    .line 506
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const-string v3, "BTPhone"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    new-array v2, v12, [B

    aput-byte v21, v2, v4

    const/16 v3, -0x1f

    const/4 v4, 0x1

    aput-byte v3, v2, v4

    const/4 v3, 0x2

    aput-byte v14, v2, v3

    .line 508
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v3

    invoke-static {v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_b

    .line 572
    :pswitch_1e
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v8}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->string2UnicodeSMALL(Ljava/lang/String;)[B

    move-result-object v1

    const/16 v2, 0x22

    new-array v2, v2, [B

    const/4 v3, 0x4

    new-array v3, v3, [B

    const/4 v4, 0x0

    aput-byte v21, v3, v4

    const/16 v4, -0x77

    const/4 v5, 0x1

    aput-byte v4, v3, v5

    const/4 v4, 0x2

    aput-byte v12, v3, v4

    aput-byte v12, v3, v12

    .line 575
    invoke-static {v3, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v1

    const/4 v12, 0x0

    .line 576
    :goto_7
    array-length v3, v1

    if-ge v12, v3, :cond_4

    .line 577
    aget-byte v3, v1, v12

    aput-byte v3, v2, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 579
    :cond_4
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_b

    .line 480
    :cond_5
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    new-array v2, v15, [B

    const/4 v3, 0x0

    aput-byte v21, v2, v3

    const/4 v3, 0x1

    aput-byte v19, v2, v3

    const/4 v4, 0x2

    aput-byte v15, v2, v4

    aput-byte v17, v2, v12

    const/4 v4, 0x4

    aput-byte v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    .line 482
    invoke-static/range {p2 .. p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->phoneNum2UnicodeLittleExtra([B)[B

    move-result-object v1

    new-array v2, v4, [B

    const/4 v4, 0x0

    aput-byte v21, v2, v4

    const/16 v4, -0x38

    aput-byte v4, v2, v3

    const/16 v4, 0x10

    const/4 v5, 0x2

    aput-byte v4, v2, v5

    aput-byte v3, v2, v12

    .line 483
    invoke-static {v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    goto :goto_b

    :cond_6
    const/4 v5, 0x6

    const/4 v6, 0x7

    .line 513
    array-length v1, v8

    const/4 v2, 0x4

    add-int/2addr v1, v2

    int-to-byte v1, v1

    const/16 v2, 0x11

    if-nez v9, :cond_7

    const/4 v3, 0x1

    goto :goto_8

    :cond_7
    const/4 v3, 0x0

    .line 515
    :goto_8
    invoke-static {v2, v15, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->setIntByteWithBit(IIZ)I

    move-result v2

    int-to-byte v2, v2

    if-nez v10, :cond_8

    const/4 v3, 0x1

    goto :goto_9

    :cond_8
    const/4 v3, 0x0

    .line 516
    :goto_9
    invoke-static {v2, v5, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->setIntByteWithBit(IIZ)I

    move-result v2

    int-to-byte v2, v2

    new-array v3, v6, [B

    const/4 v4, 0x0

    aput-byte v4, v3, v4

    const/4 v4, 0x1

    aput-byte v4, v3, v4

    const/4 v6, 0x2

    aput-byte v1, v3, v6

    const/16 v1, 0x33

    aput-byte v1, v3, v12

    const/4 v1, 0x4

    aput-byte v2, v3, v1

    aput-byte v12, v3, v15

    aput-byte v4, v3, v5

    .line 518
    invoke-static {v3, v8}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v1

    .line 519
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto :goto_b

    :cond_9
    const/4 v5, 0x6

    const/4 v6, 0x7

    move v1, v2

    goto :goto_a

    :cond_a
    const/4 v5, 0x6

    const/4 v6, 0x7

    const/4 v1, 0x4

    :goto_a
    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte v2, v1, v2

    const/4 v3, 0x1

    aput-byte v2, v1, v3

    const/4 v2, 0x2

    aput-byte v6, v1, v2

    aput-byte v3, v1, v12

    .line 501
    invoke-static {v1, v8, v5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->sndVwSkodaPhone([B[BI)V

    .line 718
    :cond_b
    :goto_b
    :pswitch_1f
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    sget-object v2, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->SMALL_LCD_FUNCTION:Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getSharedBool(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 719
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$13;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$Util$SingleSpinMachine:[I

    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isYHT(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_3

    goto/16 :goto_d

    .line 728
    :pswitch_20
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->getInstance()Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;

    move-result-object v1

    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->KT:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    invoke-virtual {v1, v0, v2}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->clearAllPriIcont(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;)V

    .line 729
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "LCD_START_TIMER"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 730
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->getInstance()Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->getCurrentTimeString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "mm"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " BT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_lcdPrintfString(Landroid/content/Context;[B)[B

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->reportTempLcdInfor([BLandroid/content/Context;)V

    goto :goto_d

    .line 725
    :pswitch_21
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->getInstance()Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;

    move-result-object v1

    const-string v2, "INCOMING"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_lcdPrintfString(Landroid/content/Context;[B)[B

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->reportTempLcdInfor([BLandroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_d

    :catch_0
    move-exception v0

    goto :goto_c

    :cond_c
    move-object/from16 v13, p0

    goto :goto_d

    :catch_1
    move-exception v0

    move-object/from16 v13, p0

    .line 737
    :goto_c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_d
    :goto_d
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xd
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1e
        :pswitch_1e
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1c
        :pswitch_1d
        :pswitch_1c
        :pswitch_1c
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1a
        :pswitch_1a
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_20
    .end packed-switch
.end method

.method public reportBtOutGoingToCan(Landroid/content/Context;[BZZ)V
    .locals 25

    move-object/from16 v0, p1

    move-object/from16 v8, p2

    move/from16 v2, p3

    move/from16 v3, p4

    const/4 v9, 0x2

    .line 742
    sput v9, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->PhoneState:I

    const/4 v10, 0x0

    .line 743
    sput-boolean v10, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->isIncoming:Z

    const-string v1, "REPORT BT"

    const-string/jumbo v4, "reportBtOutGoingToCan"

    .line 744
    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "PhoneState"

    invoke-static {v1, v5, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 746
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "btState"

    invoke-static {v1, v5, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 747
    sput-byte v9, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->prevCallingSt:B

    .line 749
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    if-eqz v1, :cond_e

    if-eqz v8, :cond_e

    .line 751
    new-instance v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$5;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v11, p0

    :try_start_1
    invoke-direct {v1, v11, v8, v2, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$5;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;[BZZ)V

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface;->sendMsg(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface$CallBack;)V

    .line 758
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getFactoryCanType()I

    .line 759
    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isCanbusCmdPorting(Landroid/content/Context;)Z

    move-result v1

    const/16 v13, 0x40

    const/16 v16, 0xb

    const/16 v17, -0x3b

    const/16 v18, -0x40

    const/16 v5, 0xa

    const/4 v15, 0x6

    const/4 v14, 0x5

    const/4 v6, 0x4

    const/16 v20, 0x16

    const/4 v7, 0x3

    const/4 v12, 0x1

    if-eqz v1, :cond_0

    const-string v1, "BT_CALLOUT"

    .line 760
    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$13;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v4

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    move v14, v6

    move v13, v7

    const/16 v7, 0x8

    const/16 v15, 0x9

    goto/16 :goto_3

    .line 841
    :pswitch_1
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    new-array v2, v15, [B

    aput-byte v20, v2, v10

    const/16 v3, -0x39

    aput-byte v3, v2, v12

    aput-byte v10, v2, v9

    aput-byte v9, v2, v7

    aput-byte v10, v2, v6

    aput-byte v10, v2, v14

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    const/16 v1, -0x36

    .line 842
    invoke-static {v1, v8}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->sndPhoneNumberByUnicode(B[B)V

    goto :goto_0

    .line 831
    :pswitch_2
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    new-array v2, v5, [B

    aput-byte v20, v2, v10

    aput-byte v18, v2, v12

    aput-byte v14, v2, v9

    aput-byte v13, v2, v7

    aput-byte v7, v2, v6

    aput-byte v10, v2, v14

    aput-byte v10, v2, v15

    const/4 v3, 0x7

    aput-byte v10, v2, v3

    const/16 v21, 0x8

    aput-byte v10, v2, v21

    const/16 v19, 0x9

    aput-byte v10, v2, v19

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    .line 832
    invoke-static/range {p2 .. p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->sndToyotaSimplePhone([B)V

    goto :goto_1

    :pswitch_3
    const/16 v19, 0x9

    const/16 v21, 0x8

    .line 827
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    const/4 v2, 0x7

    new-array v3, v2, [B

    aput-byte v20, v3, v10

    const/16 v2, -0x7c

    aput-byte v2, v3, v12

    aput-byte v14, v3, v9

    aput-byte v10, v3, v7

    aput-byte v10, v3, v6

    aput-byte v10, v3, v14

    aput-byte v10, v3, v15

    invoke-virtual {v1, v3}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    :goto_1
    move v14, v6

    move v13, v7

    move/from16 v15, v19

    move/from16 v7, v21

    goto/16 :goto_3

    :pswitch_4
    const/16 v19, 0x9

    const/16 v21, 0x8

    const/16 v1, 0x12

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p2

    move v13, v5

    move/from16 v5, v22

    move v14, v6

    move/from16 v15, v19

    move/from16 v6, v23

    move v13, v7

    move/from16 v7, v24

    .line 824
    invoke-static/range {v1 .. v7}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->sndSimplePsaPhoneNum(BZZ[BBBB)V

    :goto_2
    const/16 v7, 0x8

    goto/16 :goto_3

    :pswitch_5
    move v14, v6

    move v13, v7

    const/16 v15, 0x9

    .line 818
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    new-array v2, v13, [B

    aput-byte v20, v2, v10

    aput-byte v15, v2, v12

    aput-byte v16, v2, v9

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    .line 819
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    new-array v2, v14, [B

    aput-byte v20, v2, v10

    aput-byte v15, v2, v12

    const/4 v3, 0x7

    aput-byte v3, v2, v9

    aput-byte v13, v2, v13

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto :goto_2

    :pswitch_6
    move v14, v6

    move v13, v7

    const/16 v15, 0x9

    .line 815
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    const/16 v2, 0xa

    new-array v3, v2, [B

    aput-byte v20, v3, v10

    const/16 v2, -0x7e

    aput-byte v2, v3, v12

    const/4 v2, 0x5

    aput-byte v2, v3, v9

    aput-byte v13, v3, v13

    aput-byte v13, v3, v14

    aput-byte v10, v3, v2

    const/4 v2, 0x6

    aput-byte v10, v3, v2

    const/4 v2, 0x7

    aput-byte v10, v3, v2

    const/16 v7, 0x8

    aput-byte v10, v3, v7

    aput-byte v10, v3, v15

    invoke-virtual {v1, v3}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_3

    :pswitch_7
    move v14, v6

    move v13, v7

    const/16 v7, 0x8

    const/16 v15, 0x9

    .line 811
    invoke-static {v12, v9, v10, v10, v10}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->sndHondaXinbasPhone(ZBBBB)V

    goto/16 :goto_3

    :pswitch_8
    move v14, v6

    move v13, v7

    const/16 v7, 0x8

    const/16 v15, 0x9

    .line 807
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->getInstance()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;

    move-result-object v1

    invoke-virtual {v1, v0, v2, v12, v9}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->reportSimpleHondaAccordDeviceStatus(Landroid/content/Context;ZZB)V

    new-array v1, v14, [B

    aput-byte v20, v1, v10

    const/16 v2, -0x35

    aput-byte v2, v1, v12

    aput-byte v12, v1, v9

    aput-byte v12, v1, v13

    .line 808
    array-length v2, v8

    add-int/2addr v2, v12

    invoke-static {v1, v8, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->sndSimpleHondaPhone([B[BI)V

    goto/16 :goto_3

    :pswitch_9
    move v14, v6

    move v13, v7

    const/16 v7, 0x8

    const/16 v15, 0x9

    new-array v1, v13, [B

    aput-byte v20, v1, v10

    const/16 v2, -0x35

    aput-byte v2, v1, v12

    aput-byte v12, v1, v9

    .line 804
    array-length v2, v8

    invoke-static {v1, v8, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->sndSimpleHondaPhone([B[BI)V

    goto/16 :goto_3

    :pswitch_a
    move v14, v6

    move v13, v7

    const/16 v7, 0x8

    const/16 v15, 0x9

    .line 800
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    const/4 v2, 0x7

    new-array v3, v2, [B

    aput-byte v20, v3, v10

    const/16 v2, -0x7c

    aput-byte v2, v3, v12

    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_XINBAS_MEDIA_TYPE;->MID_PHONE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_XINBAS_MEDIA_TYPE;

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_XINBAS_MEDIA_TYPE;->ordinal()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v3, v9

    const/16 v2, 0x20

    aput-byte v2, v3, v13

    aput-byte v10, v3, v14

    const/4 v2, 0x5

    aput-byte v10, v3, v2

    const/4 v2, 0x6

    aput-byte v10, v3, v2

    invoke-virtual {v1, v3}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_3

    :pswitch_b
    move v14, v6

    move v13, v7

    const/16 v7, 0x8

    const/16 v15, 0x9

    .line 794
    invoke-static/range {p2 .. p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->sndVwMqbPhoneInfo([B)V

    .line 795
    invoke-static {v3, v2, v12, v9}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->sndVwMqbPhoneStatus(ZZZB)V

    goto/16 :goto_3

    :pswitch_c
    move v14, v6

    move v13, v7

    const/16 v7, 0x8

    const/16 v15, 0x9

    .line 789
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    const/16 v2, 0xa

    new-array v3, v2, [B

    aput-byte v20, v3, v10

    aput-byte v18, v3, v12

    const/16 v2, 0x42

    aput-byte v2, v3, v9

    const/4 v2, -0x1

    aput-byte v2, v3, v13

    aput-byte v10, v3, v14

    const/4 v2, 0x5

    aput-byte v10, v3, v2

    const/4 v2, 0x6

    aput-byte v10, v3, v2

    const/4 v2, 0x7

    aput-byte v10, v3, v2

    aput-byte v10, v3, v7

    aput-byte v10, v3, v15

    invoke-virtual {v1, v3}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    .line 790
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    new-array v2, v13, [B

    aput-byte v20, v2, v10

    const/16 v3, 0x70

    aput-byte v3, v2, v12

    const/16 v3, 0x10

    aput-byte v3, v2, v9

    invoke-static/range {p2 .. p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->phoneNum2UnicodeBig([B)[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_3

    :pswitch_d
    move v14, v6

    move v13, v7

    const/16 v7, 0x8

    const/16 v15, 0x9

    .line 786
    invoke-static {v12, v8}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->sndNissanPhone(B[B)V

    goto/16 :goto_3

    :pswitch_e
    move v14, v6

    move v13, v7

    const/16 v7, 0x8

    const/16 v15, 0x9

    .line 779
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->PHONE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;

    const/16 v2, 0xff

    invoke-static {v0, v1, v2, v10, v10}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportSimpleMediaInfo(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;IZZ)V

    .line 780
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    new-array v2, v7, [B

    aput-byte v20, v2, v10

    const/16 v3, -0x3d

    aput-byte v3, v2, v12

    aput-byte v10, v2, v9

    aput-byte v10, v2, v13

    aput-byte v10, v2, v14

    const/4 v3, 0x5

    aput-byte v10, v2, v3

    const/4 v3, 0x6

    aput-byte v10, v2, v3

    const/4 v3, 0x7

    aput-byte v10, v2, v3

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    new-array v1, v13, [B

    aput-byte v20, v1, v10

    aput-byte v17, v1, v12

    aput-byte v9, v1, v9

    const/4 v2, 0x6

    .line 781
    invoke-static {v1, v8, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->sndVwSkodaPhone([B[BI)V

    goto :goto_3

    :pswitch_f
    move v14, v6

    move v13, v7

    const/16 v7, 0x8

    const/16 v15, 0x9

    new-array v1, v13, [B

    aput-byte v20, v1, v10

    const/16 v2, -0x65

    aput-byte v2, v1, v12

    aput-byte v9, v1, v9

    .line 766
    invoke-static/range {p2 .. p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->phoneNum2UnicodeLittleExtra([B)[B

    move-result-object v2

    .line 767
    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v1

    const/16 v2, 0x1b

    .line 768
    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->makeBytesFixedLength([BI)[B

    move-result-object v1

    .line 769
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto :goto_3

    :cond_0
    move v14, v6

    move v13, v7

    const/16 v7, 0x8

    const/16 v15, 0x9

    .line 846
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$13;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v4

    aget v1, v1, v4

    if-eq v1, v13, :cond_5

    if-eq v1, v14, :cond_5

    if-eq v1, v15, :cond_2

    const/16 v4, 0xa

    if-eq v1, v4, :cond_2

    const/16 v4, 0x17

    if-eq v1, v4, :cond_1

    const/16 v4, 0x18

    if-eq v1, v4, :cond_1

    const/16 v4, 0x3c

    if-eq v1, v4, :cond_1

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    :goto_3
    move/from16 v24, v7

    goto/16 :goto_6

    .line 862
    :pswitch_10
    array-length v1, v8

    add-int/2addr v1, v12

    int-to-byte v1, v1

    new-array v2, v14, [B

    aput-byte v10, v2, v10

    aput-byte v13, v2, v12

    aput-byte v1, v2, v9

    aput-byte v12, v2, v13

    .line 864
    invoke-static {v2, v8}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v1

    .line 865
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto :goto_3

    :cond_1
    const/16 v1, 0x12

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v23, 0x0

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p2

    move/from16 v24, v7

    move/from16 v7, v23

    .line 883
    invoke-static/range {v1 .. v7}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->sndSimplePsaPhoneNum(BZZ[BBBB)V

    goto :goto_6

    :cond_2
    move/from16 v24, v7

    .line 870
    array-length v1, v8

    add-int/2addr v1, v14

    int-to-byte v1, v1

    if-nez v2, :cond_3

    move v2, v12

    goto :goto_4

    :cond_3
    move v2, v10

    :goto_4
    const/16 v4, 0x12

    const/4 v5, 0x5

    .line 872
    invoke-static {v4, v5, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->setIntByteWithBit(IIZ)I

    move-result v2

    int-to-byte v2, v2

    if-nez v3, :cond_4

    move v3, v12

    goto :goto_5

    :cond_4
    move v3, v10

    :goto_5
    const/4 v4, 0x6

    .line 873
    invoke-static {v2, v4, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->setIntByteWithBit(IIZ)I

    move-result v2

    int-to-byte v2, v2

    const/4 v3, 0x7

    new-array v4, v3, [B

    aput-byte v10, v4, v10

    aput-byte v12, v4, v12

    aput-byte v1, v4, v9

    const/16 v1, 0x33

    aput-byte v1, v4, v13

    aput-byte v2, v4, v14

    const/4 v1, 0x5

    aput-byte v13, v4, v1

    const/4 v1, 0x6

    aput-byte v12, v4, v1

    .line 875
    invoke-static {v4, v8}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v1

    .line 876
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto :goto_6

    :cond_5
    move/from16 v24, v7

    new-array v1, v14, [B

    aput-byte v10, v1, v10

    aput-byte v10, v1, v12

    const/4 v2, 0x7

    aput-byte v2, v1, v9

    aput-byte v9, v1, v13

    const/4 v2, 0x6

    .line 849
    invoke-static {v1, v8, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->sndVwSkodaPhone([B[BI)V

    .line 896
    :goto_6
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$13;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v13, :cond_d

    const/16 v2, 0x1a

    if-eq v1, v2, :cond_c

    const/16 v2, 0x11

    if-eq v1, v2, :cond_a

    const/16 v2, 0x12

    if-eq v1, v2, :cond_a

    const/16 v2, 0x3d

    if-eq v1, v2, :cond_9

    const/16 v2, 0x3e

    if-eq v1, v2, :cond_8

    const/16 v2, 0xc

    packed-switch v1, :pswitch_data_3

    const/16 v3, 0xe

    packed-switch v1, :pswitch_data_4

    .line 1108
    array-length v1, v8

    add-int/2addr v1, v9

    int-to-byte v1, v1

    const/4 v2, 0x5

    new-array v2, v2, [B

    aput-byte v10, v2, v10

    aput-byte v9, v2, v12

    aput-byte v1, v2, v9

    aput-byte v13, v2, v13

    aput-byte v12, v2, v14

    .line 1110
    invoke-static {v2, v8}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v1

    .line 1111
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_a

    :pswitch_11
    new-array v1, v9, [B

    aput-byte v20, v1, v10

    const/16 v2, -0x7d

    aput-byte v2, v1, v12

    const-string v2, "CALLING"

    .line 1103
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v1

    .line 1104
    invoke-static {v1, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->makeBytesFixedLength([BI)[B

    move-result-object v1

    .line 1105
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_a

    .line 1088
    :pswitch_12
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    new-array v2, v14, [B

    aput-byte v20, v2, v10

    aput-byte v17, v2, v12

    aput-byte v10, v2, v9

    aput-byte v9, v2, v13

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    new-array v1, v14, [B

    aput-byte v20, v1, v10

    const/16 v2, -0x36

    aput-byte v2, v1, v12

    aput-byte v14, v1, v9

    const/16 v2, 0x10

    aput-byte v2, v1, v13

    .line 1090
    invoke-static/range {p2 .. p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->phoneNum2UnicodeLittleExtra([B)[B

    move-result-object v2

    .line 1091
    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v1

    .line 1092
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_a

    :pswitch_13
    const/16 v1, -0x40

    const/4 v2, 0x5

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v6, p2

    .line 1079
    invoke-static/range {v1 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->sndThrumpchiRaisePhone(BBIII[B)V

    goto/16 :goto_a

    .line 1068
    :pswitch_14
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    new-array v2, v14, [B

    aput-byte v20, v2, v10

    aput-byte v18, v2, v12

    const/4 v3, 0x5

    aput-byte v3, v2, v9

    const/16 v3, 0x40

    aput-byte v3, v2, v13

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    .line 1069
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    new-array v2, v14, [B

    aput-byte v20, v2, v10

    aput-byte v17, v2, v12

    aput-byte v10, v2, v9

    aput-byte v9, v2, v13

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_a

    :pswitch_15
    new-array v1, v14, [B

    aput-byte v20, v1, v10

    aput-byte v17, v1, v12

    aput-byte v13, v1, v9

    aput-byte v12, v1, v13

    .line 1064
    invoke-static {v1, v8}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->sndGeneralPhone([B[B)V

    goto/16 :goto_a

    .line 1059
    :pswitch_16
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    new-array v2, v2, [B

    aput-byte v20, v2, v10

    aput-byte v18, v2, v12

    const/4 v3, 0x5

    aput-byte v3, v2, v9

    const/4 v4, -0x1

    aput-byte v4, v2, v13

    aput-byte v10, v2, v14

    aput-byte v10, v2, v3

    const/4 v3, 0x6

    aput-byte v10, v2, v3

    const/4 v3, 0x7

    aput-byte v10, v2, v3

    aput-byte v10, v2, v24

    aput-byte v10, v2, v15

    const/16 v3, 0xa

    aput-byte v10, v2, v3

    aput-byte v10, v2, v16

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    .line 1060
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    new-array v2, v13, [B

    aput-byte v20, v2, v10

    const/16 v3, -0x3d

    aput-byte v3, v2, v12

    aput-byte v13, v2, v9

    invoke-static {v2, v8}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_a

    :pswitch_17
    const/4 v1, 0x5

    new-array v2, v1, [B

    aput-byte v20, v2, v10

    aput-byte v18, v2, v12

    aput-byte v1, v2, v9

    aput-byte v13, v2, v13

    aput-byte v12, v2, v14

    .line 1052
    invoke-static {v2, v8}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->sndGeneralPhone([B[B)V

    goto/16 :goto_a

    .line 1039
    :pswitch_18
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "action_qz_oringinal_screen_rep_0x83_status"

    .line 1040
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "qz_src_mode_status"

    const/4 v3, 0x7

    .line 1041
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 1042
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v1, "QZ"

    const-string v2, "qz_src_mode_status snd android"

    .line 1043
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :pswitch_19
    const/16 v1, 0xf

    new-array v1, v1, [B

    aput-byte v20, v1, v10

    const/16 v4, -0x6f

    aput-byte v4, v1, v12

    const/16 v4, 0xa

    aput-byte v4, v1, v9

    aput-byte v10, v1, v13

    aput-byte v10, v1, v14

    const/4 v4, 0x5

    aput-byte v10, v1, v4

    const/4 v4, 0x6

    aput-byte v10, v1, v4

    const/4 v4, 0x7

    aput-byte v10, v1, v4

    aput-byte v10, v1, v24

    aput-byte v10, v1, v15

    const/16 v4, 0xa

    aput-byte v10, v1, v4

    aput-byte v10, v1, v16

    aput-byte v10, v1, v2

    const/16 v2, 0xd

    aput-byte v10, v1, v2

    aput-byte v10, v1, v3

    .line 1009
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    new-array v1, v9, [B

    const/16 v2, -0x33

    aput-byte v2, v1, v10

    aput-byte v9, v1, v12

    .line 1011
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v2

    const/16 v3, 0x1d

    invoke-static {v1, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->CompensateZero([BI)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_a

    .line 993
    :pswitch_1a
    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->getMpegplayerManager(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->isDiscExist()Z

    move-result v1

    invoke-static {v10, v10, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->setIntByteWithBit(IIZ)I

    move-result v1

    const/16 v4, 0x10

    new-array v4, v4, [B

    aput-byte v20, v4, v10

    const/16 v5, -0x6f

    aput-byte v5, v4, v12

    const/16 v5, 0xa

    aput-byte v5, v4, v9

    int-to-byte v1, v1

    aput-byte v1, v4, v13

    aput-byte v10, v4, v14

    const/4 v1, 0x5

    aput-byte v10, v4, v1

    const/4 v1, 0x6

    aput-byte v10, v4, v1

    const/4 v1, 0x7

    aput-byte v10, v4, v1

    aput-byte v10, v4, v24

    aput-byte v10, v4, v15

    const/16 v1, 0xa

    aput-byte v10, v4, v1

    aput-byte v10, v4, v16

    aput-byte v10, v4, v2

    const/16 v1, 0xd

    aput-byte v10, v4, v1

    aput-byte v10, v4, v3

    const/16 v1, 0xf

    aput-byte v10, v4, v1

    .line 995
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_a

    :pswitch_1b
    new-array v1, v13, [B

    aput-byte v20, v1, v10

    const/16 v2, -0x2e

    aput-byte v2, v1, v12

    const/16 v2, 0xa

    aput-byte v2, v1, v9

    const-string v2, "            "

    .line 972
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v1

    .line 973
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_a

    .line 945
    :pswitch_1c
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v8}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->string2UnicodeBIG(Ljava/lang/String;)[B

    move-result-object v1

    new-array v2, v13, [B

    aput-byte v20, v2, v10

    const/16 v3, -0x70

    aput-byte v3, v2, v12

    aput-byte v24, v2, v9

    const/16 v3, 0x21

    new-array v4, v3, [B

    .line 948
    invoke-static {v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v1

    .line 949
    :goto_7
    array-length v2, v1

    if-ge v10, v2, :cond_7

    if-ne v3, v10, :cond_6

    goto :goto_8

    .line 951
    :cond_6
    aget-byte v2, v1, v10

    aput-byte v2, v4, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 953
    :cond_7
    :goto_8
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_a

    :pswitch_1d
    new-array v1, v13, [B

    aput-byte v20, v1, v10

    const/16 v2, -0x35

    aput-byte v2, v1, v12

    aput-byte v12, v1, v9

    .line 1048
    array-length v2, v8

    invoke-static {v1, v8, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->sndSimpleHondaPhone([B[BI)V

    goto/16 :goto_a

    :pswitch_1e
    new-array v1, v2, [B

    const/16 v2, 0x20

    .line 919
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([BB)V

    const-string v2, "BTPhone"

    .line 920
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const-string v3, "BTPhone"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    invoke-static {v2, v10, v1, v10, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    new-array v2, v13, [B

    aput-byte v20, v2, v10

    const/16 v3, -0x1f

    aput-byte v3, v2, v12

    const/16 v3, 0xa

    aput-byte v3, v2, v9

    .line 922
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v3

    invoke-static {v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_a

    .line 1083
    :cond_8
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->getInstance()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->isMpegDiscExist(Landroid/content/Context;)I

    move-result v1

    int-to-byte v1, v1

    .line 1084
    invoke-static/range {p2 .. p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->phoneNum2Ascii([B)[B

    move-result-object v2

    invoke-static {v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->sndBuickEnvlavePhone([BB)V

    goto/16 :goto_a

    .line 1073
    :cond_9
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    new-array v2, v14, [B

    aput-byte v20, v2, v10

    const/16 v3, -0x3c

    aput-byte v3, v2, v12

    const/4 v3, 0x5

    aput-byte v3, v2, v9

    aput-byte v10, v2, v13

    invoke-static {v2, v8}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    .line 1074
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    new-array v2, v3, [B

    aput-byte v20, v2, v10

    aput-byte v17, v2, v12

    aput-byte v12, v2, v9

    aput-byte v10, v2, v13

    aput-byte v10, v2, v14

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto :goto_a

    .line 958
    :cond_a
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v8}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->string2UnicodeSMALL(Ljava/lang/String;)[B

    move-result-object v1

    const/16 v2, 0x22

    new-array v2, v2, [B

    new-array v3, v14, [B

    aput-byte v20, v3, v10

    const/16 v4, -0x77

    aput-byte v4, v3, v12

    aput-byte v13, v3, v9

    aput-byte v13, v3, v13

    .line 961
    invoke-static {v3, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v1

    .line 962
    :goto_9
    array-length v3, v1

    if-ge v10, v3, :cond_b

    .line 963
    aget-byte v3, v1, v10

    aput-byte v3, v2, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    .line 965
    :cond_b
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto :goto_a

    .line 899
    :cond_c
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    const/4 v2, 0x5

    new-array v3, v2, [B

    aput-byte v20, v3, v10

    aput-byte v18, v3, v12

    aput-byte v2, v3, v9

    const/16 v2, 0x40

    aput-byte v2, v3, v13

    aput-byte v13, v3, v14

    invoke-virtual {v1, v3}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    .line 900
    invoke-static/range {p2 .. p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->phoneNum2UnicodeLittleExtra([B)[B

    move-result-object v1

    new-array v2, v14, [B

    aput-byte v20, v2, v10

    const/16 v3, -0x38

    aput-byte v3, v2, v12

    const/16 v3, 0x10

    aput-byte v3, v2, v9

    aput-byte v12, v2, v13

    .line 901
    invoke-static {v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    .line 1117
    :cond_d
    :goto_a
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    sget-object v2, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->SMALL_LCD_FUNCTION:Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getSharedBool(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1118
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$13;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$Util$SingleSpinMachine:[I

    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isYHT(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_5

    goto/16 :goto_c

    .line 1127
    :pswitch_1f
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->getInstance()Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;

    move-result-object v1

    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->KT:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    invoke-virtual {v1, v0, v2}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->clearAllPriIcont(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;)V

    .line 1128
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "LCD_START_TIMER"

    invoke-static {v1, v2, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1129
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->getInstance()Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->getCurrentTimeString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "mm"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " BT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_lcdPrintfString(Landroid/content/Context;[B)[B

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->reportTempLcdInfor([BLandroid/content/Context;)V

    goto :goto_c

    .line 1124
    :pswitch_20
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->getInstance()Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;

    move-result-object v1

    const-string v2, " DIALING"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_lcdPrintfString(Landroid/content/Context;[B)[B

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->reportTempLcdInfor([BLandroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_c

    :catch_0
    move-exception v0

    goto :goto_b

    :cond_e
    move-object/from16 v11, p0

    goto :goto_c

    :catch_1
    move-exception v0

    move-object/from16 v11, p0

    .line 1136
    :goto_b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_f
    :goto_c
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xd
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1f
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1c
        :pswitch_1e
        :pswitch_1d
        :pswitch_1d
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x26
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1b
        :pswitch_1b
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_1f
    .end packed-switch
.end method

.method public reportBtStatusToCan(ILandroid/content/Context;[BZZZZIILandroid/os/Bundle;)V
    .locals 29

    move/from16 v0, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move/from16 v14, p4

    move/from16 v15, p5

    move/from16 v11, p6

    move/from16 v10, p7

    const-string v1, "REPORT BT"

    const-string/jumbo v2, "reportBtStatusToCan"

    .line 1822
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1823
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reportBtStatusToCan, isHfpConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", callStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isCallingFlag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isAudioTransferTowardsAG: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", phoneNumber: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "REPORT BT"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    if-eqz v1, :cond_40

    .line 1827
    new-instance v9, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$9;

    move-object v1, v9

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object v13, v9

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v1 .. v11}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$9;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;I[BZZZZIILandroid/os/Bundle;)V

    invoke-static {v12, v13}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface;->sendMsg(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface$CallBack;)V

    .line 1834
    invoke-static/range {p2 .. p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isCanbusCmdPorting(Landroid/content/Context;)Z

    move-result v1

    const/16 v16, -0x7e

    const/16 v17, -0x1

    const/16 v4, 0xa

    const/16 v3, 0x9

    const/4 v2, 0x7

    const/4 v10, 0x6

    const/4 v13, 0x4

    const/16 v18, 0x16

    const/4 v8, 0x2

    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v11, 0x1

    const/4 v7, 0x0

    if-eqz v1, :cond_2a

    .line 1836
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$13;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v22

    aget v1, v1, v22

    if-eq v1, v11, :cond_28

    if-eq v1, v8, :cond_28

    if-eq v1, v5, :cond_26

    if-eq v1, v13, :cond_26

    if-eq v1, v6, :cond_2

    if-eq v1, v2, :cond_2

    const/16 v9, 0x1b

    if-eq v1, v9, :cond_22

    if-eq v1, v3, :cond_1f

    if-eq v1, v4, :cond_1d

    const/16 v9, 0x17

    if-eq v1, v9, :cond_19

    const/16 v9, 0x18

    if-eq v1, v9, :cond_19

    const/16 v9, 0x20

    if-eq v1, v9, :cond_13

    const/16 v9, 0x21

    if-eq v1, v9, :cond_16

    const/16 v9, 0x24

    if-eq v1, v9, :cond_14

    const/16 v9, 0x25

    if-eq v1, v9, :cond_13

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    :goto_0
    move-object/from16 v9, p3

    move/from16 v13, p6

    move/from16 v24, v2

    move v8, v7

    :goto_1
    const/16 v4, 0x8

    const/16 v19, 0xb

    :goto_2
    const/16 v21, 0xc

    :goto_3
    move/from16 v7, p7

    move/from16 v28, v6

    move v6, v5

    move/from16 v5, v28

    goto/16 :goto_14

    .line 2027
    :pswitch_0
    invoke-static {v14, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->noNeedRepBtStatus(ZI)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2030
    :cond_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    new-array v9, v2, [B

    aput-byte v18, v9, v7

    const/16 v23, -0x7c

    aput-byte v23, v9, v11

    aput-byte v6, v9, v8

    aput-byte v7, v9, v5

    aput-byte v7, v9, v13

    aput-byte v7, v9, v6

    aput-byte v7, v9, v10

    invoke-virtual {v1, v9}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto :goto_0

    .line 1876
    :pswitch_1
    invoke-static {v14, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->noNeedRepBtStatus(ZI)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 1879
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v9, "canbus_cur_vol"

    invoke-static {v1, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    int-to-byte v1, v1

    .line 1880
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v9

    const/16 v4, 0xe

    new-array v3, v4, [B

    aput-byte v18, v3, v7

    const/16 v4, 0xc

    aput-byte v4, v3, v11

    const/16 v4, 0x40

    aput-byte v4, v3, v8

    aput-byte v1, v3, v5

    const/16 v1, 0x8

    aput-byte v1, v3, v13

    aput-byte v7, v3, v6

    aput-byte v7, v3, v10

    aput-byte v7, v3, v2

    aput-byte v7, v3, v1

    const/16 v1, 0x9

    aput-byte v7, v3, v1

    const/16 v1, 0xa

    aput-byte v7, v3, v1

    const/16 v1, 0xb

    aput-byte v7, v3, v1

    const/16 v1, 0xc

    aput-byte v7, v3, v1

    const/16 v1, 0xd

    aput-byte v7, v3, v1

    invoke-virtual {v9, v3}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto :goto_4

    :cond_2
    :pswitch_2
    move-object/from16 v9, p3

    move/from16 v13, p6

    move/from16 v24, v2

    move v8, v7

    const/16 v19, 0xb

    const/16 v21, 0xc

    move/from16 v7, p7

    move/from16 v28, v6

    move v6, v5

    move/from16 v5, v28

    goto/16 :goto_13

    .line 2041
    :pswitch_3
    invoke-static {v14, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->noNeedRepBtStatus(ZI)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_4

    .line 2044
    :cond_3
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE;->PHONE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE;

    const-string v3, "            "

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v12, v1, v7, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportHiworldMideaInfo(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE;Z[B)V

    goto :goto_4

    .line 1885
    :pswitch_4
    invoke-static {v14, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->noNeedRepBtStatus(ZI)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_4
    move-object/from16 v9, p3

    move/from16 v13, p6

    move/from16 v24, v2

    move v8, v7

    const/16 v3, 0x9

    goto/16 :goto_1

    .line 1888
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "canbus_cur_vol"

    invoke-static {v1, v3, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    int-to-byte v1, v1

    if-lez v1, :cond_5

    move v4, v13

    goto :goto_5

    :cond_5
    const/16 v4, 0xc

    :goto_5
    int-to-byte v1, v4

    if-eqz v15, :cond_6

    and-int/lit16 v1, v1, 0xfb

    goto :goto_6

    :cond_6
    or-int/2addr v1, v13

    :goto_6
    int-to-byte v1, v1

    .line 1892
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v3

    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->BENZ_B200_LUZHENG:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    if-ne v3, v4, :cond_7

    xor-int/lit8 v1, v1, 0x4

    int-to-byte v1, v1

    :cond_7
    const/16 v3, 0xb

    new-array v4, v3, [B

    aput-byte v18, v4, v7

    aput-byte v16, v4, v11

    const/16 v3, 0x9

    aput-byte v3, v4, v8

    aput-byte v17, v4, v5

    aput-byte v17, v4, v13

    aput-byte v17, v4, v6

    aput-byte v17, v4, v10

    aput-byte v17, v4, v2

    const/16 v3, 0x8

    aput-byte v1, v4, v3

    const/16 v1, 0x9

    aput-byte v17, v4, v1

    const/16 v1, 0xa

    aput-byte v17, v4, v1

    .line 1897
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "currentReport"

    invoke-static {v4, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v3, v9}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1898
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    if-eqz v15, :cond_9

    move-object/from16 v9, p3

    .line 1901
    array-length v1, v9

    const/16 v4, 0xc

    if-gt v1, v4, :cond_8

    .line 1902
    array-length v1, v9

    const/16 v3, 0x10

    or-int/2addr v1, v3

    int-to-byte v1, v1

    goto :goto_7

    :cond_8
    const/16 v1, 0x1c

    :goto_7
    new-array v3, v5, [B

    aput-byte v18, v3, v7

    const/16 v21, -0x7d

    aput-byte v21, v3, v11

    aput-byte v1, v3, v8

    .line 1906
    invoke-static {v3, v9}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v1

    .line 1907
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto :goto_8

    :cond_9
    move-object/from16 v9, p3

    const/16 v4, 0xc

    goto :goto_8

    :pswitch_5
    move-object/from16 v9, p3

    const/16 v4, 0xc

    if-nez v15, :cond_a

    if-eqz v14, :cond_a

    .line 2009
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    new-array v3, v5, [B

    aput-byte v18, v3, v7

    const/16 v21, 0x9

    aput-byte v21, v3, v11

    const/16 v19, 0xb

    aput-byte v19, v3, v8

    invoke-virtual {v1, v3}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    .line 2010
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    new-array v3, v13, [B

    aput-byte v18, v3, v7

    const/16 v21, 0x9

    aput-byte v21, v3, v11

    const/16 v19, 0xb

    aput-byte v19, v3, v8

    aput-byte v13, v3, v5

    invoke-virtual {v1, v3}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    :goto_8
    move/from16 v13, p6

    move/from16 v24, v2

    move/from16 v21, v4

    move v8, v7

    const/16 v3, 0x9

    const/16 v4, 0x8

    const/16 v19, 0xb

    goto/16 :goto_3

    :cond_a
    if-nez v15, :cond_b

    if-nez v14, :cond_b

    .line 2012
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    new-array v3, v13, [B

    aput-byte v18, v3, v7

    const/16 v21, 0x9

    aput-byte v21, v3, v11

    const/16 v19, 0xb

    aput-byte v19, v3, v8

    aput-byte v6, v3, v5

    invoke-virtual {v1, v3}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto :goto_9

    :cond_b
    const/16 v19, 0xb

    :goto_9
    move/from16 v13, p6

    move/from16 v24, v2

    move/from16 v21, v4

    move v8, v7

    const/16 v3, 0x9

    const/16 v4, 0x8

    goto/16 :goto_3

    :pswitch_6
    move-object/from16 v9, p3

    const/16 v4, 0xc

    const/16 v19, 0xb

    if-nez v15, :cond_c

    if-eqz v14, :cond_c

    .line 2002
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    const/16 v3, 0xa

    new-array v4, v3, [B

    aput-byte v18, v4, v7

    aput-byte v16, v4, v11

    aput-byte v6, v4, v8

    aput-byte v5, v4, v5

    aput-byte v11, v4, v13

    aput-byte v7, v4, v6

    aput-byte v7, v4, v10

    aput-byte v7, v4, v2

    const/16 v3, 0x8

    aput-byte v7, v4, v3

    const/16 v3, 0x9

    aput-byte v7, v4, v3

    invoke-virtual {v1, v4}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    move/from16 v13, p6

    move/from16 v24, v2

    move v8, v7

    const/16 v3, 0x9

    const/16 v4, 0x8

    goto/16 :goto_2

    :cond_c
    if-nez v14, :cond_d

    .line 2004
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    const/16 v4, 0xa

    new-array v3, v4, [B

    aput-byte v18, v3, v7

    aput-byte v16, v3, v11

    aput-byte v6, v3, v8

    aput-byte v5, v3, v5

    aput-byte v7, v3, v13

    aput-byte v7, v3, v6

    aput-byte v7, v3, v10

    aput-byte v7, v3, v2

    const/16 v20, 0x8

    aput-byte v7, v3, v20

    const/16 v23, 0x9

    aput-byte v7, v3, v23

    invoke-virtual {v1, v3}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto :goto_b

    :cond_d
    const/16 v20, 0x8

    move/from16 v13, p6

    move/from16 v24, v2

    move v8, v7

    move/from16 v4, v20

    const/16 v3, 0x9

    goto/16 :goto_2

    :pswitch_7
    move-object/from16 v9, p3

    move/from16 v23, v3

    const/16 v19, 0xb

    const/16 v20, 0x8

    if-nez v15, :cond_e

    .line 1978
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->destroyTsPerSec()V

    .line 1979
    invoke-static {v11, v7, v7, v7, v7}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->sndHondaXinbasPhone(ZBBBB)V

    goto :goto_a

    :cond_e
    new-array v1, v5, [B

    aput-byte v18, v1, v7

    aput-byte v16, v1, v11

    aput-byte v6, v1, v8

    .line 1981
    invoke-static {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->sndPhoneMediaPerSec([B)V

    :goto_a
    if-nez v14, :cond_f

    .line 1984
    invoke-static {v7, v7, v7, v7, v7}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->sndHondaXinbasPhone(ZBBBB)V

    :cond_f
    :goto_b
    move/from16 v13, p6

    move/from16 v24, v2

    goto :goto_c

    :pswitch_8
    move-object/from16 v9, p3

    move/from16 v23, v3

    const/16 v19, 0xb

    const/16 v20, 0x8

    if-nez v14, :cond_10

    .line 1951
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->getInstance()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;

    move-result-object v1

    move/from16 v3, p6

    invoke-virtual {v1, v12, v3, v7, v7}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->reportSimpleHondaAccordDeviceStatus(Landroid/content/Context;ZZB)V

    move/from16 v24, v2

    move v13, v3

    :goto_c
    move v8, v7

    move/from16 v4, v20

    move/from16 v3, v23

    goto/16 :goto_2

    :cond_10
    move/from16 v3, p6

    if-nez v15, :cond_11

    .line 1954
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "PhoneState"

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1955
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->getInstance()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;

    move-result-object v1

    invoke-virtual {v1, v12, v3, v11, v7}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->reportSimpleHondaAccordDeviceStatus(Landroid/content/Context;ZZB)V

    goto :goto_d

    .line 1957
    :cond_11
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->getInstance()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;

    move-result-object v1

    invoke-virtual {v1, v12, v3, v11, v11}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->reportSimpleHondaAccordDeviceStatus(Landroid/content/Context;ZZB)V

    goto :goto_d

    :pswitch_9
    move-object/from16 v9, p3

    move/from16 v23, v3

    const/16 v19, 0xb

    const/16 v20, 0x8

    move/from16 v3, p6

    .line 1944
    invoke-static {v14, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->noNeedRepBtStatus(ZI)Z

    move-result v1

    if-eqz v1, :cond_12

    :goto_d
    move v13, v3

    move v8, v7

    move/from16 v4, v20

    move/from16 v3, v23

    const/16 v21, 0xc

    const/16 v24, 0x7

    goto/16 :goto_3

    .line 1947
    :cond_12
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->PHONE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;

    const/16 v2, 0xff

    invoke-static {v12, v1, v2, v7, v7}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportSimpleMediaInfo(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;IZZ)V

    goto :goto_d

    :cond_13
    move-object/from16 v9, p3

    move/from16 v23, v3

    const/16 v19, 0xb

    const/16 v20, 0x8

    move/from16 v3, p6

    goto :goto_e

    :cond_14
    move-object/from16 v9, p3

    move/from16 v23, v3

    const/16 v19, 0xb

    const/16 v20, 0x8

    move/from16 v3, p6

    if-nez v15, :cond_15

    .line 1963
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->destroyTsPerSec()V

    goto :goto_d

    :cond_15
    new-array v1, v5, [B

    aput-byte v18, v1, v7

    const/16 v2, -0x7a

    aput-byte v2, v1, v11

    aput-byte v6, v1, v8

    .line 1965
    invoke-static {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->sndPhoneMediaPerSec([B)V

    goto :goto_d

    :cond_16
    move-object/from16 v9, p3

    move/from16 v23, v3

    const/16 v19, 0xb

    const/16 v20, 0x8

    move/from16 v3, p6

    .line 1988
    invoke-static {v14, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->noNeedRepBtStatus(ZI)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_d

    .line 1991
    :cond_17
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->PHONE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;

    const/16 v2, 0xff

    invoke-static {v12, v1, v2, v7, v7}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportSimpleMediaInfo(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;IZZ)V

    goto :goto_d

    :goto_e
    if-nez v15, :cond_18

    .line 1971
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->destroyTsPerSec()V

    goto :goto_d

    :cond_18
    new-array v1, v5, [B

    aput-byte v18, v1, v7

    aput-byte v16, v1, v11

    aput-byte v6, v1, v8

    .line 1973
    invoke-static {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->sndPhoneMediaPerSec([B)V

    goto :goto_d

    :cond_19
    move-object/from16 v9, p3

    move/from16 v23, v3

    const/16 v19, 0xb

    const/16 v20, 0x8

    move/from16 v3, p6

    if-nez v15, :cond_1a

    if-eqz v14, :cond_1a

    const/16 v1, 0x10

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v24, 0x7

    move/from16 v2, p6

    move v13, v3

    move/from16 v3, p7

    const/16 v21, 0xc

    move-object/from16 v4, p3

    move/from16 v5, v25

    move/from16 v6, v26

    move v8, v7

    move/from16 v7, v27

    .line 2049
    invoke-static/range {v1 .. v7}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->sndSimplePsaPhoneNum(BZZ[BBBB)V

    goto :goto_f

    :cond_1a
    move v13, v3

    move v8, v7

    const/16 v21, 0xc

    const/16 v24, 0x7

    if-nez v15, :cond_1b

    if-nez v14, :cond_1b

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v2, p6

    move/from16 v3, p7

    move-object/from16 v4, p3

    .line 2051
    invoke-static/range {v1 .. v7}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->sndSimplePsaPhoneNum(BZZ[BBBB)V

    .line 2053
    :cond_1b
    :goto_f
    invoke-static {v14, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->noNeedRepBtStatus(ZI)Z

    move-result v1

    if-eqz v1, :cond_1c

    :goto_10
    move/from16 v7, p7

    goto :goto_11

    .line 2056
    :cond_1c
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->PHONE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;

    const/16 v2, 0xff

    invoke-static {v12, v1, v2, v8, v11}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportSimpleMediaInfo(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;IZZ)V

    goto :goto_10

    :cond_1d
    move-object/from16 v9, p3

    move/from16 v13, p6

    move/from16 v24, v2

    move v8, v7

    const/16 v19, 0xb

    const/16 v21, 0xc

    if-nez v14, :cond_1e

    move/from16 v7, p7

    .line 1931
    invoke-static {v7, v13, v14, v10}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->sndVwMqbPhoneStatus(ZZZB)V

    goto :goto_11

    :cond_1e
    move/from16 v7, p7

    if-nez v15, :cond_21

    .line 1934
    invoke-static {v7, v13, v14, v8}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->sndVwMqbPhoneStatus(ZZZB)V

    goto :goto_11

    :cond_1f
    move-object/from16 v9, p3

    move/from16 v13, p6

    move/from16 v24, v2

    move v8, v7

    const/16 v19, 0xb

    const/16 v21, 0xc

    move/from16 v7, p7

    if-nez v14, :cond_20

    .line 1921
    invoke-static {v7, v13, v14, v8}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->sndVwMqbPhoneStatus(ZZZB)V

    goto :goto_11

    :cond_20
    if-nez v15, :cond_21

    .line 1924
    invoke-static {v7, v13, v14, v8}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->sndVwMqbPhoneStatus(ZZZB)V

    :cond_21
    :goto_11
    const/16 v3, 0x9

    const/16 v4, 0x8

    const/4 v5, 0x5

    const/4 v6, 0x3

    goto/16 :goto_14

    :cond_22
    move-object/from16 v9, p3

    move/from16 v13, p6

    move/from16 v24, v2

    move v8, v7

    const/16 v19, 0xb

    const/16 v21, 0xc

    move/from16 v7, p7

    if-nez v15, :cond_23

    if-eqz v14, :cond_23

    .line 2018
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    new-array v2, v10, [B

    aput-byte v18, v2, v8

    const/16 v3, -0x39

    aput-byte v3, v2, v11

    const/4 v3, 0x2

    aput-byte v8, v2, v3

    const/4 v6, 0x3

    aput-byte v11, v2, v6

    const/4 v3, 0x4

    aput-byte v8, v2, v3

    const/4 v5, 0x5

    aput-byte v8, v2, v5

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto :goto_12

    :cond_23
    const/4 v5, 0x5

    const/4 v6, 0x3

    if-nez v15, :cond_24

    if-nez v14, :cond_24

    .line 2021
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    new-array v2, v10, [B

    aput-byte v18, v2, v8

    const/16 v3, -0x39

    aput-byte v3, v2, v11

    const/4 v3, 0x2

    aput-byte v8, v2, v3

    aput-byte v8, v2, v6

    const/4 v3, 0x4

    aput-byte v8, v2, v3

    aput-byte v8, v2, v5

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    :cond_24
    :goto_12
    const/16 v3, 0x9

    const/16 v4, 0x8

    goto/16 :goto_14

    .line 1870
    :goto_13
    invoke-static {v14, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->noNeedRepBtStatus(ZI)Z

    move-result v1

    if-eqz v1, :cond_25

    goto :goto_12

    .line 1873
    :cond_25
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->PHONE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;

    const/16 v2, 0xff

    invoke-static {v12, v1, v2, v8, v11}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportSimpleMediaInfo(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;IZZ)V

    goto :goto_12

    :cond_26
    move-object/from16 v9, p3

    move/from16 v13, p6

    move/from16 v24, v2

    move v8, v7

    const/16 v19, 0xb

    const/16 v21, 0xc

    move/from16 v7, p7

    move/from16 v28, v6

    move v6, v5

    move/from16 v5, v28

    .line 1850
    invoke-static {v14, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->noNeedRepBtStatus(ZI)Z

    move-result v1

    if-eqz v1, :cond_27

    goto :goto_12

    .line 1853
    :cond_27
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->PHONE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;

    const/16 v2, 0xff

    invoke-static {v12, v1, v2, v8, v8}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportSimpleMediaInfo(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;IZZ)V

    .line 1854
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    const/16 v4, 0x8

    new-array v2, v4, [B

    aput-byte v18, v2, v8

    const/16 v3, -0x3d

    aput-byte v3, v2, v11

    const/4 v3, 0x2

    aput-byte v8, v2, v3

    aput-byte v8, v2, v6

    const/4 v3, 0x4

    aput-byte v8, v2, v3

    aput-byte v8, v2, v5

    aput-byte v8, v2, v10

    aput-byte v8, v2, v24

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    const/16 v3, 0x9

    goto/16 :goto_14

    :cond_28
    move-object/from16 v9, p3

    move/from16 v13, p6

    move/from16 v24, v2

    move v8, v7

    const/16 v4, 0x8

    const/16 v19, 0xb

    const/16 v21, 0xc

    move/from16 v7, p7

    move/from16 v28, v6

    move v6, v5

    move/from16 v5, v28

    const/16 v1, 0x18

    new-array v1, v1, [B

    aput-byte v8, v1, v8

    aput-byte v8, v1, v11

    const/4 v2, 0x2

    aput-byte v8, v1, v2

    aput-byte v8, v1, v6

    const/4 v2, 0x4

    aput-byte v8, v1, v2

    aput-byte v8, v1, v5

    aput-byte v8, v1, v10

    aput-byte v8, v1, v24

    aput-byte v8, v1, v4

    const/16 v3, 0x9

    aput-byte v8, v1, v3

    const/16 v2, 0xa

    aput-byte v8, v1, v2

    aput-byte v8, v1, v19

    aput-byte v8, v1, v21

    const/16 v23, 0xd

    aput-byte v8, v1, v23

    const/16 v22, 0xe

    aput-byte v8, v1, v22

    const/16 v23, 0xf

    aput-byte v8, v1, v23

    const/16 v23, 0x10

    aput-byte v8, v1, v23

    const/16 v23, 0x11

    aput-byte v8, v1, v23

    const/16 v23, 0x12

    aput-byte v8, v1, v23

    const/16 v23, 0x13

    aput-byte v8, v1, v23

    const/16 v23, 0x14

    aput-byte v8, v1, v23

    const/16 v23, 0x15

    aput-byte v8, v1, v23

    aput-byte v8, v1, v18

    const/16 v23, 0x17

    aput-byte v8, v1, v23

    if-eqz v14, :cond_29

    new-array v1, v6, [B

    aput-byte v18, v1, v8

    const/16 v23, -0x65

    aput-byte v23, v1, v11

    const/16 v20, 0x2

    aput-byte v10, v1, v20

    .line 1841
    invoke-static/range {p3 .. p3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->phoneNum2UnicodeLittleExtra([B)[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->sndGeneralPhone([B[B)V

    goto :goto_14

    :cond_29
    new-array v2, v6, [B

    aput-byte v18, v2, v8

    const/16 v23, -0x65

    aput-byte v23, v2, v11

    const/16 v20, 0x2

    aput-byte v5, v2, v20

    .line 1843
    invoke-static {v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->sndGeneralPhone([B[B)V

    goto :goto_14

    :cond_2a
    move-object/from16 v9, p3

    move/from16 v13, p6

    move/from16 v24, v2

    move v8, v7

    const/16 v4, 0x8

    const/16 v19, 0xb

    const/16 v21, 0xc

    move/from16 v7, p7

    move/from16 v28, v6

    move v6, v5

    move/from16 v5, v28

    .line 2060
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$13;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/16 v2, 0x17

    if-eq v1, v2, :cond_2b

    const/16 v2, 0x18

    if-eq v1, v2, :cond_2b

    const/16 v2, 0x3c

    if-eq v1, v2, :cond_2b

    :goto_14
    move v11, v3

    move v8, v6

    const/16 v10, 0xa

    goto :goto_15

    :cond_2b
    if-eqz v14, :cond_2c

    const/16 v1, 0x10

    const/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v10, 0xa

    move/from16 v2, p6

    move v11, v3

    move/from16 v3, p7

    move-object/from16 v4, p3

    move/from16 v5, v23

    move v8, v6

    move/from16 v6, v25

    move/from16 v7, v26

    .line 2066
    invoke-static/range {v1 .. v7}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->sndSimplePsaPhoneNum(BZZ[BBBB)V

    goto :goto_15

    :cond_2c
    move v11, v3

    move v8, v6

    const/16 v10, 0xa

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v2, p6

    move/from16 v3, p7

    move-object/from16 v4, p3

    .line 2068
    invoke-static/range {v1 .. v7}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->sndSimplePsaPhoneNum(BZZ[BBBB)V

    .line 2081
    :goto_15
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$13;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v11, :cond_39

    if-eq v1, v10, :cond_39

    const/16 v2, 0xf

    if-eq v1, v2, :cond_37

    const/16 v2, 0x1a

    const/16 v3, -0x40

    if-eq v1, v2, :cond_35

    const/16 v2, 0x3d

    if-eq v1, v2, :cond_34

    const/16 v2, 0x37

    if-eq v1, v2, :cond_33

    const/16 v2, 0x38

    if-eq v1, v2, :cond_32

    packed-switch v1, :pswitch_data_2

    packed-switch v1, :pswitch_data_3

    packed-switch v1, :pswitch_data_4

    packed-switch v1, :pswitch_data_5

    goto/16 :goto_1f

    :pswitch_a
    new-array v0, v8, [B

    const/4 v1, 0x0

    aput-byte v18, v0, v1

    const/16 v1, -0x6b

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    const/4 v1, 0x2

    aput-byte v10, v0, v1

    .line 2280
    invoke-static/range {p3 .. p3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->phoneNum2UnicodeBig([B)[B

    move-result-object v1

    .line 2281
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v0

    const/16 v1, 0x27

    .line 2282
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->makeBytesFixedLength([BI)[B

    move-result-object v0

    .line 2283
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_1f

    .line 2274
    :pswitch_b
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    const/4 v1, 0x6

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte v18, v1, v2

    const/4 v3, 0x1

    aput-byte v11, v1, v3

    const/4 v3, 0x2

    aput-byte v24, v1, v3

    aput-byte v2, v1, v8

    const/4 v3, 0x4

    aput-byte v2, v1, v3

    const/4 v4, 0x5

    aput-byte v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_1f

    .line 2261
    :pswitch_c
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isOriginalScreen()Z

    move-result v0

    if-eqz v0, :cond_40

    if-eqz v15, :cond_2d

    .line 2263
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.asr.action.STOP_WAKE_UP"

    .line 2264
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2265
    invoke-virtual {v12, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1f

    .line 2267
    :cond_2d
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.asr.action.START_WALE_UP"

    .line 2268
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2269
    invoke-virtual {v12, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1f

    :pswitch_d
    const/4 v4, 0x5

    new-array v0, v8, [B

    const/4 v1, 0x0

    aput-byte v18, v0, v1

    const/4 v1, 0x1

    aput-byte v16, v0, v1

    const/4 v1, 0x2

    aput-byte v4, v0, v1

    .line 2240
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_1f

    :pswitch_e
    const/4 v0, 0x6

    const/4 v4, 0x5

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v18, v0, v1

    const/4 v1, 0x1

    aput-byte v16, v0, v1

    const/4 v1, 0x2

    aput-byte v10, v0, v1

    aput-byte v17, v0, v8

    const/4 v1, 0x4

    aput-byte v17, v0, v1

    aput-byte v17, v0, v4

    .line 2226
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_1f

    :pswitch_f
    const/16 v0, 0xf

    const/4 v4, 0x5

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v18, v0, v1

    const/16 v2, -0x6f

    const/4 v3, 0x1

    aput-byte v2, v0, v3

    const/4 v2, 0x2

    aput-byte v10, v0, v2

    aput-byte v1, v0, v8

    const/4 v2, 0x4

    aput-byte v1, v0, v2

    aput-byte v1, v0, v4

    const/4 v2, 0x6

    aput-byte v1, v0, v2

    aput-byte v1, v0, v24

    const/16 v2, 0x8

    aput-byte v1, v0, v2

    aput-byte v1, v0, v11

    aput-byte v1, v0, v10

    aput-byte v1, v0, v19

    aput-byte v1, v0, v21

    const/16 v2, 0xd

    aput-byte v1, v0, v2

    const/16 v2, 0xe

    aput-byte v1, v0, v2

    .line 2155
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    if-eqz v14, :cond_2e

    move/from16 v2, v24

    goto :goto_16

    :cond_2e
    const/4 v2, 0x6

    :goto_16
    new-array v0, v8, [B

    const/4 v1, 0x0

    aput-byte v18, v0, v1

    const/16 v1, -0x33

    const/4 v3, 0x1

    aput-byte v1, v0, v3

    const/4 v1, 0x2

    aput-byte v2, v0, v1

    const/16 v1, 0x1a

    new-array v1, v1, [B

    const/4 v7, 0x0

    :goto_17
    const/16 v2, 0x1a

    if-ge v7, v2, :cond_2f

    const/4 v2, 0x0

    .line 2161
    aput-byte v2, v1, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_17

    .line 2163
    :cond_2f
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    goto/16 :goto_1f

    :pswitch_10
    const/16 v2, 0x8

    const/4 v4, 0x5

    .line 2213
    invoke-static/range {p2 .. p2}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->getMpegplayerManager(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->isDiscExist()Z

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v1, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->setIntByteWithBit(IIZ)I

    move-result v0

    const/16 v3, 0x10

    new-array v3, v3, [B

    aput-byte v18, v3, v1

    const/16 v5, -0x6f

    const/4 v6, 0x1

    aput-byte v5, v3, v6

    const/4 v5, 0x2

    aput-byte v10, v3, v5

    int-to-byte v0, v0

    aput-byte v0, v3, v8

    const/4 v0, 0x4

    aput-byte v1, v3, v0

    aput-byte v1, v3, v4

    const/4 v0, 0x6

    aput-byte v1, v3, v0

    aput-byte v1, v3, v24

    aput-byte v1, v3, v2

    aput-byte v1, v3, v11

    aput-byte v1, v3, v10

    aput-byte v1, v3, v19

    aput-byte v1, v3, v21

    const/16 v0, 0xd

    aput-byte v1, v3, v0

    const/16 v0, 0xe

    aput-byte v1, v3, v0

    const/16 v0, 0xf

    aput-byte v1, v3, v0

    .line 2215
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_1f

    :pswitch_11
    new-array v0, v8, [B

    const/4 v1, 0x0

    aput-byte v18, v0, v1

    const/16 v1, -0x2e

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    const/4 v1, 0x2

    aput-byte v10, v0, v1

    const-string v1, "            "

    .line 2192
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v0

    .line 2193
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_1f

    :pswitch_12
    const/4 v4, 0x5

    move-object/from16 v1, p0

    :goto_18
    const/4 v2, 0x4

    const/4 v3, 0x0

    goto/16 :goto_19

    .line 2232
    :pswitch_13
    invoke-static {v14, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->noNeedRepBtStatus(ZI)Z

    move-result v0

    if-eqz v0, :cond_30

    goto/16 :goto_1f

    .line 2235
    :cond_30
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->PHONE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;

    const/16 v1, 0xff

    const/4 v2, 0x0

    invoke-static {v12, v0, v1, v2, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportSimpleMediaInfo(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;IZZ)V

    goto/16 :goto_1f

    :pswitch_14
    if-nez v14, :cond_31

    .line 2168
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    new-array v1, v8, [B

    const/16 v2, -0x4f

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    const/4 v2, 0x1

    aput-byte v3, v1, v2

    const/4 v2, 0x2

    aput-byte v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_1f

    .line 2170
    :cond_31
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    new-array v1, v8, [B

    const/16 v2, -0x4f

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    const/4 v2, 0x1

    aput-byte v8, v1, v2

    const/4 v2, 0x2

    aput-byte v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_1f

    :cond_32
    const/4 v4, 0x5

    if-nez v14, :cond_40

    .line 2251
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    const/4 v1, 0x4

    new-array v2, v1, [B

    const/4 v1, 0x0

    aput-byte v18, v2, v1

    const/4 v1, 0x1

    aput-byte v3, v2, v1

    const/4 v1, 0x2

    aput-byte v4, v2, v1

    const/16 v1, 0x40

    aput-byte v1, v2, v8

    invoke-virtual {v0, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    .line 2252
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte v18, v1, v2

    const/16 v3, -0x3b

    const/4 v4, 0x1

    aput-byte v3, v1, v4

    const/4 v3, 0x2

    aput-byte v2, v1, v3

    const/4 v2, 0x6

    aput-byte v2, v1, v8

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_1f

    :cond_33
    const/16 v2, 0x8

    const/4 v4, 0x5

    new-array v0, v10, [B

    const/4 v1, 0x0

    aput-byte v18, v0, v1

    const/4 v5, 0x1

    aput-byte v3, v0, v5

    const/4 v3, 0x2

    aput-byte v4, v0, v3

    const/16 v3, 0x40

    aput-byte v3, v0, v8

    const/4 v3, 0x4

    aput-byte v1, v0, v3

    aput-byte v1, v0, v4

    const/4 v3, 0x6

    aput-byte v1, v0, v3

    aput-byte v1, v0, v24

    aput-byte v1, v0, v2

    aput-byte v1, v0, v11

    .line 2246
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_1f

    :cond_34
    const/4 v4, 0x5

    .line 2256
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    const/4 v1, 0x4

    new-array v2, v1, [B

    const/4 v1, 0x0

    aput-byte v18, v2, v1

    const/16 v3, -0x3c

    const/4 v5, 0x1

    aput-byte v3, v2, v5

    const/4 v3, 0x2

    aput-byte v4, v2, v3

    aput-byte v1, v2, v8

    invoke-static {v2, v9}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    .line 2257
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    new-array v2, v4, [B

    aput-byte v18, v2, v1

    const/16 v3, -0x3b

    const/4 v4, 0x1

    aput-byte v3, v2, v4

    const/4 v3, 0x2

    aput-byte v1, v2, v3

    aput-byte v1, v2, v8

    const/4 v3, 0x4

    aput-byte v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_1f

    :cond_35
    const/4 v4, 0x5

    if-nez v15, :cond_36

    if-eqz v14, :cond_36

    .line 2089
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    new-array v1, v4, [B

    const/4 v2, 0x0

    aput-byte v18, v1, v2

    const/4 v2, 0x1

    aput-byte v3, v1, v2

    const/4 v2, 0x2

    aput-byte v4, v1, v2

    const/16 v2, 0x40

    aput-byte v2, v1, v8

    const/4 v2, 0x4

    aput-byte v2, v1, v2

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_1f

    :cond_36
    if-nez v14, :cond_40

    .line 2091
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    new-array v1, v4, [B

    const/4 v2, 0x0

    aput-byte v18, v1, v2

    const/4 v5, 0x1

    aput-byte v3, v1, v5

    const/4 v3, 0x2

    aput-byte v4, v1, v3

    const/16 v3, 0x40

    aput-byte v3, v1, v8

    const/4 v3, 0x4

    aput-byte v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    .line 2092
    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$10;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v1, p0

    :try_start_1
    invoke-direct {v0, v1, v12}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$10;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;Landroid/content/Context;)V

    .line 2105
    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$10;->start()V

    goto/16 :goto_21

    :cond_37
    move-object/from16 v1, p0

    const/4 v4, 0x5

    goto/16 :goto_18

    .line 2124
    :goto_19
    invoke-static {v3, v2, v14}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->setIntByteWithBit(IIZ)I

    move-result v5

    int-to-byte v2, v5

    if-nez v13, :cond_38

    const/4 v7, 0x1

    goto :goto_1a

    :cond_38
    move v7, v3

    .line 2125
    :goto_1a
    invoke-static {v2, v4, v7}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->setIntByteWithBit(IIZ)I

    move-result v2

    int-to-byte v2, v2

    .line 2126
    invoke-static {v2, v0, v3, v8}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->setIntFromByteWithBit(IIII)I

    move-result v0

    int-to-byte v0, v0

    const/4 v2, 0x2

    new-array v2, v2, [B

    const/4 v4, 0x4

    aput-byte v4, v2, v3

    const/4 v3, 0x1

    aput-byte v0, v2, v3

    .line 2128
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_21

    :catch_0
    move-exception v0

    goto/16 :goto_20

    :cond_39
    move-object/from16 v1, p0

    const/16 v2, 0x8

    const/4 v4, 0x5

    if-eqz v0, :cond_3a

    goto/16 :goto_21

    :cond_3a
    if-eqz v14, :cond_3d

    const/16 v0, 0x10

    if-nez v13, :cond_3b

    const/4 v7, 0x1

    goto :goto_1b

    :cond_3b
    const/4 v7, 0x0

    .line 2138
    :goto_1b
    invoke-static {v0, v4, v7}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->setIntByteWithBit(IIZ)I

    move-result v0

    int-to-byte v0, v0

    const/4 v3, 0x6

    if-nez p7, :cond_3c

    const/4 v7, 0x1

    goto :goto_1c

    :cond_3c
    const/4 v7, 0x0

    .line 2139
    :goto_1c
    invoke-static {v0, v3, v7}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->setIntByteWithBit(IIZ)I

    move-result v0

    int-to-byte v0, v0

    new-array v2, v2, [B

    const/4 v3, 0x0

    aput-byte v3, v2, v3

    const/4 v3, 0x1

    aput-byte v3, v2, v3

    const/4 v5, 0x2

    aput-byte v4, v2, v5

    const/16 v5, 0x33

    aput-byte v5, v2, v8

    const/4 v5, 0x4

    aput-byte v0, v2, v5

    aput-byte v8, v2, v4

    const/4 v0, 0x6

    aput-byte v3, v2, v0

    const/4 v0, 0x0

    aput-byte v0, v2, v24

    .line 2141
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto :goto_21

    :cond_3d
    const/4 v0, 0x0

    if-nez v13, :cond_3e

    const/4 v7, 0x1

    goto :goto_1d

    :cond_3e
    const/4 v7, 0x0

    .line 2144
    :goto_1d
    invoke-static {v0, v4, v7}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->setIntByteWithBit(IIZ)I

    move-result v3

    int-to-byte v0, v3

    const/4 v3, 0x6

    if-nez p7, :cond_3f

    const/4 v7, 0x1

    goto :goto_1e

    :cond_3f
    const/4 v7, 0x0

    .line 2145
    :goto_1e
    invoke-static {v0, v3, v7}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->setIntByteWithBit(IIZ)I

    move-result v0

    int-to-byte v0, v0

    new-array v2, v2, [B

    const/4 v3, 0x0

    aput-byte v3, v2, v3

    const/4 v3, 0x1

    aput-byte v3, v2, v3

    const/4 v5, 0x2

    aput-byte v4, v2, v5

    const/16 v5, 0x33

    aput-byte v5, v2, v8

    const/4 v5, 0x4

    aput-byte v0, v2, v5

    aput-byte v8, v2, v4

    const/4 v0, 0x6

    aput-byte v3, v2, v0

    const/4 v0, 0x0

    aput-byte v0, v2, v24

    .line 2147
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_21

    :cond_40
    :goto_1f
    move-object/from16 v1, p0

    goto :goto_21

    :catch_1
    move-exception v0

    move-object/from16 v1, p0

    .line 2291
    :goto_20
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_21
    return-void

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x40
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1c
        :pswitch_14
        :pswitch_13
        :pswitch_13
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x22
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x2c
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x52
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method public reportBtTalkingToCan(Landroid/content/Context;[BZZ)V
    .locals 28

    move-object/from16 v0, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    const-string v11, "BTPhone"

    const/4 v12, 0x3

    .line 1141
    sput v12, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->PhoneState:I

    const-string v1, "REPORT BT"

    const-string/jumbo v2, "reportBtTalkingToCan"

    .line 1142
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "PhoneState"

    invoke-static {v1, v2, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1144
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "btState"

    const/4 v13, 0x0

    invoke-static {v1, v2, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1146
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    if-eqz v1, :cond_13

    if-eqz v8, :cond_13

    .line 1148
    new-instance v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$6;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v14, p0

    :try_start_1
    invoke-direct {v1, v14, v8, v9, v10}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$6;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;[BZZ)V

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface;->sendMsg(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface$CallBack;)V

    .line 1155
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getFactoryCanType()I

    .line 1156
    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isCanbusCmdPorting(Landroid/content/Context;)Z

    move-result v1

    const/16 v16, -0x35

    const/16 v17, -0x3b

    const/16 v18, 0x40

    const/16 v19, -0x40

    const/16 v5, 0xa

    const/4 v4, 0x6

    const/4 v2, 0x5

    const/16 v20, 0x16

    const/4 v15, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v1, :cond_0

    .line 1158
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$13;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v24

    aget v1, v1, v24

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    const/16 v5, 0x8

    const/16 v22, 0x9

    :goto_1
    const/16 v23, 0x7

    goto/16 :goto_3

    .line 1209
    :pswitch_1
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    new-array v3, v5, [B

    aput-byte v20, v3, v13

    aput-byte v19, v3, v7

    aput-byte v2, v3, v6

    aput-byte v18, v3, v12

    aput-byte v6, v3, v15

    aput-byte v13, v3, v2

    aput-byte v13, v3, v4

    const/16 v24, 0x7

    aput-byte v13, v3, v24

    const/16 v23, 0x8

    aput-byte v13, v3, v23

    const/16 v22, 0x9

    aput-byte v13, v3, v22

    invoke-virtual {v1, v3}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    .line 1210
    invoke-static/range {p2 .. p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->sndToyotaSimplePhone([B)V

    goto :goto_0

    .line 1204
    :pswitch_2
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    new-array v3, v12, [B

    aput-byte v20, v3, v13

    const/16 v22, 0x9

    aput-byte v22, v3, v7

    const/16 v21, 0xb

    aput-byte v21, v3, v6

    invoke-virtual {v1, v3}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    .line 1205
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    new-array v3, v15, [B

    aput-byte v20, v3, v13

    const/16 v22, 0x9

    aput-byte v22, v3, v7

    const/16 v24, 0x7

    aput-byte v24, v3, v6

    aput-byte v6, v3, v12

    invoke-virtual {v1, v3}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto :goto_0

    .line 1201
    :pswitch_3
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    new-array v3, v5, [B

    aput-byte v20, v3, v13

    const/16 v25, -0x7e

    aput-byte v25, v3, v7

    aput-byte v2, v3, v6

    aput-byte v12, v3, v12

    aput-byte v2, v3, v15

    aput-byte v13, v3, v2

    aput-byte v13, v3, v4

    const/16 v24, 0x7

    aput-byte v13, v3, v24

    const/16 v23, 0x8

    aput-byte v13, v3, v23

    const/16 v22, 0x9

    aput-byte v13, v3, v22

    invoke-virtual {v1, v3}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto :goto_2

    :pswitch_4
    const/16 v22, 0x9

    .line 1197
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->getInstance()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;

    move-result-object v1

    invoke-virtual {v1, v0, v9, v7, v15}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->reportSimpleHondaAccordDeviceStatus(Landroid/content/Context;ZZB)V

    goto :goto_2

    :pswitch_5
    const/16 v22, 0x9

    new-array v1, v12, [B

    aput-byte v20, v1, v13

    aput-byte v16, v1, v7

    aput-byte v7, v1, v6

    .line 1194
    array-length v3, v8

    invoke-static {v1, v8, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->sndSimpleHondaPhone([B[BI)V

    goto :goto_2

    :pswitch_6
    const/16 v22, 0x9

    .line 1190
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    const/4 v3, 0x7

    new-array v5, v3, [B

    aput-byte v20, v5, v13

    const/16 v3, -0x7c

    aput-byte v3, v5, v7

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_XINBAS_MEDIA_TYPE;->MID_PHONE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_XINBAS_MEDIA_TYPE;

    invoke-virtual {v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_XINBAS_MEDIA_TYPE;->ordinal()I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v5, v6

    aput-byte v18, v5, v12

    aput-byte v13, v5, v15

    aput-byte v13, v5, v2

    aput-byte v13, v5, v4

    invoke-virtual {v1, v5}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto :goto_2

    :pswitch_7
    const/16 v22, 0x9

    .line 1184
    invoke-static/range {p2 .. p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->sndVwMqbPhoneInfo([B)V

    .line 1185
    invoke-static {v10, v9, v7, v15}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->sndVwMqbPhoneStatus(ZZZB)V

    goto :goto_2

    :pswitch_8
    const/16 v22, 0x9

    .line 1180
    invoke-static {v6, v8}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->sndNissanPhone(B[B)V

    :goto_2
    const/16 v5, 0x8

    goto/16 :goto_1

    :pswitch_9
    const/16 v22, 0x9

    .line 1173
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->PHONE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;

    const/16 v3, 0xff

    invoke-static {v0, v1, v3, v13, v13}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportSimpleMediaInfo(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;IZZ)V

    .line 1174
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    const/16 v5, 0x8

    new-array v3, v5, [B

    aput-byte v20, v3, v13

    const/16 v23, -0x3d

    aput-byte v23, v3, v7

    aput-byte v13, v3, v6

    aput-byte v13, v3, v12

    aput-byte v13, v3, v15

    aput-byte v13, v3, v2

    aput-byte v13, v3, v4

    const/16 v23, 0x7

    aput-byte v13, v3, v23

    invoke-virtual {v1, v3}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    new-array v1, v12, [B

    aput-byte v20, v1, v13

    aput-byte v17, v1, v7

    aput-byte v12, v1, v6

    .line 1175
    invoke-static {v1, v8, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->sndVwSkodaPhone([B[BI)V

    goto :goto_3

    :pswitch_a
    const/16 v5, 0x8

    const/16 v22, 0x9

    const/16 v23, 0x7

    new-array v1, v12, [B

    aput-byte v20, v1, v13

    const/16 v3, -0x65

    aput-byte v3, v1, v7

    aput-byte v12, v1, v6

    .line 1162
    invoke-static/range {p2 .. p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->phoneNum2UnicodeLittleExtra([B)[B

    move-result-object v3

    .line 1163
    invoke-static {v1, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v1

    const/16 v3, 0x1b

    .line 1164
    invoke-static {v1, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->makeBytesFixedLength([BI)[B

    move-result-object v1

    .line 1165
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto :goto_3

    :cond_0
    const/16 v5, 0x8

    const/16 v22, 0x9

    const/16 v23, 0x7

    .line 1220
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$13;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v3

    aget v1, v1, v3

    if-eq v1, v12, :cond_2

    if-eq v1, v15, :cond_2

    const/16 v3, 0x17

    if-eq v1, v3, :cond_1

    const/16 v3, 0x18

    if-eq v1, v3, :cond_1

    :goto_3
    move v2, v4

    move/from16 v23, v5

    move v12, v7

    goto :goto_4

    :cond_1
    const/16 v1, 0x14

    const/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move v3, v2

    move/from16 v2, p3

    move/from16 v12, v23

    move/from16 v3, p4

    move-object/from16 v4, p2

    move/from16 v23, v5

    move/from16 v5, v24

    move v12, v6

    move/from16 v6, v26

    move v12, v7

    move/from16 v7, v27

    .line 1227
    invoke-static/range {v1 .. v7}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->sndSimplePsaPhoneNum(BZZ[BBBB)V

    const/4 v2, 0x6

    goto :goto_4

    :cond_2
    move/from16 v23, v5

    move v12, v7

    new-array v1, v15, [B

    aput-byte v13, v1, v13

    aput-byte v13, v1, v12

    const/4 v2, 0x7

    const/4 v3, 0x2

    aput-byte v2, v1, v3

    const/4 v2, 0x3

    aput-byte v2, v1, v2

    const/4 v2, 0x6

    .line 1223
    invoke-static {v1, v8, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->sndVwSkodaPhone([B[BI)V

    .line 1238
    :goto_4
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$13;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const/4 v3, 0x3

    if-eq v1, v3, :cond_12

    const/16 v3, 0x1a

    if-eq v1, v3, :cond_11

    const/16 v3, 0x3f

    if-eq v1, v3, :cond_10

    const/16 v3, 0x33

    const/16 v4, 0x9

    if-eq v1, v4, :cond_d

    const/16 v5, 0xa

    if-eq v1, v5, :cond_d

    if-eq v1, v3, :cond_c

    const/16 v3, 0x34

    if-eq v1, v3, :cond_a

    const/16 v3, 0x37

    if-eq v1, v3, :cond_9

    const/16 v3, 0x38

    if-eq v1, v3, :cond_8

    const/16 v3, 0x3a

    const/16 v6, 0x10

    if-eq v1, v3, :cond_7

    const/16 v3, 0x3b

    const/16 v7, 0xe

    if-eq v1, v3, :cond_6

    packed-switch v1, :pswitch_data_1

    const/16 v3, 0xc

    packed-switch v1, :pswitch_data_2

    .line 1438
    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isCanbusCmdPorting(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 1439
    array-length v1, v8

    const/4 v2, 0x2

    add-int/2addr v1, v2

    int-to-byte v1, v1

    const/4 v11, 0x5

    new-array v3, v11, [B

    aput-byte v13, v3, v13

    aput-byte v2, v3, v12

    aput-byte v1, v3, v2

    const/4 v1, 0x3

    aput-byte v2, v3, v1

    aput-byte v12, v3, v15

    .line 1441
    invoke-static {v3, v8}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v1

    .line 1442
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_a

    :pswitch_b
    const/4 v11, 0x5

    .line 1365
    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->getMpegplayerManager(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->isDiscExist()Z

    move-result v1

    invoke-static {v13, v13, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->setIntByteWithBit(IIZ)I

    move-result v1

    new-array v6, v6, [B

    aput-byte v20, v6, v13

    const/16 v8, -0x6f

    aput-byte v8, v6, v12

    const/4 v8, 0x2

    aput-byte v5, v6, v8

    int-to-byte v1, v1

    const/4 v8, 0x3

    aput-byte v1, v6, v8

    aput-byte v13, v6, v15

    aput-byte v13, v6, v11

    aput-byte v13, v6, v2

    const/4 v1, 0x7

    aput-byte v13, v6, v1

    aput-byte v13, v6, v23

    aput-byte v13, v6, v4

    aput-byte v13, v6, v5

    const/16 v1, 0xb

    aput-byte v13, v6, v1

    aput-byte v13, v6, v3

    const/16 v1, 0xd

    aput-byte v13, v6, v1

    aput-byte v13, v6, v7

    const/16 v1, 0xf

    aput-byte v13, v6, v1

    .line 1367
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_a

    :pswitch_c
    const/4 v1, 0x3

    new-array v1, v1, [B

    aput-byte v20, v1, v13

    const/16 v2, -0x2e

    aput-byte v2, v1, v12

    const/4 v2, 0x2

    aput-byte v5, v1, v2

    const-string v2, "            "

    .line 1344
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v1

    .line 1345
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_a

    .line 1316
    :pswitch_d
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v8}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->string2UnicodeBIG(Ljava/lang/String;)[B

    move-result-object v1

    .line 1317
    array-length v2, v1

    const/4 v2, 0x3

    new-array v2, v2, [B

    aput-byte v20, v2, v13

    const/16 v3, -0x70

    aput-byte v3, v2, v12

    const/4 v3, 0x2

    aput-byte v4, v2, v3

    const/16 v3, 0x21

    new-array v4, v3, [B

    .line 1320
    invoke-static {v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v1

    .line 1321
    :goto_5
    array-length v2, v1

    if-ge v13, v2, :cond_4

    if-ne v3, v13, :cond_3

    goto :goto_6

    .line 1323
    :cond_3
    aget-byte v2, v1, v13

    aput-byte v2, v4, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 1325
    :cond_4
    :goto_6
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_a

    :pswitch_e
    const/4 v1, 0x3

    new-array v1, v1, [B

    aput-byte v20, v1, v13

    aput-byte v16, v1, v12

    const/4 v2, 0x2

    aput-byte v12, v1, v2

    .line 1296
    array-length v2, v8

    invoke-static {v1, v8, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->sndSimpleHondaPhone([B[BI)V

    goto/16 :goto_a

    :pswitch_f
    new-array v1, v3, [B

    const/16 v2, 0x20

    .line 1263
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 1264
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    invoke-static {v2, v13, v1, v13, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 v2, 0x3

    new-array v2, v2, [B

    aput-byte v20, v2, v13

    const/16 v3, -0x1f

    aput-byte v3, v2, v12

    const/4 v3, 0x2

    aput-byte v5, v2, v3

    .line 1266
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v3

    invoke-static {v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_a

    .line 1330
    :pswitch_10
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v8}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->string2UnicodeSMALL(Ljava/lang/String;)[B

    move-result-object v1

    const/16 v2, 0x22

    new-array v2, v2, [B

    new-array v3, v15, [B

    aput-byte v20, v3, v13

    const/16 v4, -0x77

    aput-byte v4, v3, v12

    const/4 v4, 0x2

    const/4 v5, 0x3

    aput-byte v5, v3, v4

    aput-byte v5, v3, v5

    .line 1333
    invoke-static {v3, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v1

    .line 1334
    :goto_7
    array-length v3, v1

    if-ge v13, v3, :cond_5

    .line 1335
    aget-byte v3, v1, v13

    aput-byte v3, v2, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 1337
    :cond_5
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_a

    :cond_6
    const/4 v1, 0x2

    new-array v1, v1, [B

    aput-byte v20, v1, v13

    const/16 v2, -0x7d

    aput-byte v2, v1, v12

    const-string v2, "TAKING"

    .line 1428
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v1

    .line 1429
    invoke-static {v1, v7}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->makeBytesFixedLength([BI)[B

    move-result-object v1

    .line 1430
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_a

    .line 1412
    :cond_7
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    new-array v2, v15, [B

    aput-byte v20, v2, v13

    aput-byte v17, v2, v12

    const/4 v3, 0x2

    aput-byte v13, v2, v3

    const/4 v3, 0x3

    aput-byte v15, v2, v3

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    new-array v1, v15, [B

    aput-byte v20, v1, v13

    const/16 v2, -0x36

    aput-byte v2, v1, v12

    const/4 v2, 0x2

    aput-byte v15, v1, v2

    const/4 v2, 0x3

    aput-byte v6, v1, v2

    .line 1414
    invoke-static/range {p2 .. p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->phoneNum2UnicodeLittleExtra([B)[B

    move-result-object v2

    .line 1415
    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v1

    .line 1416
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_a

    :cond_8
    const/4 v11, 0x5

    .line 1405
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    new-array v2, v15, [B

    aput-byte v20, v2, v13

    aput-byte v19, v2, v12

    const/4 v3, 0x2

    aput-byte v11, v2, v3

    const/4 v3, 0x3

    aput-byte v18, v2, v3

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    .line 1406
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    new-array v2, v15, [B

    aput-byte v20, v2, v13

    aput-byte v17, v2, v12

    const/4 v3, 0x2

    aput-byte v13, v2, v3

    const/4 v3, 0x3

    aput-byte v15, v2, v3

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_a

    :cond_9
    new-array v1, v15, [B

    aput-byte v20, v1, v13

    aput-byte v17, v1, v12

    const/4 v2, 0x2

    aput-byte v2, v1, v2

    const/4 v2, 0x3

    aput-byte v12, v1, v2

    .line 1401
    invoke-static {v1, v8}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->sndGeneralPhone([B[B)V

    goto/16 :goto_a

    :cond_a
    const/4 v11, 0x5

    .line 1385
    sget-byte v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->prevCallingSt:B

    if-ne v1, v12, :cond_b

    new-array v1, v11, [B

    aput-byte v20, v1, v13

    aput-byte v19, v1, v12

    const/4 v2, 0x2

    aput-byte v11, v1, v2

    const/4 v3, 0x3

    aput-byte v2, v1, v3

    aput-byte v12, v1, v15

    .line 1386
    invoke-static {v1, v8}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->sndGeneralPhone([B[B)V

    goto/16 :goto_a

    .line 1387
    :cond_b
    sget-byte v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->prevCallingSt:B

    const/4 v2, 0x2

    if-ne v1, v2, :cond_12

    new-array v1, v11, [B

    aput-byte v20, v1, v13

    aput-byte v19, v1, v12

    aput-byte v11, v1, v2

    const/4 v2, 0x3

    aput-byte v2, v1, v2

    aput-byte v12, v1, v15

    .line 1388
    invoke-static {v1, v8}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->sndGeneralPhone([B[B)V

    goto/16 :goto_a

    .line 1393
    :cond_c
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "action_qz_oringinal_screen_rep_0x83_status"

    .line 1394
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "qz_src_mode_status"

    const/4 v3, 0x7

    .line 1395
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 1396
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v1, "QZ"

    const-string v2, "qz_src_mode_status snd android"

    .line 1397
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_d
    const/4 v11, 0x5

    .line 1285
    array-length v1, v8

    add-int/2addr v1, v15

    int-to-byte v1, v1

    const/16 v4, 0x14

    if-nez v9, :cond_e

    move v7, v12

    goto :goto_8

    :cond_e
    move v7, v13

    .line 1287
    :goto_8
    invoke-static {v4, v11, v7}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->setIntByteWithBit(IIZ)I

    move-result v4

    int-to-byte v4, v4

    if-nez v10, :cond_f

    move v7, v12

    goto :goto_9

    :cond_f
    move v7, v13

    .line 1288
    :goto_9
    invoke-static {v4, v2, v7}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->setIntByteWithBit(IIZ)I

    move-result v4

    int-to-byte v4, v4

    const/4 v5, 0x7

    new-array v5, v5, [B

    aput-byte v13, v5, v13

    aput-byte v12, v5, v12

    const/4 v6, 0x2

    aput-byte v1, v5, v6

    const/4 v1, 0x3

    aput-byte v3, v5, v1

    aput-byte v4, v5, v15

    aput-byte v1, v5, v11

    aput-byte v12, v5, v2

    .line 1290
    invoke-static {v5, v8}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v1

    .line 1291
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto :goto_a

    :cond_10
    const/16 v5, 0xa

    const/4 v11, 0x5

    new-array v1, v15, [B

    aput-byte v20, v1, v13

    aput-byte v19, v1, v12

    const/4 v2, 0x2

    aput-byte v11, v1, v2

    const/4 v2, 0x3

    aput-byte v13, v1, v2

    .line 1434
    invoke-static {v1, v5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->makeBytesFixedLength([BI)[B

    move-result-object v1

    .line 1435
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto :goto_a

    :cond_11
    const/4 v11, 0x5

    .line 1242
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    new-array v2, v11, [B

    aput-byte v20, v2, v13

    aput-byte v19, v2, v12

    const/4 v3, 0x2

    aput-byte v11, v2, v3

    const/4 v4, 0x3

    aput-byte v18, v2, v4

    aput-byte v3, v2, v15

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    .line 1449
    :cond_12
    :goto_a
    :pswitch_11
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    sget-object v2, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->SMALL_LCD_FUNCTION:Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getSharedBool(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1450
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$13;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$Util$SingleSpinMachine:[I

    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isYHT(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_3

    goto/16 :goto_c

    .line 1459
    :pswitch_12
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->getInstance()Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;

    move-result-object v1

    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->KT:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    invoke-virtual {v1, v0, v2}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->clearAllPriIcont(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;)V

    .line 1460
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "LCD_START_TIMER"

    invoke-static {v1, v2, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1461
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->getInstance()Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->getCurrentTimeString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "mm"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " BT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_lcdPrintfString(Landroid/content/Context;[B)[B

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->reportTempLcdInfor([BLandroid/content/Context;)V

    goto :goto_c

    .line 1456
    :pswitch_13
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->getInstance()Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;

    move-result-object v1

    const-string v2, " CALLING"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_lcdPrintfString(Landroid/content/Context;[B)[B

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->reportTempLcdInfor([BLandroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_c

    :catch_0
    move-exception v0

    goto :goto_b

    :cond_13
    move-object/from16 v14, p0

    goto :goto_c

    :catch_1
    move-exception v0

    move-object/from16 v14, p0

    .line 1468
    :goto_b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_14
    :goto_c
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xd
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_10
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1c
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method

.method public reportBtTalkingToCanWithTime(Landroid/content/Context;[BZZI)V
    .locals 27

    move-object/from16 v0, p2

    move/from16 v6, p5

    const-string v1, "REPORT BT"

    const-string/jumbo v2, "reportBtTalkingToCanWithTime"

    .line 2296
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x3

    .line 2297
    sput v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->PhoneState:I

    .line 2298
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "PhoneState"

    invoke-static {v1, v2, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    add-int/lit8 v1, v6, 0x0

    const/16 v2, 0xe10

    .line 2303
    div-int/2addr v1, v2

    int-to-long v9, v1

    int-to-long v3, v6

    int-to-long v1, v2

    mul-long/2addr v1, v9

    sub-long/2addr v3, v1

    const/16 v1, 0x3c

    int-to-long v1, v1

    .line 2304
    div-long v11, v3, v1

    mul-long/2addr v1, v11

    sub-long/2addr v3, v1

    const/4 v13, 0x1

    int-to-long v1, v13

    .line 2305
    div-long v14, v3, v1

    const v1, 0xff00

    and-int/2addr v1, v6

    const/16 v16, 0x8

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v7, v1

    and-int/lit16 v1, v6, 0xff

    int-to-byte v5, v1

    .line 2308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TALKING\u00a0TEST"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2309
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    if-eqz v1, :cond_a

    if-eqz v0, :cond_a

    .line 2312
    :try_start_0
    new-instance v4, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$11;

    move-object v1, v4

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object v8, v4

    move/from16 v4, p3

    move/from16 v17, v5

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$11;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;[BZZI)V

    move-object/from16 v1, p1

    invoke-static {v1, v8}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface;->sendMsg(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface$CallBack;)V

    .line 2320
    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isCanbusCmdPorting(Landroid/content/Context;)Z

    move-result v1

    const/16 v8, 0xf

    const/16 v6, 0xc

    const/16 v5, 0xb

    const/16 v18, 0x9

    const/16 v19, 0x16

    const/4 v13, 0x2

    const/16 v20, 0x0

    if-eqz v1, :cond_4

    .line 2322
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$13;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v21

    aget v1, v1, v21

    const/16 v21, 0x40

    if-eq v1, v5, :cond_3

    if-eq v1, v6, :cond_3

    const/16 v22, -0x40

    if-eq v1, v8, :cond_2

    const/16 v2, 0x10

    if-eq v1, v2, :cond_1

    const/16 v2, 0x1b

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const/16 v1, 0x14

    long-to-int v2, v9

    int-to-byte v2, v2

    long-to-int v3, v11

    int-to-byte v3, v3

    long-to-int v4, v14

    int-to-byte v4, v4

    move/from16 v21, v2

    const/4 v8, 0x6

    move/from16 v2, p3

    move/from16 v22, v3

    move/from16 v3, p4

    move/from16 v23, v4

    const/16 v8, 0xa

    move-object/from16 v4, p2

    move/from16 v24, v5

    move/from16 v5, v21

    move/from16 v25, v6

    move/from16 v6, v22

    move/from16 v26, v7

    move/from16 v7, v23

    .line 2342
    invoke-static/range {v1 .. v7}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->sndSimplePsaPhoneNum(BZZ[BBBB)V

    const/4 v3, 0x7

    goto/16 :goto_1

    :pswitch_1
    move/from16 v24, v5

    move/from16 v25, v6

    move/from16 v26, v7

    const/16 v8, 0xa

    .line 2338
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    new-array v2, v8, [B

    aput-byte v19, v2, v20

    const/4 v3, 0x1

    aput-byte v22, v2, v3

    const/4 v3, 0x5

    aput-byte v3, v2, v13

    const/4 v4, 0x3

    aput-byte v21, v2, v4

    const/4 v4, 0x4

    aput-byte v13, v2, v4

    long-to-int v4, v11

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    long-to-int v3, v14

    int-to-byte v3, v3

    const/4 v4, 0x6

    aput-byte v3, v2, v4

    const/4 v3, 0x7

    aput-byte v20, v2, v3

    aput-byte v20, v2, v16

    aput-byte v20, v2, v18

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_1

    :cond_0
    move/from16 v24, v5

    move/from16 v25, v6

    move/from16 v26, v7

    const/4 v3, 0x7

    const/16 v8, 0xa

    .line 2346
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    const/4 v2, 0x6

    new-array v4, v2, [B

    aput-byte v19, v4, v20

    const/16 v2, -0x39

    const/4 v5, 0x1

    aput-byte v2, v4, v5

    aput-byte v20, v4, v13

    const/4 v2, 0x3

    aput-byte v2, v4, v2

    const/4 v2, 0x4

    aput-byte v26, v4, v2

    const/4 v2, 0x5

    aput-byte v17, v4, v2

    invoke-virtual {v1, v4}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_1

    :cond_1
    move/from16 v24, v5

    move/from16 v25, v6

    move/from16 v26, v7

    const/4 v3, 0x7

    const/16 v8, 0xa

    long-to-int v1, v9

    int-to-byte v1, v1

    long-to-int v2, v11

    int-to-byte v2, v2

    long-to-int v4, v14

    int-to-byte v4, v4

    const/4 v5, 0x1

    .line 2333
    invoke-static {v5, v13, v1, v2, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->sndHondaXinbasPhone(ZBBBB)V

    goto :goto_1

    :cond_2
    move/from16 v24, v5

    move/from16 v25, v6

    move/from16 v26, v7

    const/4 v3, 0x7

    const/4 v5, 0x1

    const/16 v8, 0xa

    .line 2330
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    new-array v2, v8, [B

    aput-byte v19, v2, v20

    aput-byte v22, v2, v5

    const/4 v4, 0x5

    aput-byte v4, v2, v13

    const/4 v5, 0x3

    aput-byte v21, v2, v5

    const/4 v5, 0x4

    aput-byte v13, v2, v5

    long-to-int v5, v11

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    long-to-int v4, v14

    int-to-byte v4, v4

    const/4 v5, 0x6

    aput-byte v4, v2, v5

    aput-byte v20, v2, v3

    aput-byte v20, v2, v16

    aput-byte v20, v2, v18

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto :goto_1

    :cond_3
    move/from16 v24, v5

    move/from16 v25, v6

    move/from16 v26, v7

    const/4 v3, 0x7

    const/16 v8, 0xa

    .line 2326
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    new-array v2, v3, [B

    aput-byte v19, v2, v20

    const/16 v4, -0x7c

    const/4 v5, 0x1

    aput-byte v4, v2, v5

    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_XINBAS_MEDIA_TYPE;->MID_PHONE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_XINBAS_MEDIA_TYPE;

    invoke-virtual {v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_XINBAS_MEDIA_TYPE;->ordinal()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v13

    const/4 v4, 0x3

    aput-byte v21, v2, v4

    const/4 v4, 0x4

    aput-byte v20, v2, v4

    long-to-int v4, v14

    int-to-byte v4, v4

    const/4 v5, 0x5

    aput-byte v4, v2, v5

    long-to-int v4, v11

    int-to-byte v4, v4

    const/4 v5, 0x6

    aput-byte v4, v2, v5

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto :goto_1

    :cond_4
    :goto_0
    move/from16 v24, v5

    move/from16 v25, v6

    move/from16 v26, v7

    const/4 v3, 0x7

    const/16 v8, 0xa

    .line 2358
    :goto_1
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$13;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/16 v2, 0x32

    if-eq v1, v2, :cond_9

    const/16 v2, 0x37

    if-eq v1, v2, :cond_8

    const/16 v2, 0x39

    if-eq v1, v2, :cond_6

    const/16 v2, 0x3d

    if-eq v1, v2, :cond_5

    goto/16 :goto_3

    .line 2377
    :cond_5
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    const/4 v2, 0x4

    new-array v3, v2, [B

    aput-byte v19, v3, v20

    const/16 v2, -0x3c

    const/4 v4, 0x1

    aput-byte v2, v3, v4

    const/4 v2, 0x5

    aput-byte v2, v3, v13

    const/4 v4, 0x3

    aput-byte v20, v3, v4

    invoke-static {v3, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    .line 2378
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    new-array v1, v2, [B

    aput-byte v19, v1, v20

    const/16 v2, -0x3b

    const/4 v3, 0x1

    aput-byte v2, v1, v3

    aput-byte v13, v1, v13

    long-to-int v2, v11

    int-to-byte v2, v2

    const/4 v3, 0x3

    aput-byte v2, v1, v3

    long-to-int v2, v14

    int-to-byte v2, v2

    const/4 v3, 0x4

    aput-byte v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_3

    :cond_6
    const/16 v1, -0x40

    const/4 v2, 0x5

    .line 2364
    sget-boolean v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->isIncoming:Z

    if-eqz v3, :cond_7

    move v3, v13

    goto :goto_2

    :cond_7
    const/4 v3, 0x4

    :goto_2
    move/from16 v4, v26

    move/from16 v5, v17

    move-object/from16 v6, p2

    invoke-static/range {v1 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->sndThrumpchiRaisePhone(BBIII[B)V

    goto :goto_3

    :cond_8
    const/4 v0, 0x6

    new-array v0, v0, [B

    aput-byte v19, v0, v20

    const/16 v1, -0x3d

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    long-to-int v1, v14

    int-to-byte v1, v1

    aput-byte v1, v0, v13

    long-to-int v1, v11

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    long-to-int v1, v9

    int-to-byte v1, v1

    const/4 v2, 0x4

    aput-byte v1, v0, v2

    const/4 v1, 0x5

    aput-byte v20, v0, v1

    .line 2360
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    goto :goto_3

    :cond_9
    const/16 v0, 0xf

    new-array v0, v0, [B

    aput-byte v19, v0, v20

    const/16 v1, -0x6f

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    aput-byte v8, v0, v13

    const/4 v1, 0x3

    aput-byte v20, v0, v1

    const/4 v1, 0x4

    aput-byte v20, v0, v1

    const/4 v1, 0x5

    aput-byte v20, v0, v1

    const/4 v1, 0x6

    aput-byte v20, v0, v1

    aput-byte v20, v0, v3

    aput-byte v20, v0, v16

    aput-byte v20, v0, v18

    aput-byte v20, v0, v8

    aput-byte v20, v0, v24

    aput-byte v20, v0, v25

    const/16 v1, 0xd

    aput-byte v20, v0, v1

    const/16 v1, 0xe

    aput-byte v20, v0, v1

    .line 2371
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    const/4 v0, 0x5

    new-array v0, v0, [B

    aput-byte v19, v0, v20

    const/16 v1, -0x33

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    const/4 v1, 0x4

    aput-byte v1, v0, v13

    const/4 v2, 0x3

    aput-byte v26, v0, v2

    aput-byte v17, v0, v1

    .line 2373
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    const/16 v2, 0x1d

    invoke-static {v0, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->CompensateZero([BI)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 2423
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
