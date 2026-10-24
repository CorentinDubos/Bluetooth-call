.class public Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerMsgMgr;
.super Ljava/lang/Object;
.source "SmartPowerMsgMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerMsgMgr$OnRefreshUiListener;
    }
.end annotation


# static fields
.field private static instance:Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerMsgMgr;


# instance fields
.field private data3:I

.field private data4:I

.field private data5:I

.field private data6:I

.field private data7:I

.field private mode:I

.field private mode_int:I

.field private version:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getByteArrayToIntArray([B)[I
    .locals 3

    .line 113
    array-length v0, p1

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 114
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 115
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_0

    .line 116
    aget-byte v2, p1, v1

    aput v2, v0, v1

    goto :goto_1

    .line 118
    :cond_0
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    aput v2, v0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getInstance()Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerMsgMgr;
    .locals 2

    .line 21
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getDeviceInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DZ"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerMsgMgr;->instance:Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerMsgMgr;

    if-nez v0, :cond_0

    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerMsgMgr;

    invoke-direct {v0}, Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerMsgMgr;-><init>()V

    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerMsgMgr;->instance:Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerMsgMgr;

    .line 23
    :cond_0
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerMsgMgr;->instance:Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerMsgMgr;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getModeInt([I)I
    .locals 6

    .line 99
    array-length v0, p1

    const/4 v1, 0x4

    if-le v0, v1, :cond_4

    const/4 v0, 0x1

    .line 100
    aget v2, p1, v0

    const/4 v3, 0x2

    .line 101
    aget v3, p1, v3

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-eq v2, v5, :cond_0

    if-ne v2, v1, :cond_1

    .line 103
    :cond_0
    aget v3, p1, v5

    :cond_1
    if-eq v2, v5, :cond_2

    if-nez v2, :cond_3

    :cond_2
    move v4, v1

    .line 106
    :cond_3
    invoke-static {v3, v4, v1}, Lcom/hzbhd/midwareproxy/utils/DataHandleUtils;->getIntFromByteWithBit(III)I

    move-result p1

    sub-int/2addr p1, v0

    return p1

    .line 108
    :cond_4
    sget p1, Lcom/hzbhd/midwareproxy/canbus/smartpower/GeneralDzSmartData;->mode:I

    return p1
.end method

.method private updateSystemUIDrivingPattern(Landroid/content/Context;I)V
    .locals 2

    if-ltz p2, :cond_0

    const/4 v0, 0x4

    if-gt p2, v0, :cond_0

    .line 90
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.systemui.statusbar.action.CARMODECHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "_283_car_mode"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public canbusInfoChange(Landroid/content/Context;[BLcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerMsgMgr$OnRefreshUiListener;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 30
    aget-byte v0, p2, v0

    const/16 v1, 0x57

    if-ne v0, v1, :cond_2

    .line 31
    invoke-direct {p0, p2}, Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerMsgMgr;->getByteArrayToIntArray([B)[I

    move-result-object p2

    .line 32
    array-length v0, p2

    const/4 v1, 0x7

    if-lt v0, v1, :cond_2

    const/4 v0, 0x1

    .line 33
    aget v2, p2, v0

    sput v2, Lcom/hzbhd/midwareproxy/canbus/smartpower/GeneralDzSmartData;->mode:I

    .line 34
    invoke-direct {p0, p2}, Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerMsgMgr;->getModeInt([I)I

    move-result v2

    sput v2, Lcom/hzbhd/midwareproxy/canbus/smartpower/GeneralDzSmartData;->mode_int:I

    const/4 v2, 0x2

    .line 35
    aget v3, p2, v2

    sput v3, Lcom/hzbhd/midwareproxy/canbus/smartpower/GeneralDzSmartData;->data3:I

    const/4 v3, 0x3

    .line 36
    aget v3, p2, v3

    sput v3, Lcom/hzbhd/midwareproxy/canbus/smartpower/GeneralDzSmartData;->data4:I

    const/4 v3, 0x4

    .line 37
    aget v3, p2, v3

    sput v3, Lcom/hzbhd/midwareproxy/canbus/smartpower/GeneralDzSmartData;->data5:I

    const/4 v3, 0x5

    .line 38
    aget v3, p2, v3

    sput v3, Lcom/hzbhd/midwareproxy/canbus/smartpower/GeneralDzSmartData;->data6:I

    const/4 v3, 0x6

    .line 39
    aget v4, p2, v3

    sput v4, Lcom/hzbhd/midwareproxy/canbus/smartpower/GeneralDzSmartData;->data7:I

    .line 40
    aget p2, p2, v1

    sput p2, Lcom/hzbhd/midwareproxy/canbus/smartpower/GeneralDzSmartData;->version:I

    .line 41
    sput-boolean v0, Lcom/hzbhd/midwareproxy/canbus/smartpower/GeneralDzSmartData;->isHasData:Z

    .line 43
    iget p2, p0, Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerMsgMgr;->mode:I

    sget v0, Lcom/hzbhd/midwareproxy/canbus/smartpower/GeneralDzSmartData;->mode:I

    if-ne p2, v0, :cond_1

    iget p2, p0, Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerMsgMgr;->mode_int:I

    sget v0, Lcom/hzbhd/midwareproxy/canbus/smartpower/GeneralDzSmartData;->mode_int:I

    if-ne p2, v0, :cond_1

    iget p2, p0, Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerMsgMgr;->data3:I

    sget v0, Lcom/hzbhd/midwareproxy/canbus/smartpower/GeneralDzSmartData;->data3:I

    if-ne p2, v0, :cond_1

    iget p2, p0, Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerMsgMgr;->data4:I

    sget v0, Lcom/hzbhd/midwareproxy/canbus/smartpower/GeneralDzSmartData;->data4:I

    if-ne p2, v0, :cond_1

    iget p2, p0, Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerMsgMgr;->data5:I

    sget v0, Lcom/hzbhd/midwareproxy/canbus/smartpower/GeneralDzSmartData;->data5:I

    if-ne p2, v0, :cond_1

    iget p2, p0, Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerMsgMgr;->data6:I

    sget v0, Lcom/hzbhd/midwareproxy/canbus/smartpower/GeneralDzSmartData;->data6:I

    if-ne p2, v0, :cond_1

    iget p2, p0, Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerMsgMgr;->data7:I

    sget v0, Lcom/hzbhd/midwareproxy/canbus/smartpower/GeneralDzSmartData;->data7:I

    if-ne p2, v0, :cond_1

    iget p2, p0, Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerMsgMgr;->version:I

    sget v0, Lcom/hzbhd/midwareproxy/canbus/smartpower/GeneralDzSmartData;->version:I

    if-eq p2, v0, :cond_2

    .line 52
    :cond_1
    sget p2, Lcom/hzbhd/midwareproxy/canbus/smartpower/GeneralDzSmartData;->mode:I

    iput p2, p0, Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerMsgMgr;->mode:I

    .line 53
    sget p2, Lcom/hzbhd/midwareproxy/canbus/smartpower/GeneralDzSmartData;->mode_int:I

    iput p2, p0, Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerMsgMgr;->mode_int:I

    .line 54
    sget p2, Lcom/hzbhd/midwareproxy/canbus/smartpower/GeneralDzSmartData;->data3:I

    iput p2, p0, Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerMsgMgr;->data3:I

    .line 55
    sget p2, Lcom/hzbhd/midwareproxy/canbus/smartpower/GeneralDzSmartData;->data4:I

    iput p2, p0, Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerMsgMgr;->data4:I

    .line 56
    sget p2, Lcom/hzbhd/midwareproxy/canbus/smartpower/GeneralDzSmartData;->data5:I

    iput p2, p0, Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerMsgMgr;->data5:I

    .line 57
    sget p2, Lcom/hzbhd/midwareproxy/canbus/smartpower/GeneralDzSmartData;->data6:I

    iput p2, p0, Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerMsgMgr;->data6:I

    .line 58
    sget p2, Lcom/hzbhd/midwareproxy/canbus/smartpower/GeneralDzSmartData;->data7:I

    iput p2, p0, Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerMsgMgr;->data7:I

    .line 59
    sget p2, Lcom/hzbhd/midwareproxy/canbus/smartpower/GeneralDzSmartData;->version:I

    iput p2, p0, Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerMsgMgr;->version:I

    .line 61
    iget p2, p0, Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerMsgMgr;->data6:I

    invoke-static {p2, v3, v2}, Lcom/hzbhd/midwareproxy/utils/DataHandleUtils;->getIntFromByteWithBit(III)I

    move-result p2

    sput p2, Lcom/hzbhd/midwareproxy/canbus/smartpower/GeneralDzSmartData;->hardware_model:I

    .line 62
    iget p2, p0, Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerMsgMgr;->data6:I

    and-int/lit8 p2, p2, 0x3f

    shl-int/lit8 p2, p2, 0x8

    iget v0, p0, Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerMsgMgr;->data5:I

    or-int/2addr p2, v0

    sput p2, Lcom/hzbhd/midwareproxy/canbus/smartpower/GeneralDzSmartData;->power_model:I

    .line 63
    iget p2, p0, Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerMsgMgr;->data7:I

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/utils/DataHandleUtils;->getBoolBit0(I)Z

    move-result p2

    sput-boolean p2, Lcom/hzbhd/midwareproxy/canbus/smartpower/GeneralDzSmartData;->data7_0:Z

    .line 64
    iget p2, p0, Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerMsgMgr;->data7:I

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/utils/DataHandleUtils;->getBoolBit1(I)Z

    move-result p2

    sput-boolean p2, Lcom/hzbhd/midwareproxy/canbus/smartpower/GeneralDzSmartData;->data7_1:Z

    .line 65
    iget p2, p0, Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerMsgMgr;->data7:I

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/utils/DataHandleUtils;->getBoolBit2(I)Z

    move-result p2

    sput-boolean p2, Lcom/hzbhd/midwareproxy/canbus/smartpower/GeneralDzSmartData;->data7_2:Z

    .line 66
    iget p2, p0, Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerMsgMgr;->data7:I

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/utils/DataHandleUtils;->getBoolBit3(I)Z

    move-result p2

    sput-boolean p2, Lcom/hzbhd/midwareproxy/canbus/smartpower/GeneralDzSmartData;->data7_3:Z

    .line 67
    iget p2, p0, Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerMsgMgr;->data7:I

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/utils/DataHandleUtils;->getBoolBit4(I)Z

    move-result p2

    sput-boolean p2, Lcom/hzbhd/midwareproxy/canbus/smartpower/GeneralDzSmartData;->data7_4:Z

    .line 69
    sget p2, Lcom/hzbhd/midwareproxy/canbus/smartpower/GeneralDzSmartData;->mode:I

    invoke-direct {p0, p1, p2}, Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerMsgMgr;->updateSystemUIDrivingPattern(Landroid/content/Context;I)V

    if-eqz p3, :cond_2

    .line 72
    invoke-interface {p3}, Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerMsgMgr$OnRefreshUiListener;->onRefreshUi()V

    :cond_2
    return-void
.end method
