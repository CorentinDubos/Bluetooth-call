.class public Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;
    }
.end annotation


# static fields
.field public static CANBUS_AMP_VAL_BAL:Ljava/lang/String; = "CANBUS_AMP_VAL_BAL"

.field public static CANBUS_AMP_VAL_BASS:Ljava/lang/String; = "CANBUS_AMP_VAL_BASS"

.field public static CANBUS_AMP_VAL_EFFECT:Ljava/lang/String; = "CANBUS_AMP_VAL_EFFECT"

.field public static CANBUS_AMP_VAL_FAD:Ljava/lang/String; = "CANBUS_AMP_VAL_FAD"

.field public static CANBUS_AMP_VAL_MID:Ljava/lang/String; = "CANBUS_AMP_VAL_MID"

.field public static CANBUS_AMP_VAL_TRE:Ljava/lang/String; = "CANBUS_AMP_VAL_TRE"

.field public static CANBUS_AMP_VAL_VOL:Ljava/lang/String; = "CANBUS_AMP_VAL_VOL"

.field public static CANBUS_IS_DATA_PORT:Ljava/lang/String; = "CANBUS_IS_DATA_PORT"

.field public static DeviceInfor:Ljava/lang/String; = "Get Device none"

.field public static final MCU_HARDWARE_CURRENTMAX:I = 0xa

.field public static final MCU_HARDWARE_stm32f030c8:I = 0x1

.field public static final MCU_HARDWARE_stm32f030rc:I = 0x3

.field public static final MCU_HARDWARE_stm32f072c8:I = 0x2

.field public static final MCU_HARDWARE_stm8s208:I = 0x0

.field public static isCanbusCmdStyleSt32:Z = false

.field private static oldMsg:Ljava/lang/String;

.field private static oneTime:J

.field private static toast:Landroid/widget/Toast;

.field private static twoTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CompensateZero([BI)[B
    .locals 3

    .line 568
    new-array v0, p1, [B

    .line 569
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 570
    array-length p0, p0

    :goto_0
    if-ge p0, p1, :cond_0

    .line 571
    aput-byte v2, v0, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static GetBooleanValue(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 2

    const-string/jumbo v0, "wujay"

    const/4 v1, 0x0

    .line 138
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 139
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static GetIntValue(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 2

    const-string/jumbo v0, "wujay"

    const/4 v1, 0x0

    .line 150
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 151
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static SaveBooleanValue(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    const-string/jumbo v0, "wujay"

    const/4 v1, 0x0

    .line 131
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 132
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 133
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 134
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static SaveIntValue(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    const-string/jumbo v0, "wujay"

    const/4 v1, 0x0

    .line 143
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 144
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 145
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 146
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static WLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 122
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 123
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static addBytes([BB)[B
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_0

    new-array p0, v1, [B

    aput-byte p1, p0, v0

    goto :goto_2

    .line 557
    :cond_0
    array-length v2, p0

    add-int/2addr v2, v1

    new-array v1, v2, [B

    :goto_0
    if-ge v0, v2, :cond_2

    .line 559
    array-length v3, p0

    if-ge v0, v3, :cond_1

    aget-byte v3, p0, v0

    aput-byte v3, v1, v0

    goto :goto_1

    .line 560
    :cond_1
    aput-byte p1, v1, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move-object p0, v1

    :goto_2
    return-object p0
.end method

.method private static ascToBcd(B)B
    .locals 2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v1, 0x39

    if-gt p0, v1, :cond_0

    sub-int/2addr p0, v0

    int-to-byte p0, p0

    goto :goto_0

    :cond_0
    const/16 v0, 0x2a

    if-ne p0, v0, :cond_1

    const/16 p0, 0xa

    goto :goto_0

    :cond_1
    const/16 v0, 0x23

    if-ne p0, v0, :cond_2

    const/16 p0, 0xb

    goto :goto_0

    :cond_2
    const/16 v0, 0x2b

    if-ne p0, v0, :cond_3

    const/16 p0, 0xc

    goto :goto_0

    :cond_3
    const/16 p0, 0xf

    :goto_0
    return p0
.end method

.method public static asciiToBcd([BI)[B
    .locals 5

    add-int/lit8 v0, p1, 0x1

    .line 434
    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v4, v3, 0x1

    if-lt v4, p1, :cond_0

    .line 437
    aget-byte v3, p0, v3

    invoke-static {v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->ascToBcd(B)B

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    or-int/lit8 v3, v3, 0xf

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    goto :goto_1

    .line 439
    :cond_0
    aget-byte v3, p0, v3

    invoke-static {v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->ascToBcd(B)B

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    aget-byte v4, p0, v4

    invoke-static {v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->ascToBcd(B)B

    move-result v4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static byte2Bcd(B)B
    .locals 1

    .line 462
    div-int/lit8 v0, p0, 0xa

    shl-int/lit8 v0, v0, 0x4

    rem-int/lit8 p0, p0, 0xa

    and-int/lit8 p0, p0, 0xf

    or-int/2addr p0, v0

    int-to-byte p0, p0

    return p0
.end method

.method public static byte2HexString(B)Ljava/lang/String;
    .locals 2

    and-int/lit16 p0, p0, 0xff

    .line 626
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    .line 627
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static byteMerger([B[B)[B
    .locals 3

    .line 540
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 541
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 542
    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-object v0
.end method

.method public static byteMerger([B[BB)[B
    .locals 1

    .line 548
    invoke-static {p0, p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object p0

    const/4 p1, 0x1

    new-array p1, p1, [B

    const/4 v0, 0x0

    aput-byte p2, p1, v0

    .line 549
    invoke-static {p0, p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static byteNum2AscByte(B)B
    .locals 2

    const/16 v0, 0x30

    if-ltz p0, :cond_1

    const/16 v1, 0x9

    if-le p0, v1, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr p0, v0

    int-to-byte p0, p0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public static bytes2HexString([BI)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 604
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 605
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 606
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 608
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static bytes2HexString([II)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 616
    aget v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 617
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 618
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 620
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static castByte2LegalNum(B)I
    .locals 1

    and-int/lit16 v0, p0, 0x80

    if-eqz v0, :cond_0

    and-int/lit16 p0, p0, 0xff

    :cond_0
    return p0
.end method

.method public static varargs compare(Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 4

    .line 1581
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 1582
    invoke-virtual {v3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static varargs contains(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4

    .line 1606
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 1607
    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static deal0x57Data([B)[B
    .locals 4

    .line 1588
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-le v0, v2, :cond_0

    .line 1589
    array-length v0, p0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    invoke-static {p0, v2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    new-array v0, v3, [B

    const/16 v2, 0x57

    aput-byte v2, v0, v1

    .line 1590
    invoke-static {v0, p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object p0

    return-object p0

    :cond_0
    new-array p0, v1, [B

    return-object p0
.end method

.method public static exceptBOMHead([B)[B
    .locals 6

    .line 1544
    :goto_0
    array-length v0, p0

    const/4 v1, 0x2

    if-le v0, v1, :cond_2

    const/4 v0, 0x0

    aget-byte v2, p0, v0

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v5, -0x2

    if-ne v2, v5, :cond_0

    aget-byte v2, p0, v3

    if-eq v2, v4, :cond_1

    :cond_0
    aget-byte v0, p0, v0

    if-ne v0, v4, :cond_2

    aget-byte v0, p0, v3

    if-ne v0, v5, :cond_2

    .line 1547
    :cond_1
    array-length v0, p0

    invoke-static {p0, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public static getBooleanFromByteWithBit(III)Ljava/lang/Boolean;
    .locals 0

    and-int/lit16 p0, p0, 0xff

    shr-int/2addr p0, p1

    const/4 p1, 0x1

    shl-int p2, p1, p2

    sub-int/2addr p2, p1

    and-int/2addr p0, p2

    if-ne p0, p1, :cond_0

    .line 848
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 849
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;
    .locals 4

    .line 385
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->values()[Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 387
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->values()[Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v1

    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getFactoryCanType()I

    move-result v2

    aget-object v0, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 389
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception e"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getCantype"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :goto_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    sget-object v2, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->ORIGINALSCREEN:Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getSharedBool(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->RENAULT_HIWORLD:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    :cond_0
    return-object v0
.end method

.method public static getDecimalBit(II)I
    .locals 4

    int-to-double v0, p1

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    .line 1536
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int p1, v0

    .line 1537
    div-int/2addr p0, p1

    rem-int/lit8 p0, p0, 0xa

    return p0
.end method

.method public static getDeviceInfo()Ljava/lang/String;
    .locals 3

    .line 952
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->DeviceInfor:Ljava/lang/String;

    const-string v1, "Get Device none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 954
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->getfactory_hardware_info_path()Ljava/lang/String;

    move-result-object v0

    .line 955
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 956
    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v0

    new-array v0, v0, [B

    .line 957
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 958
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 959
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    sput-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->DeviceInfor:Ljava/lang/String;

    const-string v0, "getDeviceInfo"

    .line 960
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current device infor is ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->DeviceInfor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 962
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "Get Device error"

    .line 963
    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->DeviceInfor:Ljava/lang/String;

    .line 966
    :cond_0
    :goto_0
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->DeviceInfor:Ljava/lang/String;

    return-object v0
.end method

.method public static getFileName(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_4

    const/4 v0, 0x5

    if-eq p0, v0, :cond_2

    const/16 v0, 0x15

    if-eq p0, v0, :cond_1

    const/16 v0, 0x16

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8e

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    sparse-switch p0, :sswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    packed-switch p0, :pswitch_data_4

    packed-switch p0, :pswitch_data_5

    const-string p0, "No file"

    goto/16 :goto_0

    :pswitch_0
    const-string p0, "mcu-can-upd-mazda17-xb.bin"

    goto/16 :goto_0

    :pswitch_1
    const-string p0, "mcu-can-upd-mazda10-xb.bin"

    goto/16 :goto_0

    :pswitch_2
    const-string p0, "mcu-can-upd-mazda17.bin"

    goto/16 :goto_0

    :pswitch_3
    const-string p0, "mcu-can-upd-mazda13.bin"

    goto/16 :goto_0

    :pswitch_4
    const-string p0, "mcu-can-upd-jeep-rs.bin"

    goto/16 :goto_0

    :pswitch_5
    const-string p0, "mcu-can-upd-jeep-xb.bin"

    goto/16 :goto_0

    :pswitch_6
    const-string p0, "mcu-can-upd-jeep.bin"

    goto/16 :goto_0

    :pswitch_7
    const-string p0, "mcu-can-upd-dacia.bin"

    goto/16 :goto_0

    :pswitch_8
    const-string p0, "mcu-can-upd-subaru.bin"

    goto/16 :goto_0

    :pswitch_9
    const-string p0, "mcu-can-upd-audi.bin"

    goto/16 :goto_0

    :pswitch_a
    const-string p0, "mcu-can-upd-bmwe90.bin"

    goto/16 :goto_0

    :pswitch_b
    const-string p0, "mcu-can-upd-mitsubishi.bin"

    goto/16 :goto_0

    :pswitch_c
    const-string p0, "mcu-can-upd-benzvito.bin"

    goto/16 :goto_0

    :pswitch_d
    const-string p0, "mcu-can-upd-benzb200.bin"

    goto/16 :goto_0

    :pswitch_e
    const-string p0, "mcu-can-upd-mondeo17-xb.bin"

    goto/16 :goto_0

    :pswitch_f
    const-string p0, "mcu-can-upd-edge-xb.bin"

    goto/16 :goto_0

    :pswitch_10
    const-string p0, "mcu-can-upd-ford-xb.bin"

    goto/16 :goto_0

    :pswitch_11
    const-string p0, "mcu-can-upd-mondeo.bin"

    goto/16 :goto_0

    :pswitch_12
    const-string p0, "mcu-can-upd-edge.bin"

    goto/16 :goto_0

    :pswitch_13
    const-string p0, "mcu-can-upd-ford.bin"

    goto/16 :goto_0

    :pswitch_14
    const-string p0, "mcu-can-upd-lacrosse.bin"

    goto/16 :goto_0

    :pswitch_15
    const-string p0, "mcu-can-upd-astra.bin"

    goto :goto_0

    :pswitch_16
    const-string p0, "mcu-can-upd-malibu.bin"

    goto :goto_0

    :pswitch_17
    const-string p0, "mcu-can-upd-encore.bin"

    goto :goto_0

    :pswitch_18
    const-string p0, "mcu-can-upd-gm-xb.bin"

    goto :goto_0

    :pswitch_19
    const-string p0, "mcu-can-upd-gm.bin"

    goto :goto_0

    :pswitch_1a
    const-string p0, "mcu-can-upd-opel.bin"

    goto :goto_0

    :sswitch_0
    const-string p0, "mcu-can-upd-accord24-xb.bin"

    goto :goto_0

    :sswitch_1
    const-string p0, "mcu-can-upd-accord20-xb.bin"

    goto :goto_0

    :sswitch_2
    const-string p0, "mcu-can-upd-accord.bin"

    goto :goto_0

    :sswitch_3
    const-string p0, "mcu-can-upd-crv12-xb.bin"

    goto :goto_0

    :sswitch_4
    const-string p0, "mcu-can-upd-crv15-xb.bin"

    goto :goto_0

    :sswitch_5
    const-string p0, "mcu-can-upd-honda-xb.bin"

    goto :goto_0

    :sswitch_6
    const-string p0, "mcu-can-upd-crv12.bin"

    goto :goto_0

    :sswitch_7
    const-string p0, "mcu-can-upd-honda.bin"

    goto :goto_0

    :sswitch_8
    const-string p0, "mcu-can-upd-sorento-xb.bin"

    goto :goto_0

    :sswitch_9
    const-string p0, "mcu-can-upd-kia-xb.bin"

    goto :goto_0

    :sswitch_a
    const-string p0, "mcu-can-upd-kia.bin"

    goto :goto_0

    :sswitch_b
    const-string p0, "mcu-can-upd-kia-rs.bin"

    goto :goto_0

    :pswitch_1b
    :sswitch_c
    const-string p0, "mcu-can-upd-toyota-hw.bin"

    goto :goto_0

    :pswitch_1c
    const-string p0, "mcu-can-upd-toyota.bin"

    goto :goto_0

    :cond_0
    const-string p0, "mcu-can-upd-psa.bin"

    goto :goto_0

    :cond_1
    const-string p0, "mcu-can-upd-nissan.bin"

    goto :goto_0

    :cond_2
    const-string p0, "mcu-can-upd-vw-hw.bin"

    goto :goto_0

    :cond_3
    const-string p0, "mcu-can-upd-golf.bin"

    goto :goto_0

    :cond_4
    const-string p0, "mcu-can-upd-vw.bin"

    goto :goto_0

    :cond_5
    const-string p0, "mcu-can-upd-none.bin"

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1c
        :pswitch_1b
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x1e -> :sswitch_b
        0x1f -> :sswitch_a
        0x20 -> :sswitch_a
        0x21 -> :sswitch_a
        0x22 -> :sswitch_a
        0x23 -> :sswitch_a
        0x24 -> :sswitch_a
        0x25 -> :sswitch_a
        0x26 -> :sswitch_a
        0x27 -> :sswitch_9
        0x28 -> :sswitch_8
        0x29 -> :sswitch_7
        0x2a -> :sswitch_6
        0x2b -> :sswitch_5
        0x2c -> :sswitch_4
        0x2d -> :sswitch_3
        0x2e -> :sswitch_7
        0x2f -> :sswitch_7
        0x30 -> :sswitch_2
        0x31 -> :sswitch_2
        0x32 -> :sswitch_2
        0x33 -> :sswitch_1
        0x34 -> :sswitch_0
        0x97 -> :sswitch_c
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x3c
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_19
        :pswitch_14
        :pswitch_19
        :pswitch_17
        :pswitch_14
        :pswitch_18
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x51
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_13
        :pswitch_12
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x65
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x6e
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_1b
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x83
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getIntByBit(BI)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    and-int/2addr p0, v1

    if-eqz p0, :cond_7

    :goto_0
    move p0, v1

    goto :goto_1

    :cond_0
    const/4 v2, 0x2

    if-ne v1, p1, :cond_1

    and-int/2addr p0, v2

    if-eqz p0, :cond_7

    goto :goto_0

    :cond_1
    const/4 v3, 0x4

    if-ne v2, p1, :cond_2

    and-int/2addr p0, v3

    if-eqz p0, :cond_7

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    if-ne v2, p1, :cond_3

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_7

    goto :goto_0

    :cond_3
    if-ne v3, p1, :cond_4

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_7

    goto :goto_0

    :cond_4
    const/4 v2, 0x5

    if-ne v2, p1, :cond_5

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_7

    goto :goto_0

    :cond_5
    const/4 v2, 0x6

    if-ne v2, p1, :cond_6

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_7

    goto :goto_0

    :cond_6
    const/4 v2, 0x7

    if-ne v2, p1, :cond_7

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_7

    goto :goto_0

    :cond_7
    move p0, v0

    :goto_1
    if-eqz p0, :cond_8

    return v1

    :cond_8
    return v0
.end method

.method public static getIntByteWithBit(BI)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    and-int/2addr p0, v1

    if-eqz p0, :cond_0

    move v0, v1

    :cond_0
    return v0

    :cond_1
    const/4 v2, 0x2

    if-ne v1, p1, :cond_3

    and-int/2addr p0, v2

    if-eqz p0, :cond_2

    move v0, v1

    :cond_2
    return v0

    :cond_3
    const/4 v3, 0x4

    if-ne v2, p1, :cond_5

    and-int/2addr p0, v3

    if-eqz p0, :cond_4

    move v0, v1

    :cond_4
    return v0

    :cond_5
    const/4 v2, 0x3

    if-ne v2, p1, :cond_7

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_6

    move v0, v1

    :cond_6
    return v0

    :cond_7
    if-ne v3, p1, :cond_9

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_8

    move v0, v1

    :cond_8
    return v0

    :cond_9
    const/4 v2, 0x5

    if-ne v2, p1, :cond_b

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_a

    move v0, v1

    :cond_a
    return v0

    :cond_b
    const/4 v2, 0x6

    if-ne v2, p1, :cond_d

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_c

    move v0, v1

    :cond_c
    return v0

    :cond_d
    const/4 v2, 0x7

    if-ne v2, p1, :cond_e

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_e

    move v0, v1

    :cond_e
    return v0
.end method

.method public static getIntByteWithBit(II)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    and-int/2addr p0, v1

    if-eqz p0, :cond_0

    move v0, v1

    :cond_0
    return v0

    :cond_1
    const/4 v2, 0x2

    if-ne v1, p1, :cond_3

    and-int/2addr p0, v2

    if-eqz p0, :cond_2

    move v0, v1

    :cond_2
    return v0

    :cond_3
    const/4 v3, 0x4

    if-ne v2, p1, :cond_5

    and-int/2addr p0, v3

    if-eqz p0, :cond_4

    move v0, v1

    :cond_4
    return v0

    :cond_5
    const/4 v2, 0x3

    if-ne v2, p1, :cond_7

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_6

    move v0, v1

    :cond_6
    return v0

    :cond_7
    if-ne v3, p1, :cond_9

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_8

    move v0, v1

    :cond_8
    return v0

    :cond_9
    const/4 v2, 0x5

    if-ne v2, p1, :cond_b

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_a

    move v0, v1

    :cond_a
    return v0

    :cond_b
    const/4 v2, 0x6

    if-ne v2, p1, :cond_d

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_c

    move v0, v1

    :cond_c
    return v0

    :cond_d
    const/4 v2, 0x7

    if-ne v2, p1, :cond_e

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_e

    move v0, v1

    :cond_e
    return v0
.end method

.method public static getIntFromByteWithBit(III)I
    .locals 0

    and-int/lit16 p0, p0, 0xff

    shr-int/2addr p0, p1

    const/4 p1, 0x1

    shl-int p2, p1, p2

    sub-int/2addr p2, p1

    and-int/2addr p0, p2

    return p0
.end method

.method public static getIntFronmDimen(Landroid/content/Context;I)I
    .locals 3

    .line 428
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dimen"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 429
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static getIsDebug(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 156
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "isDebugModel"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x1

    if-ne p0, v1, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method public static getMcuChipType(Landroid/content/Context;)I
    .locals 2

    .line 755
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "McuHardWare"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private static getProtocolCompany()Ljava/lang/String;
    .locals 2

    .line 1219
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->PROTOCOL_COMPANY:Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getSharedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProtocolCompany(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "Simple"

    .line 1193
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "SIMPLE"

    return-object p0

    :cond_0
    const-string v0, "Hiworld"

    .line 1195
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "HIWORLD"

    return-object p0

    :cond_1
    const-string v0, "Raise"

    .line 1197
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "RAISE"

    return-object p0

    :cond_2
    const-string v0, "Xinbas"

    .line 1199
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "XINBAS"

    return-object p0

    :cond_3
    const-string v0, "Oudi"

    .line 1201
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "OUDI"

    return-object p0

    :cond_4
    const-string v0, "Luzheng"

    .line 1203
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "LUZHENG"

    return-object p0

    :cond_5
    const-string v0, "XFY"

    .line 1205
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    return-object v0

    :cond_6
    const-string v0, "Binary"

    .line 1207
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p0, "BINARY"

    return-object p0

    :cond_7
    const-string v0, "CYT"

    .line 1209
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    return-object v0

    :cond_8
    const-string v0, "Dogen"

    .line 1211
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_9

    const-string p0, "DOGEN"

    return-object p0

    :cond_9
    const-string p0, "OTHER"

    return-object p0
.end method

.method public static getStopAllFuncFlag(Landroid/content/Context;)Z
    .locals 4

    .line 1471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isNeedStopAllFunc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "PRJ_3163_STOP_FUNC_FLAG"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getStopAllFuncFlag"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v3, v0

    :cond_0
    return v3
.end method

.method public static isCanSupplyBinary()Z
    .locals 2

    .line 1244
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BINARY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getProtocolCompany()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isCanSupplyCyt()Z
    .locals 2

    .line 1248
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CYT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getProtocolCompany()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isCanSupplyHiworld()Z
    .locals 2

    .line 1232
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HIWORLD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getProtocolCompany()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isCanSupplyOTHER()Z
    .locals 2

    .line 1223
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getProtocolCompany()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OTHER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isCanSupplyRaise()Z
    .locals 2

    .line 1240
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RAISE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getProtocolCompany()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isCanSupplySimple()Z
    .locals 2

    .line 1227
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SIMPLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getProtocolCompany()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isCanSupplyXfy()Z
    .locals 2

    .line 1252
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XFY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getProtocolCompany()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isCanSupplyXinbas()Z
    .locals 2

    .line 1236
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XINBAS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getProtocolCompany()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isCanbusCmdPorting(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static isCanbusPortingUpdFlg(Landroid/content/Context;)Z
    .locals 1

    .line 1517
    invoke-static {p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isSaleInside(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isCmdStyleSt32(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isCmdStyleSt32(Landroid/content/Context;)Z
    .locals 0

    .line 1496
    sget-object p0, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->IS_CANBUS_PORTING:Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;

    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/app/DefaultSharedUtil;->getBool(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isDesignativeCanId(I)Z
    .locals 2

    const/4 v0, 0x0

    .line 1598
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getFactoryCanType()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception p0

    .line 1600
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public static isNewCarType()Z
    .locals 1

    .line 1416
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isOldCanTypeNeedPorting()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isOldCanTypeNeedPorting()Z
    .locals 2

    .line 1325
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isOriginalScreen()Z
    .locals 2

    .line 1426
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getDeviceInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "N60"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1427
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getDeviceInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "N74"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1428
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getDeviceInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "N52"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1429
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getDeviceInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "N95"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1430
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getDeviceInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "N0B"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1431
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getDeviceInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "N0J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1432
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getDeviceInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NZ1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isOriginalScreenCanSwitchDspAndOriginalAmp()Z
    .locals 2

    .line 1457
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getDeviceInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "N95"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1458
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getDeviceInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "N0B"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1459
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getDeviceInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "N52"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1460
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getDeviceInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NZ1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isOriginalScreenN60N74()Z
    .locals 2

    .line 1439
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getDeviceInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "N60"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1440
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getDeviceInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "N74"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1441
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getDeviceInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "N95"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1442
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getDeviceInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "N0B"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1443
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getDeviceInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "N0J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1444
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getDeviceInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NZ1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isOriginalSreenNeedBt()Z
    .locals 2

    .line 1450
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getDeviceInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "N52"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isPowerOffStatus(Landroid/content/Context;)Z
    .locals 2

    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "PowerIsOff"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public static isSaleInside(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 3

    .line 744
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "McuHardWare"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/16 v2, 0xa

    if-gt p0, v2, :cond_0

    move v1, v0

    .line 745
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static isSaleInsideAndDataPort(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static isTempUseCanbusCmdPorting()Z
    .locals 2

    .line 1525
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getDeviceInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KZ1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1526
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isYHT(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;
    .locals 2

    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "LCD_MCU_VERSION"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/16 v0, 0x10

    if-eq p0, v0, :cond_7

    const/16 v0, 0x22

    if-eq p0, v0, :cond_6

    const/16 v0, 0x31

    if-eq p0, v0, :cond_5

    const/16 v0, 0x32

    if-eq p0, v0, :cond_4

    const/16 v0, 0x40

    if-eq p0, v0, :cond_3

    const/16 v0, 0x41

    if-eq p0, v0, :cond_2

    const/16 v0, 0x49

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4a

    if-eq p0, v0, :cond_0

    .line 117
    sget-object p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->PUBLIC:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    return-object p0

    .line 109
    :cond_0
    sget-object p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->HTT2:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    return-object p0

    .line 107
    :cond_1
    sget-object p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->HTT2:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    return-object p0

    .line 105
    :cond_2
    sget-object p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->HTT2:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    return-object p0

    .line 103
    :cond_3
    sget-object p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->HONG:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    return-object p0

    .line 115
    :cond_4
    sget-object p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->KT2:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    return-object p0

    .line 113
    :cond_5
    sget-object p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->LK:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    return-object p0

    .line 101
    :cond_6
    sget-object p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->YHT:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    return-object p0

    .line 111
    :cond_7
    sget-object p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->KT:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    return-object p0
.end method

.method public static makeBytesFixedLength([BI)[B
    .locals 4

    .line 1476
    new-array v0, p1, [B

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_1

    .line 1478
    array-length v3, p0

    if-lt v2, v3, :cond_0

    .line 1479
    aput-byte v1, v0, v2

    goto :goto_1

    .line 1481
    :cond_0
    aget-byte v3, p0, v2

    aput-byte v3, v0, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static makeMediaInfoCenteredInBytes(ILjava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, ""

    if-eqz p1, :cond_2

    .line 1556
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, p0, :cond_2

    .line 1557
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr p0, v1

    .line 1558
    div-int/lit8 v1, p0, 0x2

    sub-int/2addr p0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const-string v4, " "

    if-ge v3, v1, :cond_0

    .line 1562
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1564
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    if-ge v2, p0, :cond_1

    .line 1566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object p1

    :cond_2
    return-object v0
.end method

.method public static mergeByteArrayAndAscii([BLjava/lang/String;)[B
    .locals 0

    .line 1422
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static numCompensateZero(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    .line 1490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1492
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static phoneNum2Ascii([B)[B
    .locals 3

    .line 531
    array-length v0, p0

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 532
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    const/16 v2, 0x30

    .line 533
    aput-byte v2, p0, v1

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static phoneNum2UnicodeBig([B)[B
    .locals 5

    .line 522
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    .line 523
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    mul-int/lit8 v3, v2, 0x2

    .line 524
    aput-byte v1, v0, v3

    add-int/lit8 v3, v3, 0x1

    .line 525
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static phoneNum2UnicodeLittleExtra([B)[B
    .locals 5

    .line 513
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    .line 514
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    mul-int/lit8 v3, v2, 0x2

    .line 515
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    .line 516
    aput-byte v1, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static reportCanbusInfo([B)V
    .locals 1

    .line 931
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static reportHiworldMideaInfo(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE;Z[B)V
    .locals 7

    .line 1269
    sget-object v0, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->NULL:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    const/16 v1, 0xc

    new-array v2, v1, [B

    const/4 v3, 0x3

    new-array v3, v3, [B

    const/16 v4, 0x16

    const/4 v5, 0x0

    aput-byte v4, v3, v5

    const/16 v4, -0x2e

    const/4 v6, 0x1

    aput-byte v4, v3, v6

    .line 1271
    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE;->ordinal()I

    move-result v4

    int-to-byte v4, v4

    const/4 v6, 0x2

    aput-byte v4, v3, v6

    .line 1273
    array-length v4, p3

    if-lt v4, v1, :cond_0

    goto :goto_0

    :cond_0
    array-length v1, p3

    :goto_0
    int-to-byte v1, v1

    if-eqz p3, :cond_1

    :goto_1
    if-ge v5, v1, :cond_1

    .line 1276
    aget-byte v4, p3, v5

    aput-byte v4, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1279
    :cond_1
    sget-object p3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE:[I

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE;->ordinal()I

    move-result p1

    aget p1, p3, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    if-eqz p2, :cond_2

    .line 1306
    sget-object v0, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->VIDEO:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    goto :goto_2

    .line 1308
    :cond_2
    sget-object v0, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->MUSIC:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    goto :goto_2

    .line 1301
    :pswitch_1
    sget-object v0, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->AUX1:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    goto :goto_2

    .line 1298
    :pswitch_2
    sget-object v0, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->NULL:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    goto :goto_2

    .line 1295
    :pswitch_3
    sget-object v0, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->DTV:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    goto :goto_2

    .line 1292
    :pswitch_4
    sget-object v0, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->MPEG:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    goto :goto_2

    .line 1288
    :pswitch_5
    sget-object v0, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->FM:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    goto :goto_2

    .line 1281
    :pswitch_6
    sget-object v0, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->NULL:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    .line 1317
    :goto_2
    invoke-static {v3, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object p1

    .line 1319
    :try_start_0
    invoke-static {p0, v0, p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->sndSrcMediaInfo(Landroid/content/Context;Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 1321
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static reportHiworldSrcInfo(BB)V
    .locals 4

    const/16 v0, 0xf

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/16 v3, 0x16

    aput-byte v3, v1, v2

    const/4 v2, 0x1

    aput-byte p0, v1, v2

    const/4 p0, 0x2

    aput-byte p1, v1, p0

    const/4 p0, 0x3

    :goto_0
    if-ge p0, v0, :cond_0

    const/16 p1, 0x20

    .line 480
    aput-byte p1, v1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 483
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 485
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static reportKeySensitivityValue(B[B)V
    .locals 1

    .line 944
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportKeySensitivityValue(B[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 946
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static reportMcuDataTwoArray([B[BLandroid/content/Context;)V
    .locals 0

    .line 1258
    :try_start_0
    invoke-static {p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isCanbusCmdPorting(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1259
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto :goto_0

    .line 1261
    :cond_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public static reportSimpleMediaInfo(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;IZZ)V
    .locals 7

    .line 1032
    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->ordinal()I

    move-result v0

    int-to-byte v0, v0

    .line 1034
    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->NULL:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    .line 1035
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE:[I

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-eqz p3, :cond_0

    .line 1067
    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->VIDEO:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    goto :goto_0

    .line 1069
    :cond_0
    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->MUSIC:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    goto :goto_0

    .line 1062
    :pswitch_1
    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->VIDEO:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    goto :goto_0

    .line 1059
    :pswitch_2
    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->MPEG:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    goto :goto_0

    .line 1055
    :pswitch_3
    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->ATV:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    goto :goto_0

    .line 1052
    :pswitch_4
    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->DTV:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    goto :goto_0

    .line 1049
    :pswitch_5
    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->BTAUDIO:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    goto :goto_0

    .line 1046
    :pswitch_6
    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->NULL:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    goto :goto_0

    .line 1043
    :pswitch_7
    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->AUX1:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    goto :goto_0

    .line 1040
    :pswitch_8
    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->FM:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    goto :goto_0

    .line 1037
    :pswitch_9
    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->NULL:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    :goto_0
    const/16 p3, 0xff

    const/16 v2, 0x11

    const/16 v3, 0x10

    const/16 v4, 0x40

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne p2, p3, :cond_1

    .line 1074
    sget-object p3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE:[I

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->ordinal()I

    move-result p1

    aget p1, p3, p1

    packed-switch p1, :pswitch_data_1

    goto :goto_2

    :pswitch_a
    const/16 p2, 0x23

    goto :goto_1

    :pswitch_b
    const/16 p2, 0x21

    :goto_1
    move v0, v2

    goto :goto_2

    :pswitch_c
    move p2, v3

    move v0, p2

    goto :goto_2

    :pswitch_d
    move p2, v4

    goto :goto_2

    :pswitch_e
    const/16 p2, 0x30

    goto :goto_2

    :pswitch_f
    move p2, v5

    goto :goto_2

    :pswitch_10
    move p2, v6

    :cond_1
    :goto_2
    const/4 p1, 0x3

    const/4 p3, 0x2

    const/16 v2, -0x40

    const/16 v3, 0x16

    const/4 v4, 0x4

    if-eqz p4, :cond_2

    const/16 p4, 0xa

    new-array p4, p4, [B

    aput-byte v3, p4, v6

    aput-byte v2, p4, v5

    aput-byte v0, p4, p3

    int-to-byte p2, p2

    aput-byte p2, p4, p1

    aput-byte v6, p4, v4

    const/4 p1, 0x5

    aput-byte v6, p4, p1

    const/4 p1, 0x6

    aput-byte v6, p4, p1

    const/4 p1, 0x7

    aput-byte v6, p4, p1

    const/16 p1, 0x8

    aput-byte v6, p4, p1

    const/16 p1, 0x9

    aput-byte v6, p4, p1

    goto :goto_3

    :cond_2
    new-array p4, v4, [B

    aput-byte v3, p4, v6

    aput-byte v2, p4, v5

    aput-byte v0, p4, p3

    int-to-byte p2, p2

    aput-byte p2, p4, p1

    .line 1116
    :goto_3
    :try_start_0
    invoke-static {p0, v1, p4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->sndSrcMediaInfo(Landroid/content/Context;Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    .line 1118
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_10
        :pswitch_10
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method public static reportTwoInfoToMcu(III)V
    .locals 2

    const/4 v0, 0x3

    :try_start_0
    new-array v0, v0, [B

    const/4 v1, 0x0

    int-to-byte p0, p0

    aput-byte p0, v0, v1

    const/4 p0, 0x1

    int-to-byte p1, p1

    aput-byte p1, v0, p0

    const/4 p0, 0x2

    int-to-byte p1, p2

    aput-byte p1, v0, p0

    .line 377
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 380
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static reportXinbasMediaInfo(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_XINBAS_MEDIA_TYPE;Z)V
    .locals 9

    .line 1130
    invoke-static {p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isSaleInside(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1133
    :try_start_0
    sget-object v0, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->NULL:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    const/4 v0, 0x7

    new-array v0, v0, [B

    const/16 v1, 0x16

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/16 v1, -0x7c

    const/4 v3, 0x1

    aput-byte v1, v0, v3

    .line 1134
    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_XINBAS_MEDIA_TYPE;->ordinal()I

    move-result v1

    int-to-byte v1, v1

    const/4 v4, 0x2

    aput-byte v1, v0, v4

    const/4 v1, 0x3

    aput-byte v2, v0, v1

    const/4 v5, 0x4

    aput-byte v2, v0, v5

    const/4 v6, 0x5

    aput-byte v2, v0, v6

    const/4 v7, 0x6

    aput-byte v2, v0, v7

    .line 1135
    sget-object v7, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$ENUM_CANSBUS_XINBAS_MEDIA_TYPE:[I

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_XINBAS_MEDIA_TYPE;->ordinal()I

    move-result p1

    aget p1, v7, p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq p1, v3, :cond_9

    const-string v7, "currentReport"

    const-string v8, "btState"

    if-eq p1, v4, :cond_7

    if-eq p1, v1, :cond_5

    if-eq p1, v5, :cond_3

    if-eq p1, v6, :cond_0

    goto/16 :goto_1

    :cond_0
    if-eqz p2, :cond_1

    .line 1173
    :try_start_1
    sget-object p1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->VIDEO:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    goto :goto_0

    .line 1175
    :cond_1
    sget-object p1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->MUSIC:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    .line 1177
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, v8, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v3, :cond_a

    .line 1178
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object p2

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {p2, v1}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object p2

    if-eq p2, p1, :cond_2

    .line 1179
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object p1

    sget-object p2, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {p1, p2}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object p1

    sget-object p2, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->BTPHONE:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-ne p1, p2, :cond_a

    .line 1181
    :cond_2
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    .line 1182
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v7, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 1162
    :cond_3
    sget-object p1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->BTAUDIO:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    .line 1163
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, v8, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v3, :cond_a

    .line 1164
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object p2

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {p2, v1}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object p2

    if-eq p2, p1, :cond_4

    .line 1165
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object p1

    sget-object p2, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {p1, p2}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object p1

    sget-object p2, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->BTPHONE:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-ne p1, p2, :cond_a

    .line 1167
    :cond_4
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    .line 1168
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v7, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 1151
    :cond_5
    sget-object p1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->AUX1:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    .line 1152
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v8, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v3, :cond_a

    .line 1153
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object p1

    sget-object p2, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {p1, p2}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object p1

    sget-object p2, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->AUX1:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-eq p1, p2, :cond_6

    .line 1154
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object p1

    sget-object p2, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {p1, p2}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object p1

    sget-object p2, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->AUX2:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-eq p1, p2, :cond_6

    .line 1155
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object p1

    sget-object p2, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {p1, p2}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object p1

    sget-object p2, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->BTPHONE:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-ne p1, p2, :cond_a

    .line 1157
    :cond_6
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    .line 1158
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v7, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 1141
    :cond_7
    sget-object p1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->DTV:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    .line 1142
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, v8, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v3, :cond_a

    .line 1143
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object p2

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {p2, v1}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object p2

    if-eq p2, p1, :cond_8

    .line 1144
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object p1

    sget-object p2, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {p1, p2}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object p1

    sget-object p2, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->BTPHONE:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-ne p1, p2, :cond_a

    .line 1146
    :cond_8
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    .line 1147
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v7, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 1137
    :cond_9
    sget-object p0, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->NULL:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    .line 1138
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1187
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_a
    :goto_1
    return-void
.end method

.method public static reqCanbusInfo([B)V
    .locals 1

    .line 91
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reqCanbusInfo([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 93
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static setByteFromByteWithBitFromOtherByte(IIIII)B
    .locals 0

    .line 914
    invoke-static {p2, p3, p4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFromByteWithBit(III)I

    move-result p2

    invoke-static {p0, p2, p1, p4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->setIntFromByteWithBit(IIII)I

    move-result p0

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    return p0
.end method

.method public static setByteWithBit(BIZ)B
    .locals 7

    const/4 v0, 0x7

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz p2, :cond_7

    if-nez p1, :cond_0

    or-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    if-ne v6, p1, :cond_1

    or-int/lit8 p0, p0, 0x2

    goto :goto_0

    :cond_1
    if-ne v5, p1, :cond_2

    or-int/lit8 p0, p0, 0x4

    goto :goto_0

    :cond_2
    if-ne v3, p1, :cond_3

    or-int/lit8 p0, p0, 0x8

    goto :goto_0

    :cond_3
    if-ne v4, p1, :cond_4

    or-int/lit8 p0, p0, 0x10

    goto :goto_0

    :cond_4
    if-ne v2, p1, :cond_5

    or-int/lit8 p0, p0, 0x20

    goto :goto_0

    :cond_5
    if-ne v1, p1, :cond_6

    or-int/lit8 p0, p0, 0x40

    goto :goto_0

    :cond_6
    if-ne v0, p1, :cond_f

    or-int/lit16 p0, p0, 0x80

    goto :goto_0

    :cond_7
    if-nez p1, :cond_8

    and-int/lit16 p0, p0, 0xfe

    :goto_0
    int-to-byte p0, p0

    goto :goto_1

    :cond_8
    if-ne v6, p1, :cond_9

    and-int/lit16 p0, p0, 0xfd

    goto :goto_0

    :cond_9
    if-ne v5, p1, :cond_a

    and-int/lit16 p0, p0, 0xfb

    goto :goto_0

    :cond_a
    if-ne v3, p1, :cond_b

    and-int/lit16 p0, p0, 0xf7

    goto :goto_0

    :cond_b
    if-ne v4, p1, :cond_c

    and-int/lit16 p0, p0, 0xef

    goto :goto_0

    :cond_c
    if-ne v2, p1, :cond_d

    and-int/lit16 p0, p0, 0xdf

    goto :goto_0

    :cond_d
    if-ne v1, p1, :cond_e

    and-int/lit16 p0, p0, 0xbf

    goto :goto_0

    :cond_e
    if-ne v0, p1, :cond_f

    and-int/lit8 p0, p0, 0x7f

    goto :goto_0

    :cond_f
    :goto_1
    return p0
.end method

.method public static setByteWithBitFromOtherByte(IIII)B
    .locals 0

    .line 890
    invoke-static {p2, p3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntByteWithBit(II)Z

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->setIntByteWithBit(IIZ)I

    move-result p0

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    return p0
.end method

.method public static setCmdStyleSt32(Landroid/content/Context;Z)V
    .locals 1

    .line 1501
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p0

    sget-object v0, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->IS_CANBUS_PORTING:Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->setSharedBool(Ljava/lang/String;Z)V

    return-void
.end method

.method public static setIntByteWithBit(IIZ)I
    .locals 7

    const/4 v0, 0x7

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz p2, :cond_7

    if-nez p1, :cond_0

    or-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    if-ne v6, p1, :cond_1

    or-int/lit8 p0, p0, 0x2

    goto :goto_0

    :cond_1
    if-ne v5, p1, :cond_2

    or-int/lit8 p0, p0, 0x4

    goto :goto_0

    :cond_2
    if-ne v3, p1, :cond_3

    or-int/lit8 p0, p0, 0x8

    goto :goto_0

    :cond_3
    if-ne v4, p1, :cond_4

    or-int/lit8 p0, p0, 0x10

    goto :goto_0

    :cond_4
    if-ne v2, p1, :cond_5

    or-int/lit8 p0, p0, 0x20

    goto :goto_0

    :cond_5
    if-ne v1, p1, :cond_6

    or-int/lit8 p0, p0, 0x40

    goto :goto_0

    :cond_6
    if-ne v0, p1, :cond_f

    or-int/lit16 p0, p0, 0x80

    goto :goto_0

    :cond_7
    if-nez p1, :cond_8

    and-int/lit16 p0, p0, 0xfe

    goto :goto_0

    :cond_8
    if-ne v6, p1, :cond_9

    and-int/lit16 p0, p0, 0xfd

    goto :goto_0

    :cond_9
    if-ne v5, p1, :cond_a

    and-int/lit16 p0, p0, 0xfb

    goto :goto_0

    :cond_a
    if-ne v3, p1, :cond_b

    and-int/lit16 p0, p0, 0xf7

    goto :goto_0

    :cond_b
    if-ne v4, p1, :cond_c

    and-int/lit16 p0, p0, 0xef

    goto :goto_0

    :cond_c
    if-ne v2, p1, :cond_d

    and-int/lit16 p0, p0, 0xdf

    goto :goto_0

    :cond_d
    if-ne v1, p1, :cond_e

    and-int/lit16 p0, p0, 0xbf

    goto :goto_0

    :cond_e
    if-ne v0, p1, :cond_f

    and-int/lit8 p0, p0, 0x7f

    :cond_f
    :goto_0
    return p0
.end method

.method public static setIntByteWithBitFromOtherInt(IIII)I
    .locals 0

    .line 885
    invoke-static {p2, p3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntByteWithBit(II)Z

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->setIntByteWithBit(IIZ)I

    move-result p0

    return p0
.end method

.method public static setIntFromByteWithBit(IIII)I
    .locals 1

    const/4 v0, 0x1

    shl-int p3, v0, p3

    sub-int/2addr p3, v0

    shl-int/2addr p3, p2

    not-int p3, p3

    and-int/2addr p0, p3

    shl-int/2addr p1, p2

    or-int/2addr p0, p1

    return p0
.end method

.method public static setIntFromByteWithBitFromOtherInt(IIIII)I
    .locals 0

    .line 909
    invoke-static {p2, p3, p4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFromByteWithBit(III)I

    move-result p2

    .line 908
    invoke-static {p0, p2, p1, p4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->setIntFromByteWithBit(IIII)I

    move-result p0

    return p0
.end method

.method public static setReportHiworldSrcInfoData(BB)[B
    .locals 4

    const/16 v0, 0xf

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/16 v3, 0x16

    aput-byte v3, v1, v2

    const/4 v2, 0x1

    aput-byte p0, v1, v2

    const/4 p0, 0x2

    aput-byte p1, v1, p0

    const/4 p0, 0x3

    :goto_0
    if-ge p0, v0, :cond_0

    const/16 p1, 0x20

    .line 501
    aput-byte p1, v1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static setStopAllFuncFlag(Landroid/content/Context;Z)V
    .locals 2

    .line 1467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " setStopAllFuncFlag isNeedStopAllFunc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getStopAllFuncFlag"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "PRJ_3163_STOP_FUNC_FLAG"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 60
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->toast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 61
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    sput-object p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->toast:Landroid/widget/Toast;

    .line 62
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sput-wide p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->oneTime:J

    goto :goto_0

    .line 65
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->twoTime:J

    .line 66
    sget-object p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->oldMsg:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 67
    sget-wide p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->twoTime:J

    sget-wide v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->oneTime:J

    sub-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-lez p0, :cond_2

    .line 68
    sget-object p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->toast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 71
    :cond_1
    sput-object p1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->oldMsg:Ljava/lang/String;

    .line 72
    sget-object p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->toast:Landroid/widget/Toast;

    invoke-virtual {p0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 73
    sget-object p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->toast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 76
    :cond_2
    :goto_0
    sget-wide p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->twoTime:J

    sput-wide p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->oneTime:J

    return-void
.end method

.method private static sndSrcMediaInfo(Landroid/content/Context;Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;[B)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 977
    sget-object v0, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->NULL:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-eq p1, v0, :cond_5

    .line 978
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midware$constant$channelManagerDef$MEDIA_SOURCE_ID:[I

    invoke-virtual {p1}, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "CANBUS_SRC_REP"

    const-string v2, "currentReport"

    const-string v3, "btState"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v5, :cond_3

    const/4 v6, 0x2

    if-eq v0, v6, :cond_1

    .line 1004
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v5, :cond_6

    .line 1005
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object v0

    sget-object v3, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {v0, v3}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 1006
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object p1

    sget-object v0, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {p1, v0}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object p1

    sget-object v0, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->BTPHONE:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-ne p1, v0, :cond_6

    .line 1008
    :cond_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    .line 1009
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p2, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1010
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p2, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 992
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v5, :cond_6

    .line 993
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object v0

    sget-object v3, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {v0, v3}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v0

    if-eq v0, p1, :cond_2

    .line 994
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object p1

    sget-object v0, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {p1, v0}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object p1

    sget-object v0, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->CAMERA:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-eq p1, v0, :cond_2

    .line 995
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object p1

    sget-object v0, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {p1, v0}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object p1

    sget-object v0, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->BTPHONE:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-ne p1, v0, :cond_6

    .line 997
    :cond_2
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    .line 998
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p2, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 999
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p2, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 980
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v5, :cond_6

    .line 981
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object v0

    sget-object v3, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {v0, v3}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v0

    if-eq v0, p1, :cond_4

    .line 982
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object p1

    sget-object v0, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {p1, v0}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object p1

    sget-object v0, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->AUX2:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-eq p1, v0, :cond_4

    .line 983
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object p1

    sget-object v0, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {p1, v0}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object p1

    sget-object v0, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->BTPHONE:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-ne p1, v0, :cond_6

    .line 985
    :cond_4
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    .line 986
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p2, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 987
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p2, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 1015
    :cond_5
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    :cond_6
    :goto_0
    return-void
.end method

.method public static string2UnicodeBIG(Ljava/lang/String;)[B
    .locals 5

    .line 592
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 593
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 594
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    mul-int/lit8 v3, v1, 0x2

    shr-int/lit8 v4, v2, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 595
    aput-byte v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    .line 596
    aput-byte v2, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static string2UnicodeSMALL(Ljava/lang/String;)[B
    .locals 5

    .line 581
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 582
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 583
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    mul-int/lit8 v3, v1, 0x2

    and-int/lit16 v4, v2, 0xff

    int-to-byte v4, v4

    .line 584
    aput-byte v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    .line 585
    aput-byte v2, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static switchInteToHex(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 2

    .line 166
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    .line 167
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method
