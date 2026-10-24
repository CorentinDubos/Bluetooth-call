.class public Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;
.super Ljava/lang/Object;
.source "DateAndTimeRepCanbus.java"


# static fields
.field private static final KEY_AUTO_GPS_TIME:Ljava/lang/String; = "auto_gps_time"

.field static mDateAndTimeRepCanbus:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;

.field private static mFormat:Ljava/text/DateFormat;


# instance fields
.field private MMddyyyy:Ljava/text/DateFormat;

.field private bDay:I

.field private bHours:I

.field private bHours24H:I

.field private bMins:I

.field private bMonth:I

.field private bSecond:I

.field private bYear2Dig:I

.field private bYearTotal:I

.field private ddMMyyyy:Ljava/text/DateFormat;

.field private isFormat24H:Z

.field private isFormatPm:Z

.field private isGpsTime:Z

.field private systemDateFormat:I

.field private yyyyMMdd:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;

    invoke-direct {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;-><init>()V

    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->mDateAndTimeRepCanbus:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy/M/d"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->yyyyMMdd:Ljava/text/DateFormat;

    .line 29
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "M/d/yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->MMddyyyy:Ljava/text/DateFormat;

    .line 30
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "d/M/yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->ddMMyyyy:Ljava/text/DateFormat;

    return-void
.end method

.method private static getDateFormat()Ljava/text/DateFormat;
    .locals 2

    .line 47
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->mFormat:Ljava/text/DateFormat;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy/MM/dd==HHmm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->mFormat:Ljava/text/DateFormat;

    .line 52
    :cond_0
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->mFormat:Ljava/text/DateFormat;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;
    .locals 2

    const-class v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;

    monitor-enter v0

    .line 40
    :try_start_0
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->mDateAndTimeRepCanbus:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;

    if-nez v1, :cond_0

    .line 41
    new-instance v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;

    invoke-direct {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;-><init>()V

    sput-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->mDateAndTimeRepCanbus:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;

    .line 43
    :cond_0
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->mDateAndTimeRepCanbus:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private printCanbusParameter()V
    .locals 6

    .line 674
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getCanBaudRate()I

    move-result v0

    .line 675
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getCanPackType()I

    move-result v1

    .line 676
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getCanIsAppHandleKey()I

    move-result v2

    const-string v3, "DateAndTimeRepCanbus"

    .line 677
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ljq printInfo: baudRate->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", packType->"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", isAppHandleKey->"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 679
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private sndBmwE90Time()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [B

    .line 157
    fill-array-data v1, :array_0

    const/4 v2, 0x5

    new-array v2, v2, [B

    .line 158
    iget v3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bHours:I

    int-to-byte v3, v3

    const/4 v4, 0x0

    aput-byte v3, v2, v4

    iget v3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bMins:I

    int-to-byte v3, v3

    const/4 v4, 0x1

    aput-byte v3, v2, v4

    iget v3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bDay:I

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    iget v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bMonth:I

    int-to-byte v0, v0

    const/4 v3, 0x3

    aput-byte v0, v2, v3

    iget v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bYear2Dig:I

    int-to-byte v0, v0

    const/4 v3, 0x4

    aput-byte v0, v2, v3

    .line 165
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    return-void

    :array_0
    .array-data 1
        0x16t
        -0x7dt
    .end array-data
.end method

.method private sndHiworldAccordTime()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 270
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    const/16 v1, 0xc

    new-array v1, v1, [B

    const/16 v2, 0x16

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    const/16 v2, -0x35

    const/4 v4, 0x1

    aput-byte v2, v1, v4

    const/4 v2, 0x2

    aput-byte v3, v1, v2

    iget v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bHours24H:I

    int-to-byte v2, v2

    const/4 v5, 0x3

    aput-byte v2, v1, v5

    iget v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bMins:I

    int-to-byte v2, v2

    const/4 v5, 0x4

    aput-byte v2, v1, v5

    const/4 v2, 0x5

    aput-byte v3, v1, v2

    const/4 v2, 0x6

    aput-byte v3, v1, v2

    .line 276
    iget-boolean v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->isFormat24H:Z

    if-ne v2, v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    int-to-byte v2, v4

    const/4 v4, 0x7

    aput-byte v2, v1, v4

    const/16 v2, 0x8

    aput-byte v3, v1, v2

    const/16 v2, 0x9

    aput-byte v3, v1, v2

    const/16 v2, 0xa

    aput-byte v3, v1, v2

    const/16 v2, 0xb

    aput-byte v3, v1, v2

    .line 270
    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    return-void
.end method

.method private sndHiworldCrvdTime()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 263
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [B

    const/16 v2, 0x16

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    const/4 v2, 0x1

    const/16 v4, -0x4b

    aput-byte v4, v1, v2

    iget v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bHours24H:I

    int-to-byte v2, v2

    const/4 v4, 0x2

    aput-byte v2, v1, v4

    iget v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bMins:I

    int-to-byte v2, v2

    const/4 v4, 0x3

    aput-byte v2, v1, v4

    const/4 v2, 0x4

    aput-byte v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    return-void
.end method

.method private sndHiworldNissanDateTime()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [B

    .line 246
    fill-array-data v1, :array_0

    const/16 v2, 0xa

    new-array v2, v2, [B

    const/4 v3, 0x0

    aput-byte v3, v2, v3

    const/4 v4, 0x1

    aput-byte v3, v2, v4

    aput-byte v3, v2, v0

    .line 247
    iget v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bHours24H:I

    int-to-byte v0, v0

    const/4 v5, 0x3

    aput-byte v0, v2, v5

    iget v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bMins:I

    int-to-byte v0, v0

    const/4 v5, 0x4

    aput-byte v0, v2, v5

    .line 253
    iget-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->isFormat24H:Z

    if-ne v0, v4, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    int-to-byte v0, v0

    const/4 v5, 0x5

    aput-byte v0, v2, v5

    const/4 v0, 0x6

    .line 254
    iget-boolean v5, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->isFormatPm:Z

    if-ne v5, v4, :cond_1

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    int-to-byte v4, v4

    aput-byte v4, v2, v0

    const/4 v0, 0x7

    aput-byte v3, v2, v0

    const/16 v0, 0x8

    aput-byte v3, v2, v0

    const/16 v0, 0x9

    aput-byte v3, v2, v0

    .line 259
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    return-void

    :array_0
    .array-data 1
        0x16t
        -0x35t
    .end array-data
.end method

.method private sndHondaAccordBinaryTime()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [B

    .line 169
    fill-array-data v1, :array_0

    const/4 v2, 0x3

    new-array v2, v2, [B

    .line 171
    iget-boolean v3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->isFormat24H:Z

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    const/4 v5, 0x0

    aput-byte v3, v2, v5

    iget v3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bHours:I

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    iget v3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bMins:I

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 175
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    return-void

    nop

    :array_0
    .array-data 1
        0x16t
        -0x77t
    .end array-data
.end method

.method private sndJeepRaise([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 324
    fill-array-data v0, :array_0

    .line 325
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    invoke-static {v0, p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    return-void

    :array_0
    .array-data 1
        0x16t
        -0x3at
        0x50t
    .end array-data
.end method

.method private sndJeepSimpleDateAndTime()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [B

    .line 361
    fill-array-data v1, :array_0

    .line 362
    iget-boolean v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->isFormat24H:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bHours24H:I

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bHours:I

    .line 364
    :goto_0
    iget-boolean v3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->isFormat24H:Z

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    const/4 v5, 0x0

    const/4 v6, 0x7

    invoke-static {v5, v6, v3}, Lcom/hzbhd/midwareproxy/utils/DataHandleUtils;->setIntByteWithBit(IIZ)I

    move-result v3

    .line 365
    invoke-static {v3, v2, v5, v6}, Lcom/hzbhd/midwareproxy/utils/DataHandleUtils;->setIntFromByteWithBit(IIII)I

    move-result v2

    const/4 v3, 0x6

    new-array v3, v3, [B

    .line 366
    iget v6, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bYear2Dig:I

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    iget v5, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bMonth:I

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    iget v4, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bDay:I

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    const/4 v0, 0x3

    int-to-byte v2, v2

    aput-byte v2, v3, v0

    const/4 v0, 0x4

    iget v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bMins:I

    int-to-byte v2, v2

    aput-byte v2, v3, v0

    const/4 v0, 0x5

    const/4 v2, -0x1

    aput-byte v2, v3, v0

    .line 367
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-static {v1, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    return-void

    nop

    :array_0
    .array-data 1
        0x16t
        -0x39t
    .end array-data
.end method

.method private sndJeepXinbasDateAndTime()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [B

    .line 354
    fill-array-data v1, :array_0

    .line 355
    iget-boolean v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->isFormat24H:Z

    int-to-byte v2, v2

    const/4 v3, 0x7

    new-array v3, v3, [B

    const/4 v4, 0x0

    aput-byte v4, v3, v4

    const/4 v5, 0x1

    aput-byte v4, v3, v5

    aput-byte v4, v3, v0

    const/4 v0, 0x3

    .line 356
    iget v5, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bHours24H:I

    int-to-byte v5, v5

    aput-byte v5, v3, v0

    const/4 v0, 0x4

    iget v5, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bMins:I

    int-to-byte v5, v5

    aput-byte v5, v3, v0

    const/4 v0, 0x5

    aput-byte v4, v3, v0

    const/4 v0, 0x6

    aput-byte v2, v3, v0

    .line 357
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-static {v1, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    return-void

    :array_0
    .array-data 1
        0x16t
        -0x79t
    .end array-data
.end method

.method private sndMgRaiseDateAndTime()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [B

    .line 341
    fill-array-data v1, :array_0

    .line 342
    iget-boolean v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->isFormat24H:Z

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    shl-int/lit8 v2, v2, 0x7

    and-int/lit16 v2, v2, 0x80

    iget v4, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bHours:I

    and-int/lit8 v4, v4, 0x7f

    or-int/2addr v2, v4

    int-to-byte v2, v2

    const/4 v4, 0x5

    new-array v4, v4, [B

    const/4 v5, 0x0

    .line 343
    iget v6, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bYear2Dig:I

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    iget v5, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bMonth:I

    int-to-byte v5, v5

    aput-byte v5, v4, v3

    iget v3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bDay:I

    int-to-byte v3, v3

    aput-byte v3, v4, v0

    const/4 v0, 0x3

    aput-byte v2, v4, v0

    const/4 v0, 0x4

    iget v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bMins:I

    int-to-byte v2, v2

    aput-byte v2, v4, v0

    .line 350
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-static {v1, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    return-void

    :array_0
    .array-data 1
        0x16t
        -0x5at
    .end array-data
.end method

.method private sndPsaRaiseDateAndTime()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [B

    .line 329
    fill-array-data v1, :array_0

    const/4 v2, 0x5

    new-array v2, v2, [B

    .line 330
    iget v3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bYear2Dig:I

    int-to-byte v3, v3

    const/4 v4, 0x0

    aput-byte v3, v2, v4

    iget v3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bMonth:I

    int-to-byte v3, v3

    const/4 v4, 0x1

    aput-byte v3, v2, v4

    iget v3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bDay:I

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    iget v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bHours24H:I

    int-to-byte v0, v0

    const/4 v3, 0x3

    aput-byte v0, v2, v3

    iget v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bMins:I

    int-to-byte v0, v0

    const/4 v3, 0x4

    aput-byte v0, v2, v3

    .line 337
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    return-void

    :array_0
    .array-data 1
        0x16t
        -0x5at
    .end array-data
.end method

.method private sndRaiseKiaTime()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [B

    .line 194
    fill-array-data v1, :array_0

    .line 195
    iget-boolean v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->isFormat24H:Z

    int-to-byte v2, v2

    const/4 v3, 0x3

    new-array v3, v3, [B

    const/4 v4, 0x0

    .line 196
    iget v5, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bMins:I

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bHours24H:I

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    aput-byte v2, v3, v0

    .line 201
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-static {v1, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    return-void

    :array_0
    .array-data 1
        0x16t
        0x6t
    .end array-data
.end method

.method private sndSimpleFordEdgeTime()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [B

    .line 144
    fill-array-data v1, :array_0

    .line 145
    iget-boolean v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->isFormatPm:Z

    shl-int/lit8 v2, v2, 0x7

    and-int/lit16 v2, v2, 0x80

    iget-boolean v3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->isFormat24H:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    const/16 v3, 0x40

    :goto_0
    or-int/2addr v2, v3

    int-to-byte v2, v2

    const/4 v3, 0x3

    new-array v3, v3, [B

    .line 146
    iget v5, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bHours:I

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bMins:I

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    aput-byte v2, v3, v0

    .line 151
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-static {v1, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    return-void

    nop

    :array_0
    .array-data 1
        0x16t
        -0x38t
    .end array-data
.end method

.method private sndSimpleHondaCrvTime()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [B

    .line 182
    fill-array-data v1, :array_0

    const/4 v2, 0x4

    new-array v2, v2, [B

    const/4 v3, 0x0

    aput-byte v3, v2, v3

    .line 185
    iget-boolean v3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->isFormat24H:Z

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    iget v3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bHours24H:I

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    const/4 v0, 0x3

    iget v3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bMins:I

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 189
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    return-void

    :array_0
    .array-data 1
        0x16t
        -0x38t
    .end array-data
.end method

.method private sndSimpleHondaDATime()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x3

    new-array v1, v0, [B

    .line 298
    fill-array-data v1, :array_0

    .line 299
    iget-boolean v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->isFormat24H:Z

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    shl-int/lit8 v2, v2, 0x7

    and-int/lit16 v2, v2, 0x80

    iget v4, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bHours24H:I

    and-int/lit8 v4, v4, 0x7f

    or-int/2addr v2, v4

    int-to-byte v2, v2

    new-array v0, v0, [B

    const/4 v4, 0x0

    aput-byte v2, v0, v4

    .line 300
    iget v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bMins:I

    int-to-byte v2, v2

    aput-byte v2, v0, v3

    const/4 v2, 0x2

    aput-byte v4, v0, v2

    .line 305
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v2

    invoke-static {v1, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    return-void

    nop

    :array_0
    .array-data 1
        0x16t
        -0x3at
        0x50t
    .end array-data
.end method

.method private sndSimpleKiaTime()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x3

    new-array v1, v0, [B

    .line 117
    fill-array-data v1, :array_0

    .line 118
    iget-boolean v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->isFormat24H:Z

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    const/4 v4, 0x7

    shl-int/2addr v2, v4

    and-int/lit16 v2, v2, 0x80

    iget v5, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bHours:I

    and-int/lit8 v5, v5, 0x7f

    or-int/2addr v2, v5

    int-to-byte v2, v2

    .line 119
    iget-boolean v5, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->isFormatPm:Z

    shl-int/2addr v5, v4

    and-int/lit16 v5, v5, 0x80

    iget-boolean v6, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->isGpsTime:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    const/16 v6, 0x40

    goto :goto_0

    :cond_0
    move v6, v7

    :goto_0
    or-int/2addr v5, v6

    int-to-byte v5, v5

    new-array v4, v4, [B

    aput-byte v7, v4, v7

    aput-byte v7, v4, v3

    const/4 v3, 0x2

    aput-byte v7, v4, v3

    aput-byte v2, v4, v0

    const/4 v0, 0x4

    .line 120
    iget v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bMins:I

    int-to-byte v2, v2

    aput-byte v2, v4, v0

    const/4 v0, 0x5

    aput-byte v7, v4, v0

    const/4 v0, 0x6

    aput-byte v5, v4, v0

    .line 129
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-static {v1, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    return-void

    nop

    :array_0
    .array-data 1
        0x16t
        -0x3at
        0x1t
    .end array-data
.end method

.method private sndSimpleNissanTime()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x3

    new-array v1, v0, [B

    .line 133
    fill-array-data v1, :array_0

    .line 134
    iget-boolean v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->isFormatPm:Z

    shl-int/lit8 v2, v2, 0x7

    and-int/lit16 v2, v2, 0x80

    iget-boolean v3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->isFormat24H:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    const/16 v3, 0x40

    :goto_0
    or-int/2addr v2, v3

    int-to-byte v2, v2

    new-array v0, v0, [B

    .line 135
    iget v3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bHours:I

    int-to-byte v3, v3

    aput-byte v3, v0, v4

    const/4 v3, 0x1

    iget v4, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bMins:I

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    const/4 v3, 0x2

    aput-byte v2, v0, v3

    .line 140
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v2

    invoke-static {v1, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    return-void

    nop

    :array_0
    .array-data 1
        0x16t
        -0x3at
        0x1t
    .end array-data
.end method

.method private sndXinbasFiestaDateTime(B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [B

    const/16 v2, 0x16

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    const/4 v2, 0x1

    aput-byte p1, v1, v2

    const/4 p1, 0x6

    new-array p1, p1, [B

    .line 234
    iget v4, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bYear2Dig:I

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    iget v4, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bMonth:I

    int-to-byte v4, v4

    aput-byte v4, p1, v2

    iget v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bDay:I

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    iget v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bHours24H:I

    int-to-byte v0, v0

    const/4 v2, 0x3

    aput-byte v0, p1, v2

    iget v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bMins:I

    int-to-byte v0, v0

    const/4 v2, 0x4

    aput-byte v0, p1, v2

    const/4 v0, 0x5

    aput-byte v3, p1, v0

    .line 242
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-static {v1, p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    return-void
.end method

.method private sndXinbasHondaAccordTime(B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [B

    const/16 v2, 0x16

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    const/4 v2, 0x1

    aput-byte p1, v1, v2

    .line 220
    iget-boolean p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->isFormat24H:Z

    xor-int/2addr p1, v2

    int-to-byte p1, p1

    const/4 v4, 0x6

    new-array v4, v4, [B

    .line 221
    iget v5, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bYear2Dig:I

    int-to-byte v5, v5

    aput-byte v5, v4, v3

    iget v3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bMonth:I

    int-to-byte v3, v3

    aput-byte v3, v4, v2

    iget v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bDay:I

    int-to-byte v2, v2

    aput-byte v2, v4, v0

    const/4 v0, 0x3

    aput-byte p1, v4, v0

    const/4 p1, 0x4

    iget v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bHours24H:I

    int-to-byte v0, v0

    aput-byte v0, v4, p1

    const/4 p1, 0x5

    iget v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bMins:I

    int-to-byte v0, v0

    aput-byte v0, v4, p1

    .line 229
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    invoke-static {v1, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    return-void
.end method

.method private sndXinbasHondaCivc2012Time()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [B

    .line 285
    fill-array-data v1, :array_0

    .line 286
    iget-boolean v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->isFormat24H:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/16 v2, 0x80

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    int-to-byte v2, v2

    const/4 v4, 0x3

    new-array v4, v4, [B

    aput-byte v2, v4, v3

    const/4 v2, 0x1

    .line 287
    iget v3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bHours24H:I

    int-to-byte v3, v3

    aput-byte v3, v4, v2

    iget v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bMins:I

    int-to-byte v2, v2

    aput-byte v2, v4, v0

    .line 292
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-static {v1, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    return-void

    :array_0
    .array-data 1
        0x16t
        -0x6et
    .end array-data
.end method

.method private sndXinbasHondaDATime()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [B

    .line 309
    fill-array-data v1, :array_0

    .line 310
    iget-boolean v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->isFormat24H:Z

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    const/4 v4, 0x7

    shl-int/2addr v2, v4

    and-int/lit16 v2, v2, 0x80

    iget v5, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bHours:I

    and-int/lit8 v5, v5, 0x7f

    or-int/2addr v2, v5

    int-to-byte v2, v2

    new-array v4, v4, [B

    const/4 v5, 0x0

    aput-byte v5, v4, v5

    aput-byte v5, v4, v3

    aput-byte v5, v4, v0

    const/4 v0, 0x3

    aput-byte v2, v4, v0

    const/4 v0, 0x4

    .line 311
    iget v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bMins:I

    int-to-byte v2, v2

    aput-byte v2, v4, v0

    const/4 v0, 0x5

    aput-byte v5, v4, v0

    const/4 v0, 0x6

    aput-byte v5, v4, v0

    .line 320
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-static {v1, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    return-void

    :array_0
    .array-data 1
        0x16t
        -0x7bt
    .end array-data
.end method

.method private sndXinbasKiaTime()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [B

    .line 205
    fill-array-data v1, :array_0

    .line 206
    iget-boolean v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->isFormat24H:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/16 v2, 0x80

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    int-to-byte v2, v2

    const/4 v4, 0x6

    new-array v4, v4, [B

    .line 207
    iget v5, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bYear2Dig:I

    int-to-byte v5, v5

    aput-byte v5, v4, v3

    const/4 v3, 0x1

    iget v5, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bMonth:I

    int-to-byte v5, v5

    aput-byte v5, v4, v3

    iget v3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bDay:I

    int-to-byte v3, v3

    aput-byte v3, v4, v0

    const/4 v0, 0x3

    iget v3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bHours:I

    int-to-byte v3, v3

    aput-byte v3, v4, v0

    const/4 v0, 0x4

    iget v3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bMins:I

    int-to-byte v3, v3

    aput-byte v3, v4, v0

    const/4 v0, 0x5

    aput-byte v2, v4, v0

    .line 215
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-static {v1, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    return-void

    :array_0
    .array-data 1
        0x16t
        -0x7at
    .end array-data
.end method


# virtual methods
.method public getCurrentDateAndTime(Landroid/content/Context;)[B
    .locals 12

    .line 58
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 59
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 60
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v2

    .line 61
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 63
    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "=="

    .line 64
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const-string v6, "/"

    const-string v7, ""

    .line 65
    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 67
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 68
    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v6

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 69
    new-instance v8, Ljava/util/GregorianCalendar;

    invoke-direct {v8}, Ljava/util/GregorianCalendar;-><init>()V

    .line 70
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v9, 0x0

    const/4 v10, 0x4

    .line 71
    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iput v11, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bYearTotal:I

    const/4 v11, 0x2

    .line 72
    invoke-virtual {v2, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iput v11, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bYear2Dig:I

    const/4 v11, 0x6

    .line 73
    invoke-virtual {v2, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bMonth:I

    const/16 v10, 0x8

    .line 74
    invoke-virtual {v2, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iput v11, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bDay:I

    .line 75
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    div-int/lit8 v11, v11, 0x64

    iput v11, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bHours:I

    .line 76
    iput v11, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bHours24H:I

    .line 77
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    rem-int/lit8 v4, v4, 0x64

    iput v4, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bMins:I

    const/16 v4, 0xd

    .line 78
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bSecond:I

    .line 79
    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->isFormat24H:Z

    const/16 v1, 0x9

    .line 80
    invoke-virtual {v8, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    if-ne v4, v5, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v9

    :goto_0
    iput-boolean v4, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->isFormatPm:Z

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "auto_gps_time"

    invoke-static {v4, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_1

    move v4, v5

    goto :goto_1

    :cond_1
    move v4, v9

    :goto_1
    iput-boolean v4, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->isGpsTime:Z

    .line 82
    invoke-virtual {p0, p1, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->getSystemDateFormat(Landroid/content/Context;Ljava/util/Date;)I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->systemDateFormat:I

    .line 84
    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p1

    const/16 v0, 0xc

    if-nez p1, :cond_3

    .line 87
    iget p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bHours:I

    if-lt p1, v0, :cond_2

    sub-int/2addr p1, v0

    .line 88
    iput p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bHours:I

    :cond_2
    const-string p1, "PM"

    .line 90
    invoke-virtual {v6, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 91
    iget p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bHours24H:I

    if-ge p1, v0, :cond_5

    add-int/2addr p1, v0

    .line 92
    iput p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bHours24H:I

    .line 93
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bHours24H:I

    div-int/lit8 v0, v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    aget-byte p1, p1, v9

    aput-byte p1, v3, v10

    .line 94
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bHours24H:I

    rem-int/lit8 v0, v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    aget-byte p1, p1, v9

    aput-byte p1, v3, v1

    goto :goto_3

    .line 99
    :cond_3
    iget p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bHours:I

    if-lt p1, v0, :cond_4

    goto :goto_2

    :cond_4
    move v5, v9

    :goto_2
    iput-boolean v5, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->isFormatPm:Z

    .line 101
    :cond_5
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "dateTimeStr="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "getCurrentDateAndTime"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bYearTotal="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bYearTotal:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bYear2Dig="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bYear2Dig:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bMonth="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bMonth:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bDay="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bDay:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bHours="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bHours:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bMins="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bMins:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bSecond="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bSecond:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isFormatPm="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->isFormatPm:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isGpsTime="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->isGpsTime:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isFormat24H="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->isFormat24H:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method public getSystemDateFormat(Landroid/content/Context;Ljava/util/Date;)I
    .locals 1

    .line 665
    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 666
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->ddMMyyyy:Ljava/text/DateFormat;

    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 667
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->yyyyMMdd:Ljava/text/DateFormat;

    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x2

    return p1

    .line 668
    :cond_1
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->MMddyyyy:Ljava/text/DateFormat;

    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x3

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public reportCanbusInfo(Landroid/content/Context;)V
    .locals 18

    move-object/from16 v1, p0

    .line 371
    invoke-direct/range {p0 .. p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->printCanbusParameter()V

    .line 373
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->getCurrentDateAndTime(Landroid/content/Context;)[B

    .line 375
    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isCanbusCmdPorting(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x6

    const/4 v3, 0x7

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v0, :cond_2

    .line 376
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v10

    invoke-virtual {v10}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v10

    aget v0, v0, v10

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    const/16 v0, -0x7e

    .line 452
    invoke-direct {v1, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->sndXinbasFiestaDateTime(B)V

    goto/16 :goto_2

    .line 449
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->sndPsaRaiseDateAndTime()V

    goto/16 :goto_2

    .line 443
    :pswitch_2
    iget-boolean v0, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->isFormat24H:Z

    if-eqz v0, :cond_0

    move v0, v9

    goto :goto_0

    :cond_0
    move v0, v8

    :goto_0
    shl-int/2addr v0, v3

    and-int/lit16 v0, v0, 0x80

    iget v10, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bHours:I

    and-int/lit8 v10, v10, 0x7f

    or-int/2addr v0, v10

    int-to-byte v0, v0

    new-array v10, v2, [B

    aput-byte v0, v10, v9

    .line 444
    iget v0, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bMins:I

    int-to-byte v0, v0

    aput-byte v0, v10, v8

    aput-byte v9, v10, v7

    iget v0, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bYear2Dig:I

    int-to-byte v0, v0

    aput-byte v0, v10, v6

    iget v0, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bMonth:I

    int-to-byte v0, v0

    aput-byte v0, v10, v5

    iget v0, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bDay:I

    int-to-byte v0, v0

    aput-byte v0, v10, v4

    invoke-direct {v1, v10}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->sndJeepRaise([B)V

    goto :goto_2

    .line 437
    :pswitch_3
    iget-boolean v0, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->isFormat24H:Z

    if-eqz v0, :cond_1

    move v0, v9

    goto :goto_1

    :cond_1
    move v0, v8

    :goto_1
    shl-int/2addr v0, v3

    and-int/lit16 v0, v0, 0x80

    iget v10, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bHours:I

    and-int/lit8 v10, v10, 0x7f

    or-int/2addr v0, v10

    int-to-byte v0, v0

    new-array v10, v2, [B

    aput-byte v0, v10, v9

    .line 438
    iget v0, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bMins:I

    int-to-byte v0, v0

    aput-byte v0, v10, v8

    aput-byte v9, v10, v7

    aput-byte v9, v10, v6

    aput-byte v9, v10, v5

    aput-byte v9, v10, v4

    invoke-direct {v1, v10}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->sndJeepRaise([B)V

    goto :goto_2

    :pswitch_4
    const/16 v0, -0x7c

    .line 434
    invoke-direct {v1, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->sndXinbasFiestaDateTime(B)V

    goto :goto_2

    .line 427
    :pswitch_5
    invoke-direct/range {p0 .. p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->sndSimpleFordEdgeTime()V

    goto :goto_2

    .line 423
    :pswitch_6
    invoke-direct/range {p0 .. p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->sndBmwE90Time()V

    goto :goto_2

    .line 420
    :pswitch_7
    invoke-direct/range {p0 .. p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->sndSimpleNissanTime()V

    goto :goto_2

    .line 415
    :pswitch_8
    invoke-direct/range {p0 .. p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->sndXinbasHondaDATime()V

    goto :goto_2

    .line 412
    :pswitch_9
    invoke-direct/range {p0 .. p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->sndXinbasHondaCivc2012Time()V

    goto :goto_2

    :pswitch_a
    const/16 v0, -0x78

    .line 409
    invoke-direct {v1, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->sndXinbasHondaAccordTime(B)V

    goto :goto_2

    :pswitch_b
    const/16 v0, -0x79

    .line 405
    invoke-direct {v1, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->sndXinbasHondaAccordTime(B)V

    goto :goto_2

    .line 402
    :pswitch_c
    invoke-direct/range {p0 .. p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->sndSimpleHondaDATime()V

    goto :goto_2

    .line 397
    :pswitch_d
    invoke-direct/range {p0 .. p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->sndXinbasKiaTime()V

    goto :goto_2

    .line 393
    :pswitch_e
    invoke-direct/range {p0 .. p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->sndRaiseKiaTime()V

    goto :goto_2

    .line 390
    :pswitch_f
    invoke-direct/range {p0 .. p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->sndSimpleKiaTime()V

    .line 465
    :cond_2
    :goto_2
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v10

    invoke-virtual {v10}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v10

    aget v0, v0, v10

    const/16 v10, -0x5a

    const/16 v13, 0xb

    const/16 v14, 0xa

    const/16 v15, -0x35

    const/16 v11, 0xc

    const/16 v16, 0x8

    const/16 v12, 0x9

    const/16 v17, 0x16

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_b

    .line 656
    :pswitch_10
    invoke-direct/range {p0 .. p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->sndJeepSimpleDateAndTime()V

    goto/16 :goto_b

    .line 653
    :pswitch_11
    invoke-direct/range {p0 .. p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->sndJeepXinbasDateAndTime()V

    goto/16 :goto_b

    .line 637
    :pswitch_12
    iget-boolean v0, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->isFormat24H:Z

    if-eqz v0, :cond_3

    move v0, v8

    goto :goto_3

    :cond_3
    move v0, v9

    :goto_3
    int-to-byte v0, v0

    .line 638
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v10

    new-array v11, v11, [B

    aput-byte v17, v11, v9

    aput-byte v15, v11, v8

    aput-byte v9, v11, v7

    iget v7, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bHours24H:I

    int-to-byte v7, v7

    aput-byte v7, v11, v6

    iget v6, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bMins:I

    int-to-byte v6, v6

    aput-byte v6, v11, v5

    aput-byte v9, v11, v4

    aput-byte v9, v11, v2

    aput-byte v0, v11, v3

    iget v0, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bYear2Dig:I

    int-to-byte v0, v0

    aput-byte v0, v11, v16

    iget v0, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bMonth:I

    int-to-byte v0, v0

    aput-byte v0, v11, v12

    iget v0, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bDay:I

    int-to-byte v0, v0

    aput-byte v0, v11, v14

    aput-byte v9, v11, v13

    invoke-virtual {v10, v11}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_b

    .line 628
    :pswitch_13
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    new-array v11, v12, [B

    aput-byte v17, v11, v9

    aput-byte v10, v11, v8

    iget v8, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bYear2Dig:I

    int-to-byte v8, v8

    aput-byte v8, v11, v7

    iget v7, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bMonth:I

    int-to-byte v7, v7

    aput-byte v7, v11, v6

    iget v6, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bDay:I

    int-to-byte v6, v6

    aput-byte v6, v11, v5

    iget v5, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bHours24H:I

    int-to-byte v5, v5

    aput-byte v5, v11, v4

    iget v4, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bMins:I

    int-to-byte v4, v4

    aput-byte v4, v11, v2

    iget v2, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bSecond:I

    int-to-byte v2, v2

    aput-byte v2, v11, v3

    aput-byte v9, v11, v16

    invoke-virtual {v0, v11}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_b

    .line 619
    :pswitch_14
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "haval_h2_hiworld_hour"

    iget v3, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bHours24H:I

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 620
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "haval_h2_hiworld_mins"

    iget v3, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bMins:I

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 621
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "haval_h2_hiworld_second"

    iget v3, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bSecond:I

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 622
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    new-array v2, v4, [B

    aput-byte v17, v2, v9

    const/16 v3, -0x4b

    aput-byte v3, v2, v8

    iget v3, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bHours24H:I

    int-to-byte v3, v3

    aput-byte v3, v2, v7

    iget v3, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bMins:I

    int-to-byte v3, v3

    aput-byte v3, v2, v6

    iget v3, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bSecond:I

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    invoke-virtual {v0, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_b

    .line 611
    :pswitch_15
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    new-array v2, v2, [B

    aput-byte v17, v2, v9

    const/16 v3, -0x38

    aput-byte v3, v2, v8

    iget v3, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bMins:I

    int-to-byte v3, v3

    aput-byte v3, v2, v7

    iget v3, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bHours:I

    int-to-byte v3, v3

    aput-byte v3, v2, v6

    .line 614
    iget-boolean v3, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->isFormat24H:Z

    if-eqz v3, :cond_4

    move v3, v8

    goto :goto_4

    :cond_4
    move v3, v9

    :goto_4
    int-to-byte v3, v3

    aput-byte v3, v2, v5

    .line 615
    iget-boolean v3, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->isFormatPm:Z

    if-eqz v3, :cond_5

    goto :goto_5

    :cond_5
    move v8, v9

    :goto_5
    int-to-byte v3, v8

    aput-byte v3, v2, v4

    .line 611
    invoke-virtual {v0, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_b

    .line 582
    :pswitch_16
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    new-array v10, v11, [B

    aput-byte v17, v10, v9

    aput-byte v15, v10, v8

    aput-byte v9, v10, v7

    iget v7, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bHours:I

    int-to-byte v7, v7

    aput-byte v7, v10, v6

    iget v6, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bMins:I

    int-to-byte v6, v6

    aput-byte v6, v10, v5

    aput-byte v9, v10, v4

    aput-byte v9, v10, v2

    .line 588
    iget-boolean v2, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->isFormat24H:Z

    if-ne v2, v8, :cond_6

    goto :goto_6

    :cond_6
    move v8, v9

    :goto_6
    int-to-byte v2, v8

    aput-byte v2, v10, v3

    iget v2, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bYear2Dig:I

    int-to-byte v2, v2

    aput-byte v2, v10, v16

    iget v2, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bMonth:I

    int-to-byte v2, v2

    aput-byte v2, v10, v12

    iget v2, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bDay:I

    int-to-byte v2, v2

    aput-byte v2, v10, v14

    iget v2, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->systemDateFormat:I

    int-to-byte v2, v2

    aput-byte v2, v10, v13

    .line 582
    invoke-virtual {v0, v10}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_b

    .line 578
    :pswitch_17
    invoke-direct/range {p0 .. p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->sndMgRaiseDateAndTime()V

    goto/16 :goto_b

    .line 565
    :pswitch_18
    iget-boolean v0, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->isFormat24H:Z

    if-eqz v0, :cond_7

    move v0, v9

    goto :goto_7

    :cond_7
    move v0, v8

    :goto_7
    shl-int/2addr v0, v3

    and-int/lit16 v0, v0, 0x80

    iget v10, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bHours:I

    and-int/lit8 v10, v10, 0x7f

    or-int/2addr v0, v10

    int-to-byte v0, v0

    new-array v10, v12, [B

    aput-byte v17, v10, v9

    const/16 v9, -0x3a

    aput-byte v9, v10, v8

    const/16 v8, 0x50

    aput-byte v8, v10, v7

    aput-byte v0, v10, v6

    .line 566
    iget v0, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bMins:I

    int-to-byte v0, v0

    aput-byte v0, v10, v5

    iget v0, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bSecond:I

    int-to-byte v0, v0

    aput-byte v0, v10, v4

    iget v0, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bYear2Dig:I

    int-to-byte v0, v0

    aput-byte v0, v10, v2

    iget v0, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bMonth:I

    int-to-byte v0, v0

    aput-byte v0, v10, v3

    iget v0, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bDay:I

    int-to-byte v0, v0

    aput-byte v0, v10, v16

    invoke-static {v10}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    goto/16 :goto_b

    .line 553
    :pswitch_19
    iget-boolean v0, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->isFormat24H:Z

    if-eqz v0, :cond_8

    move v0, v9

    goto :goto_8

    :cond_8
    move v0, v8

    :goto_8
    shl-int/2addr v0, v3

    and-int/lit16 v0, v0, 0x80

    iget v10, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bHours:I

    and-int/lit8 v10, v10, 0x7f

    or-int/2addr v0, v10

    int-to-byte v0, v0

    new-array v10, v12, [B

    aput-byte v17, v10, v9

    const/16 v11, -0x3a

    aput-byte v11, v10, v8

    const/16 v8, 0x50

    aput-byte v8, v10, v7

    aput-byte v0, v10, v6

    .line 554
    iget v0, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bMins:I

    int-to-byte v0, v0

    aput-byte v0, v10, v5

    aput-byte v9, v10, v4

    iget v0, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bYear2Dig:I

    int-to-byte v0, v0

    aput-byte v0, v10, v2

    iget v0, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bMonth:I

    int-to-byte v0, v0

    aput-byte v0, v10, v3

    iget v0, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bDay:I

    int-to-byte v0, v0

    aput-byte v0, v10, v16

    invoke-static {v10}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    goto/16 :goto_b

    .line 542
    :pswitch_1a
    iget-boolean v0, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->isFormat24H:Z

    if-eqz v0, :cond_9

    move v0, v9

    goto :goto_9

    :cond_9
    move v0, v8

    :goto_9
    shl-int/2addr v0, v3

    and-int/lit16 v0, v0, 0x80

    iget v10, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bHours:I

    and-int/lit8 v10, v10, 0x7f

    or-int/2addr v0, v10

    int-to-byte v0, v0

    new-array v10, v12, [B

    aput-byte v17, v10, v9

    const/16 v11, -0x3a

    aput-byte v11, v10, v8

    const/16 v8, 0x50

    aput-byte v8, v10, v7

    aput-byte v0, v10, v6

    .line 543
    iget v0, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bMins:I

    int-to-byte v0, v0

    aput-byte v0, v10, v5

    aput-byte v9, v10, v4

    iget v0, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bYear2Dig:I

    int-to-byte v0, v0

    aput-byte v0, v10, v2

    iget v0, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bMonth:I

    int-to-byte v0, v0

    aput-byte v0, v10, v3

    iget v0, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bDay:I

    int-to-byte v0, v0

    aput-byte v0, v10, v16

    invoke-static {v10}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    goto/16 :goto_b

    .line 538
    :pswitch_1b
    invoke-direct/range {p0 .. p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->sndPsaRaiseDateAndTime()V

    goto/16 :goto_b

    .line 513
    :pswitch_1c
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    new-array v10, v11, [B

    aput-byte v17, v10, v9

    aput-byte v15, v10, v8

    aput-byte v9, v10, v7

    iget v7, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bHours:I

    int-to-byte v7, v7

    aput-byte v7, v10, v6

    iget v6, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bMins:I

    int-to-byte v6, v6

    aput-byte v6, v10, v5

    aput-byte v9, v10, v4

    aput-byte v9, v10, v2

    aput-byte v9, v10, v3

    aput-byte v9, v10, v16

    aput-byte v9, v10, v12

    aput-byte v9, v10, v14

    aput-byte v9, v10, v13

    invoke-virtual {v0, v10}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto :goto_b

    .line 498
    :pswitch_1d
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    new-array v10, v11, [B

    aput-byte v17, v10, v9

    aput-byte v15, v10, v8

    aput-byte v9, v10, v7

    iget v7, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bHours:I

    int-to-byte v7, v7

    aput-byte v7, v10, v6

    iget v6, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bMins:I

    int-to-byte v6, v6

    aput-byte v6, v10, v5

    aput-byte v9, v10, v4

    aput-byte v9, v10, v2

    .line 504
    iget-boolean v2, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->isFormat24H:Z

    if-ne v2, v8, :cond_a

    goto :goto_a

    :cond_a
    move v8, v9

    :goto_a
    int-to-byte v2, v8

    aput-byte v2, v10, v3

    iget v2, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bYear2Dig:I

    int-to-byte v2, v2

    aput-byte v2, v10, v16

    iget v2, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bMonth:I

    int-to-byte v2, v2

    aput-byte v2, v10, v12

    iget v2, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bDay:I

    int-to-byte v2, v2

    aput-byte v2, v10, v14

    aput-byte v9, v10, v13

    .line 498
    invoke-virtual {v0, v10}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto :goto_b

    :pswitch_1e
    new-array v0, v4, [B

    aput-byte v17, v0, v9

    aput-byte v10, v0, v8

    aput-byte v9, v0, v7

    aput-byte v9, v0, v6

    aput-byte v9, v0, v5

    new-array v2, v5, [B

    .line 489
    iget v3, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bHours24H:I

    int-to-byte v3, v3

    aput-byte v3, v2, v9

    iget v3, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->bMins:I

    int-to-byte v3, v3

    aput-byte v3, v2, v8

    aput-byte v9, v2, v7

    aput-byte v9, v2, v6

    .line 495
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v3

    invoke-static {v0, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto :goto_b

    .line 480
    :pswitch_1f
    invoke-direct/range {p0 .. p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->sndSimpleHondaCrvTime()V

    goto :goto_b

    .line 476
    :pswitch_20
    invoke-direct/range {p0 .. p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DateAndTimeRepCanbus;->sndSimpleHondaDATime()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_b

    :catch_0
    move-exception v0

    .line 660
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x28
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method
