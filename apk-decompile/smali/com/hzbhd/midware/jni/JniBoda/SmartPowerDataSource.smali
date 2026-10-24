.class public Lcom/hzbhd/midware/jni/JniBoda/SmartPowerDataSource;
.super Ljava/lang/Object;
.source "SmartPowerDataSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midware/jni/JniBoda/SmartPowerDataSource$DataCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static MSG_BUFFER_SIZE:I

.field private static MSG_MAX_SIZE:I

.field private static final TAG:Ljava/lang/String;

.field private static mDevFd:I

.field private static mLock:Ljava/lang/Object;

.field private static mReadDataBuf:[B

.field private static mSmartPowerDataSource:Lcom/hzbhd/midware/jni/JniBoda/SmartPowerDataSource;


# instance fields
.field private intent:Landroid/content/Intent;

.field mDataCallback:Lcom/hzbhd/midware/jni/JniBoda/SmartPowerDataSource$DataCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lcom/hzbhd/midware/jni/JniBoda/SmartPowerDataSource;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/midware/jni/JniBoda/SmartPowerDataSource;->TAG:Ljava/lang/String;

    const/16 v0, 0x400

    .line 37
    sput v0, Lcom/hzbhd/midware/jni/JniBoda/SmartPowerDataSource;->MSG_BUFFER_SIZE:I

    .line 38
    sput v0, Lcom/hzbhd/midware/jni/JniBoda/SmartPowerDataSource;->MSG_MAX_SIZE:I

    const/4 v0, 0x0

    .line 39
    sput-object v0, Lcom/hzbhd/midware/jni/JniBoda/SmartPowerDataSource;->mSmartPowerDataSource:Lcom/hzbhd/midware/jni/JniBoda/SmartPowerDataSource;

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/hzbhd/midware/jni/JniBoda/SmartPowerDataSource;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    sget v0, Lcom/hzbhd/midware/jni/JniBoda/JniBodaUtil;->UART_MPEG:I

    invoke-static {v0}, Lcom/hzbhd/midware/jni/JniBoda/JniBodaUtil;->uartOpen(I)I

    move-result v0

    sput v0, Lcom/hzbhd/midware/jni/JniBoda/SmartPowerDataSource;->mDevFd:I

    .line 49
    sget-object v0, Lcom/hzbhd/midware/jni/JniBoda/SmartPowerDataSource;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JniBodaUtil.uartOpen()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/hzbhd/midware/jni/JniBoda/SmartPowerDataSource;->mDevFd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    sget v0, Lcom/hzbhd/midware/jni/JniBoda/SmartPowerDataSource;->mDevFd:I

    const/16 v1, 0x2580

    const/16 v2, 0x4e

    const/16 v3, 0x8

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/hzbhd/midware/jni/JniBoda/JniBodaUtil;->uartSetup(IICII)I

    .line 51
    sget v0, Lcom/hzbhd/midware/jni/JniBoda/SmartPowerDataSource;->MSG_MAX_SIZE:I

    new-array v0, v0, [B

    sput-object v0, Lcom/hzbhd/midware/jni/JniBoda/SmartPowerDataSource;->mReadDataBuf:[B

    .line 52
    new-instance v0, Lcom/hzbhd/midware/jni/JniBoda/SmartPowerDataSource$1;

    invoke-direct {v0, p0}, Lcom/hzbhd/midware/jni/JniBoda/SmartPowerDataSource$1;-><init>(Lcom/hzbhd/midware/jni/JniBoda/SmartPowerDataSource;)V

    .line 58
    invoke-virtual {v0}, Lcom/hzbhd/midware/jni/JniBoda/SmartPowerDataSource$1;->start()V

    return-void
.end method

.method private callback([B)V
    .locals 3

    .line 148
    sget-object v0, Lcom/hzbhd/midware/jni/JniBoda/SmartPowerDataSource;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-static {p1, v2}, Lcom/hzbhd/misc/jni/FgeString;->bytes2HexString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lcom/hzbhd/midware/jni/JniBoda/SmartPowerDataSource;->mDataCallback:Lcom/hzbhd/midware/jni/JniBoda/SmartPowerDataSource$DataCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/hzbhd/midware/jni/JniBoda/SmartPowerDataSource$DataCallback;->callback([B)V

    :cond_0
    return-void
.end method

.method public static declared-synchronized closeDevice()V
    .locals 2

    const-class v0, Lcom/hzbhd/midware/jni/JniBoda/SmartPowerDataSource;

    monitor-enter v0

    .line 63
    :try_start_0
    sget-object v1, Lcom/hzbhd/midware/jni/JniBoda/SmartPowerDataSource;->mSmartPowerDataSource:Lcom/hzbhd/midware/jni/JniBoda/SmartPowerDataSource;

    if-eqz v1, :cond_0

    .line 64
    sget v1, Lcom/hzbhd/midware/jni/JniBoda/SmartPowerDataSource;->mDevFd:I

    invoke-static {v1}, Lcom/hzbhd/midware/jni/JniBoda/JniBodaUtil;->uartClose(I)V

    const/4 v1, -0x1

    .line 65
    sput v1, Lcom/hzbhd/midware/jni/JniBoda/SmartPowerDataSource;->mDevFd:I

    const/4 v1, 0x0

    .line 66
    sput-object v1, Lcom/hzbhd/midware/jni/JniBoda/SmartPowerDataSource;->mSmartPowerDataSource:Lcom/hzbhd/midware/jni/JniBoda/SmartPowerDataSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getDevice()Lcom/hzbhd/midware/jni/JniBoda/SmartPowerDataSource;
    .locals 2

    const-class v0, Lcom/hzbhd/midware/jni/JniBoda/SmartPowerDataSource;

    monitor-enter v0

    .line 71
    :try_start_0
    sget-object v1, Lcom/hzbhd/midware/jni/JniBoda/SmartPowerDataSource;->mSmartPowerDataSource:Lcom/hzbhd/midware/jni/JniBoda/SmartPowerDataSource;

    if-nez v1, :cond_0

    .line 72
    new-instance v1, Lcom/hzbhd/midware/jni/JniBoda/SmartPowerDataSource;

    invoke-direct {v1}, Lcom/hzbhd/midware/jni/JniBoda/SmartPowerDataSource;-><init>()V

    sput-object v1, Lcom/hzbhd/midware/jni/JniBoda/SmartPowerDataSource;->mSmartPowerDataSource:Lcom/hzbhd/midware/jni/JniBoda/SmartPowerDataSource;

    .line 74
    :cond_0
    sget-object v1, Lcom/hzbhd/midware/jni/JniBoda/SmartPowerDataSource;->mSmartPowerDataSource:Lcom/hzbhd/midware/jni/JniBoda/SmartPowerDataSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getDeviceSurgingPowerMsgData()[B
    .locals 4

    .line 117
    sget-object v0, Lcom/hzbhd/midware/jni/JniBoda/SmartPowerDataSource;->mReadDataBuf:[B

    invoke-direct {p0, v0}, Lcom/hzbhd/midware/jni/JniBoda/SmartPowerDataSource;->readData([B)I

    move-result v0

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dataReadLen:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "readData"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v0, :cond_0

    .line 120
    new-array v1, v0, [B

    .line 121
    sget-object v2, Lcom/hzbhd/midware/jni/JniBoda/SmartPowerDataSource;->mReadDataBuf:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private printOneMsg(Z[B)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 139
    sget-object p1, Lcom/hzbhd/midware/jni/JniBoda/SmartPowerDataSource;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p2

    invoke-static {p2, v1}, Lcom/hzbhd/misc/jni/FgeString;->bytes2HexString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :cond_1
    sget-object p1, Lcom/hzbhd/midware/jni/JniBoda/SmartPowerDataSource;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "send:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p2

    invoke-static {p2, v1}, Lcom/hzbhd/misc/jni/FgeString;->bytes2HexString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :goto_0
    invoke-direct {p0, p2}, Lcom/hzbhd/midware/jni/JniBoda/SmartPowerDataSource;->callback([B)V

    return-void
.end method

.method private readData([B)I
    .locals 2

    .line 129
    sget v0, Lcom/hzbhd/midware/jni/JniBoda/SmartPowerDataSource;->mDevFd:I

    array-length v1, p1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, p1, v1}, Lcom/hzbhd/midware/jni/JniBoda/JniBodaUtil;->uartRead(I[BI)I

    move-result p1

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "uartRead"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartPowerDataSource"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method


# virtual methods
.method public declared-synchronized getMsg()V
    .locals 3

    monitor-enter p0

    .line 103
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/hzbhd/midware/jni/JniBoda/SmartPowerDataSource;->getDeviceSurgingPowerMsgData()[B

    move-result-object v0

    const-wide/16 v1, 0x32

    .line 104
    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 107
    invoke-direct {p0, v1, v0}, Lcom/hzbhd/midware/jni/JniBoda/SmartPowerDataSource;->printOneMsg(Z[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sendDeviceSurgingPowerMsg([B)V
    .locals 4

    .line 78
    sget-object v0, Lcom/hzbhd/midware/jni/JniBoda/SmartPowerDataSource;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 80
    :try_start_0
    sget-object v1, Lcom/hzbhd/midware/jni/JniBoda/SmartPowerDataSource;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "send one msg:"

    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 81
    invoke-direct {p0, v1, p1}, Lcom/hzbhd/midware/jni/JniBoda/SmartPowerDataSource;->printOneMsg(Z[B)V

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 84
    sget v2, Lcom/hzbhd/midware/jni/JniBoda/SmartPowerDataSource;->mDevFd:I

    array-length v3, p1

    invoke-static {v2, p1, v3}, Lcom/hzbhd/midware/jni/JniBoda/JniBodaUtil;->uartWrite(I[BI)I

    move-result v2

    if-gez v2, :cond_0

    .line 86
    sget-object v2, Lcom/hzbhd/midware/jni/JniBoda/SmartPowerDataSource;->TAG:Ljava/lang/String;

    const-string v3, "jni_spidev_write_data result error."

    invoke-static {v2, v3}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    :cond_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 92
    :cond_1
    :try_start_2
    sget-object p1, Lcom/hzbhd/midware/jni/JniBoda/SmartPowerDataSource;->TAG:Ljava/lang/String;

    const-string v1, "jni_spidev_write_data write date fail."

    invoke-static {p1, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 94
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 96
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public setmDataCallback(Lcom/hzbhd/midware/jni/JniBoda/SmartPowerDataSource$DataCallback;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/hzbhd/midware/jni/JniBoda/SmartPowerDataSource;->mDataCallback:Lcom/hzbhd/midware/jni/JniBoda/SmartPowerDataSource$DataCallback;

    return-void
.end method
