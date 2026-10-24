.class public Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CameraRepCanbus;
.super Ljava/lang/Object;
.source "CameraRepCanbus.java"


# static fields
.field static mRadio:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CameraRepCanbus;

.field private static reportCanbusAtvInfo:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [B

    .line 31
    fill-array-data v0, :array_0

    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CameraRepCanbus;->reportCanbusAtvInfo:[B

    .line 34
    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CameraRepCanbus;

    invoke-direct {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CameraRepCanbus;-><init>()V

    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CameraRepCanbus;->mRadio:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CameraRepCanbus;

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

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CameraRepCanbus;
    .locals 2

    const-class v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CameraRepCanbus;

    monitor-enter v0

    .line 36
    :try_start_0
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CameraRepCanbus;->mRadio:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CameraRepCanbus;

    if-nez v1, :cond_0

    .line 37
    new-instance v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CameraRepCanbus;

    invoke-direct {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CameraRepCanbus;-><init>()V

    sput-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CameraRepCanbus;->mRadio:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CameraRepCanbus;

    .line 39
    :cond_0
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CameraRepCanbus;->mRadio:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CameraRepCanbus;
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
.method public reportCanbusInfo(Landroid/content/Context;)V
    .locals 2

    .line 43
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 44
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CameraRepCanbus$3;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->getInstance()Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->setCamVisualStatus(Landroid/content/Context;B)V

    .line 47
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->getInstance()Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->cmd_0x83(Landroid/content/Context;)V

    const-wide/16 v0, 0x32

    .line 48
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 49
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->getInstance()Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->cmdEnterCamFront()V

    .line 57
    :cond_1
    :goto_0
    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CameraRepCanbus$1;

    invoke-direct {v0, p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CameraRepCanbus$1;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CameraRepCanbus;)V

    invoke-static {p1, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface;->sendMsg(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface$CallBack;)V

    return-void
.end method

.method public reportDestroyCanbusInfo(Landroid/content/Context;)V
    .locals 2

    .line 66
    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CameraRepCanbus$2;

    invoke-direct {v0, p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CameraRepCanbus$2;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CameraRepCanbus;)V

    invoke-static {p1, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface;->sendMsg(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface$CallBack;)V

    .line 73
    invoke-static {p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface;->unbindService(Landroid/content/Context;)V

    .line 74
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 75
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CameraRepCanbus$3;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "mThreadQzOriginalScreennew"

    const-string v1, "050505"

    .line 77
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->getInstance()Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->setCamVisualStatus(Landroid/content/Context;B)V

    .line 79
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->getInstance()Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->cmd_0x83(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method
