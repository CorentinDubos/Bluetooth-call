.class public Lcom/hzbhd/midwareproxy/canbus/reportCanbus/ReversingRepCanbus;
.super Ljava/lang/Object;
.source "ReversingRepCanbus.java"


# static fields
.field static mRadio:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/ReversingRepCanbus;

.field private static reportCanbusAtvInfo:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [B

    .line 12
    fill-array-data v0, :array_0

    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/ReversingRepCanbus;->reportCanbusAtvInfo:[B

    .line 15
    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/ReversingRepCanbus;

    invoke-direct {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/ReversingRepCanbus;-><init>()V

    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/ReversingRepCanbus;->mRadio:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/ReversingRepCanbus;

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

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/ReversingRepCanbus;
    .locals 2

    const-class v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/ReversingRepCanbus;

    monitor-enter v0

    .line 17
    :try_start_0
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/ReversingRepCanbus;->mRadio:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/ReversingRepCanbus;

    if-nez v1, :cond_0

    .line 18
    new-instance v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/ReversingRepCanbus;

    invoke-direct {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/ReversingRepCanbus;-><init>()V

    sput-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/ReversingRepCanbus;->mRadio:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/ReversingRepCanbus;

    .line 20
    :cond_0
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/ReversingRepCanbus;->mRadio:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/ReversingRepCanbus;
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

    .line 24
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 25
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/ReversingRepCanbus$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->getInstance()Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->setCamVisualStatus(Landroid/content/Context;B)V

    .line 28
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->getInstance()Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->cmd_0x83(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public reportDestroyCanbusInfo(Landroid/content/Context;)V
    .locals 2

    .line 37
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 38
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/ReversingRepCanbus$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->getInstance()Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->setCamVisualStatus(Landroid/content/Context;B)V

    .line 41
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->getInstance()Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenCmdSnd;->cmd_0x83(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method
