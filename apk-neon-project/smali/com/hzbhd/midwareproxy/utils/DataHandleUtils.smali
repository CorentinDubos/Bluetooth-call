.class public Lcom/hzbhd/midwareproxy/utils/DataHandleUtils;
.super Ljava/lang/Object;
.source "DataHandleUtils.java"


# static fields
.field public static cmdHeads:B = 0x0t

.field public static isSalesInside:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Byte2Unicode([BZ)Ljava/lang/String;
    .locals 6

    .line 100
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 101
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    if-eqz p1, :cond_0

    add-int/lit8 v2, v1, 0x1

    .line 105
    aget-byte v1, p0, v1

    add-int/lit8 v3, v2, 0x1

    .line 106
    aget-byte v2, p0, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v1, 0x1

    .line 108
    aget-byte v1, p0, v1

    add-int/lit8 v3, v2, 0x1

    .line 109
    aget-byte v2, p0, v2

    move v5, v2

    move v2, v1

    move v1, v5

    :goto_1
    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v1, v1, 0x8

    const v4, 0xff00

    and-int/2addr v1, v4

    add-int/2addr v2, v1

    int-to-char v1, v2

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v1, v3

    goto :goto_0

    .line 114
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ByteToInt(B)I
    .locals 0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static FordbytesToLong([B)J
    .locals 9

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 66
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    long-to-double v0, v0

    .line 67
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    int-to-double v3, v3

    const-wide/high16 v5, 0x4070000000000000L    # 256.0

    int-to-double v7, v2

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    mul-double/2addr v3, v5

    add-double/2addr v0, v3

    double-to-long v0, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public static IntToByte(I)B
    .locals 0

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    return p0
.end method

.method public static bcd2Str([B)Ljava/lang/String;
    .locals 10

    .line 512
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 513
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_8

    .line 514
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xf0

    shr-int/lit8 v2, v2, 0x4

    const/16 v3, 0xf

    and-int/2addr v2, v3

    int-to-char v2, v2

    const/16 v4, 0x23

    const/16 v5, 0x2a

    const/16 v6, 0xb

    const/16 v7, 0x9

    const/16 v8, 0xa

    if-ltz v2, :cond_0

    if-gt v2, v7, :cond_0

    mul-int/lit8 v9, v1, 0x2

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    .line 516
    aput-char v2, v0, v9

    goto :goto_1

    :cond_0
    if-ne v2, v8, :cond_1

    mul-int/lit8 v2, v1, 0x2

    .line 518
    aput-char v5, v0, v2

    goto :goto_1

    :cond_1
    if-ne v2, v6, :cond_2

    mul-int/lit8 v2, v1, 0x2

    .line 520
    aput-char v4, v0, v2

    goto :goto_1

    :cond_2
    if-ne v2, v3, :cond_3

    goto :goto_3

    .line 525
    :cond_3
    :goto_1
    aget-byte v2, p0, v1

    and-int/2addr v2, v3

    int-to-char v2, v2

    if-ltz v2, :cond_4

    if-gt v2, v7, :cond_4

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    .line 527
    aput-char v2, v0, v3

    goto :goto_2

    :cond_4
    if-ne v2, v8, :cond_5

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    .line 529
    aput-char v5, v0, v2

    goto :goto_2

    :cond_5
    if-ne v2, v6, :cond_6

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    .line 531
    aput-char v4, v0, v2

    goto :goto_2

    :cond_6
    if-ne v2, v3, :cond_7

    goto :goto_3

    :cond_7
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 536
    :cond_8
    :goto_3
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static byteMerger([B[B)[B
    .locals 3

    .line 585
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 586
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 587
    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-object v0
.end method

.method public static bytes2HexString([BI)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 177
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 178
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 179
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 181
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

.method public static bytesToLong([B)J
    .locals 9

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 45
    fill-array-data v0, :array_0

    const/4 v1, 0x0

    move v2, v1

    .line 46
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 47
    aget-byte v3, p0, v2

    aput-byte v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 50
    :cond_0
    aget-byte p0, v0, v1

    and-int/lit16 p0, p0, 0xff

    int-to-long v1, p0

    const/4 p0, 0x1

    .line 51
    aget-byte p0, v0, p0

    and-int/lit16 p0, p0, 0xff

    int-to-long v3, p0

    const/4 p0, 0x2

    .line 52
    aget-byte p0, v0, p0

    and-int/lit16 p0, p0, 0xff

    int-to-long v5, p0

    const/4 p0, 0x3

    .line 53
    aget-byte p0, v0, p0

    and-int/lit16 p0, p0, 0xff

    int-to-long v7, p0

    const/16 p0, 0x8

    shl-long/2addr v3, p0

    const/16 p0, 0x10

    shl-long/2addr v5, p0

    const/16 p0, 0x18

    shl-long/2addr v7, p0

    or-long v0, v1, v3

    or-long/2addr v0, v5

    or-long/2addr v0, v7

    return-wide v0

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static getAllValue(Landroid/content/Context;)Ljava/util/Map;
    .locals 2

    const-string/jumbo v0, "wujay"

    const/4 v1, 0x0

    .line 154
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 155
    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static getBoolBit0(I)Z
    .locals 1

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getBoolBit1(I)Z
    .locals 0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getBoolBit2(I)Z
    .locals 0

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getBoolBit3(I)Z
    .locals 0

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getBoolBit4(I)Z
    .locals 0

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getBoolBit5(I)Z
    .locals 0

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getBoolBit6(I)Z
    .locals 0

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getBoolBit7(I)Z
    .locals 0

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
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

    .line 366
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 367
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static getByteArrayToIntArray([B)[I
    .locals 3

    .line 78
    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 79
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 80
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_0

    .line 81
    aget-byte v2, p0, v1

    aput v2, v0, v1

    goto :goto_1

    .line 83
    :cond_0
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    aput v2, v0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getCanType()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;
    .locals 1

    .line 171
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v0

    return-object v0
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

.method public static getIntByPosition([IIII)I
    .locals 3

    .line 930
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const-string v2, "getIntByPosition"

    if-le p1, v0, :cond_0

    const-string p1, "dataIndex>maxArrayLenth"

    .line 932
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    .line 935
    :cond_0
    aget p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    .line 936
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "i="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    shr-int/2addr p0, p2

    shl-int p1, v1, p3

    sub-int/2addr p1, v1

    and-int/2addr p0, p1

    return p0
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

.method public static getIntValue(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    const-string/jumbo v0, "wujay"

    const/4 v1, 0x0

    .line 139
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 140
    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getIntValue(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 2

    const-string/jumbo v0, "wujay"

    const/4 v1, 0x0

    .line 144
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 145
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getRound(FI)F
    .locals 4

    int-to-double v0, p1

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    .line 964
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    float-to-double p0, p0

    mul-double/2addr p0, v0

    .line 965
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-double p0, p0

    div-double/2addr p0, v0

    double-to-float p0, p0

    return p0
.end method

.method public static getStorageSizeStr(J)Ljava/lang/String;
    .locals 8

    const-wide/16 v0, 0x3e8

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    .line 978
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "B"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/32 v2, 0xf4240

    cmp-long v2, p0, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "%.2f"

    if-gez v2, :cond_1

    .line 980
    div-long/2addr p0, v0

    long-to-double p0, p0

    .line 981
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    aput-object p0, v1, v3

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "KB"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-wide/32 v6, 0x3b9aca00

    cmp-long v2, p0, v6

    const-wide v6, 0x408f400000000000L    # 1000.0

    if-gez v2, :cond_2

    .line 983
    div-long/2addr p0, v0

    long-to-double p0, p0

    div-double/2addr p0, v6

    .line 985
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    aput-object p0, v1, v3

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "MB"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 987
    :cond_2
    div-long/2addr p0, v0

    long-to-double p0, p0

    div-double/2addr p0, v6

    div-double/2addr p0, v6

    .line 990
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    aput-object p0, v1, v3

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "GB"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getValidUnicodeIndex([BI)I
    .locals 2

    move v0, p1

    .line 918
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 919
    aget-byte v1, p0, v0

    if-nez v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p0, v1

    if-nez v1, :cond_0

    sub-int v1, v0, p1

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "wujay"

    const/4 v1, 0x0

    .line 149
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, 0x0

    .line 150
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isBackground(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 429
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "activity"

    .line 432
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const/4 v1, 0x1

    .line 433
    invoke-virtual {p0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 434
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 435
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 436
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    return v1

    :cond_2
    :goto_0
    return v0
.end method

.method public static isForeground(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "activity"

    .line 445
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const/4 v0, 0x1

    .line 446
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    .line 447
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 448
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isHondaAccord20Xinbas()Z
    .locals 2

    .line 904
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->HONDA_ACCORD_2_0_XINBAS:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isHondaAccord24Xinbas()Z
    .locals 2

    .line 911
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->HONDA_ACCORD_2_4_XINBAS:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isHondaAccordSimple()Z
    .locals 2

    .line 895
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->HONDA_ACCORD_2_0_MIDDLE_LOW_SIMPLE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    if-eq v0, v1, :cond_1

    .line 896
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->HONDA_ACCORD_2_4_CH_MIDDLE_LOW_SIMPLE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    if-eq v0, v1, :cond_1

    .line 897
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->HONDA_ACCORD_2_4_US_LOW_SIMPLE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static keyMediaNext()V
    .locals 1

    const/16 v0, 0x57

    .line 613
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/DataHandleUtils;->sendKeyValue(I)V

    return-void
.end method

.method public static keyMediaPause()V
    .locals 1

    const/16 v0, 0x7f

    .line 628
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/DataHandleUtils;->sendKeyValue(I)V

    return-void
.end method

.method public static keyMediaPlay()V
    .locals 1

    const/16 v0, 0x7e

    .line 632
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/DataHandleUtils;->sendKeyValue(I)V

    return-void
.end method

.method public static keyMediaPlayPause()V
    .locals 1

    const/16 v0, 0x55

    .line 624
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/DataHandleUtils;->sendKeyValue(I)V

    return-void
.end method

.method public static keyMediaPrevious()V
    .locals 1

    const/16 v0, 0x58

    .line 620
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/DataHandleUtils;->sendKeyValue(I)V

    return-void
.end method

.method public static keyReturn()V
    .locals 1

    const/4 v0, 0x4

    .line 595
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/DataHandleUtils;->sendKeyValue(I)V

    return-void
.end method

.method public static keymenu()V
    .locals 1

    const/16 v0, 0x52

    .line 602
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/DataHandleUtils;->sendKeyValue(I)V

    return-void
.end method

.method public static parseString2Hex(Ljava/lang/String;)I
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 942
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v3, 0x2

    .line 943
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x66

    const/16 v6, 0x5f

    const/16 v7, 0x61

    if-lt v2, v7, :cond_0

    if-gt v2, v5, :cond_0

    sub-int/2addr v2, v7

    add-int/lit8 v2, v2, 0xa

    goto :goto_0

    :cond_0
    if-ne v2, v6, :cond_1

    move v2, v0

    goto :goto_0

    .line 950
    :cond_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :goto_0
    if-lt v4, v7, :cond_2

    if-gt v4, v5, :cond_2

    sub-int/2addr v4, v7

    add-int/lit8 v0, v4, 0xa

    goto :goto_1

    :cond_2
    if-ne v4, v6, :cond_3

    goto :goto_1

    .line 957
    :cond_3
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_1
    mul-int/lit8 v2, v2, 0x10

    add-int/2addr v2, v0

    return v2
.end method

.method public static readData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    const-string v0, "carInfoData"

    const/4 v1, 0x0

    .line 231
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, 0x1

    .line 232
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static reportMcuDataExtra([BLandroid/content/Context;)V
    .locals 0

    .line 809
    :try_start_0
    invoke-static {p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isCanbusCmdPorting(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 810
    invoke-static {p0}, Lcom/hzbhd/midwareproxy/utils/DataHandleUtils;->sndCanCmd([B)V

    goto :goto_0

    .line 812
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

.method public static reportMcuDataFourArray([B[B[B[B)V
    .locals 1

    .line 880
    :try_start_0
    sget-boolean v0, Lcom/hzbhd/midwareproxy/utils/DataHandleUtils;->isSalesInside:Z

    if-eqz v0, :cond_2

    .line 881
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isCanSupplySimple()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 882
    invoke-static {p1}, Lcom/hzbhd/midwareproxy/utils/DataHandleUtils;->sndCanCmd([B)V

    goto :goto_0

    .line 883
    :cond_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isCanSupplyRaise()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 884
    invoke-static {p2}, Lcom/hzbhd/midwareproxy/utils/DataHandleUtils;->sndCanCmd([B)V

    goto :goto_0

    .line 886
    :cond_1
    invoke-static {p3}, Lcom/hzbhd/midwareproxy/utils/DataHandleUtils;->sndCanCmd([B)V

    goto :goto_0

    .line 889
    :cond_2
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public static reportMcuDataThreeArraySimpleXinbas(Landroid/content/Context;[B[B[B)V
    .locals 0

    .line 861
    :try_start_0
    invoke-static {p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isCanbusCmdPorting(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 862
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isCanSupplySimple()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 863
    invoke-static {p2}, Lcom/hzbhd/midwareproxy/utils/DataHandleUtils;->sndCanCmd([B)V

    goto :goto_0

    .line 864
    :cond_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isCanSupplyXinbas()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 865
    invoke-static {p3}, Lcom/hzbhd/midwareproxy/utils/DataHandleUtils;->sndCanCmd([B)V

    goto :goto_0

    .line 868
    :cond_1
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method public static reportMcuDataTwoArray([B[BLandroid/content/Context;)V
    .locals 0

    .line 849
    :try_start_0
    invoke-static {p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isCanbusCmdPorting(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 850
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto :goto_0

    .line 852
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

.method public static reportMcuDataWithoutContext([B)V
    .locals 1

    .line 822
    :try_start_0
    sget-boolean v0, Lcom/hzbhd/midwareproxy/utils/DataHandleUtils;->isSalesInside:Z

    if-eqz v0, :cond_0

    .line 823
    invoke-static {p0}, Lcom/hzbhd/midwareproxy/utils/DataHandleUtils;->sndCanCmd([B)V

    goto :goto_0

    .line 825
    :cond_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public static reportSingleInfoToMcu(II)V
    .locals 2

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [B

    const/4 v1, 0x0

    int-to-byte p0, p0

    aput-byte p0, v0, v1

    const/4 p0, 0x1

    int-to-byte p1, p1

    aput-byte p1, v0, p0

    .line 663
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 666
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
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

    .line 685
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 688
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static sendKeyValue(I)V
    .locals 2

    .line 641
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hzbhd/midwareproxy/utils/DataHandleUtils$1;

    invoke-direct {v1, p0}, Lcom/hzbhd/midwareproxy/utils/DataHandleUtils$1;-><init>(I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 646
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static setDataMode(Landroid/content/Context;)V
    .locals 0

    .line 873
    invoke-static {p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isCanbusCmdPorting(Landroid/content/Context;)Z

    move-result p0

    sput-boolean p0, Lcom/hzbhd/midwareproxy/utils/DataHandleUtils;->isSalesInside:Z

    return-void
.end method

.method public static setImageViewStatus(Landroid/widget/ImageView;Ljava/lang/Boolean;II)V
    .locals 0

    .line 733
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p2, p3

    :goto_0
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public static setImageViewStatusEx(Landroid/widget/ImageView;[II)V
    .locals 0

    .line 701
    aget p1, p1, p2

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

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

    .line 404
    invoke-static {p2, p3}, Lcom/hzbhd/midwareproxy/utils/DataHandleUtils;->getIntByteWithBit(II)Z

    move-result p2

    .line 403
    invoke-static {p0, p1, p2}, Lcom/hzbhd/midwareproxy/utils/DataHandleUtils;->setIntByteWithBit(IIZ)I

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

    .line 423
    invoke-static {p2, p3, p4}, Lcom/hzbhd/midwareproxy/utils/DataHandleUtils;->getIntFromByteWithBit(III)I

    move-result p2

    .line 422
    invoke-static {p0, p2, p1, p4}, Lcom/hzbhd/midwareproxy/utils/DataHandleUtils;->setIntFromByteWithBit(IIII)I

    move-result p0

    return p0
.end method

.method public static setIntValue(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    const-string/jumbo v0, "wujay"

    const/4 v1, 0x0

    .line 132
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 133
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 134
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 135
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setStringValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "wujay"

    const/4 v1, 0x0

    .line 125
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 126
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 127
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 128
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setSummary(Landroid/preference/ListPreference;Ljava/lang/Object;)V
    .locals 5

    .line 159
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 160
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    .line 161
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 162
    aget-object v3, v0, v2

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 163
    aget-object v0, v1, v2

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 164
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static setValue(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    const-string/jumbo p2, "wujay"

    const/4 v0, 0x0

    .line 118
    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 119
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 p2, 0x4

    .line 120
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 121
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setViewStatus(Landroid/view/View;Ljava/lang/Boolean;II)V
    .locals 1

    .line 705
    instance-of v0, p0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 706
    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p2, p3

    :goto_0
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 707
    :cond_1
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 708
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move p2, p3

    :goto_1
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 709
    :cond_3
    instance-of v0, p0, Landroid/widget/Button;

    if-eqz v0, :cond_5

    .line 710
    check-cast p0, Landroid/widget/Button;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    move p2, p3

    :goto_2
    invoke-virtual {p0, p2}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_5
    :goto_3
    return-void
.end method

.method public static setViewStatusEx(Landroid/view/View;[II)V
    .locals 1

    .line 715
    instance-of v0, p0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 716
    check-cast p0, Landroid/widget/ImageView;

    aget p1, p1, p2

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 717
    :cond_0
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 718
    check-cast p0, Landroid/widget/TextView;

    aget p1, p1, p2

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 719
    :cond_1
    instance-of v0, p0, Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 720
    check-cast p0, Landroid/widget/Button;

    aget p1, p1, p2

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static setViewStatusEx_1(Landroid/view/View;I)V
    .locals 1

    .line 724
    instance-of v0, p0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 725
    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 726
    :cond_0
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 727
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 728
    :cond_1
    instance-of v0, p0, Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 729
    check-cast p0, Landroid/widget/Button;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static setWidgetVisiable(Ljava/lang/Boolean;)I
    .locals 0

    .line 737
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    :goto_0
    return p0
.end method

.method public static sndCanCmd([B)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    .line 740
    invoke-static {v0, p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object p0

    .line 742
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 744
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static sndMcuData([BLandroid/content/Context;)V
    .locals 0

    .line 772
    :try_start_0
    invoke-static {p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isCanbusCmdPorting(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 773
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto :goto_0

    .line 775
    :cond_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reqCanbusInfo([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public static sndMcuDataExtra([BLandroid/content/Context;)V
    .locals 0

    .line 784
    :try_start_0
    invoke-static {p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isCanbusCmdPorting(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 785
    invoke-static {p0}, Lcom/hzbhd/midwareproxy/utils/DataHandleUtils;->sndCanCmd([B)V

    goto :goto_0

    .line 787
    :cond_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reqCanbusInfo([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public static sndMcuDataThreeArraySimpleRaise(Landroid/content/Context;[B[B[B)V
    .locals 0

    .line 835
    :try_start_0
    invoke-static {p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isCanbusCmdPorting(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 836
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isCanSupplySimple()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 837
    invoke-static {p2}, Lcom/hzbhd/midwareproxy/utils/DataHandleUtils;->sndCanCmd([B)V

    goto :goto_0

    .line 838
    :cond_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isCanSupplyRaise()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 839
    invoke-static {p3}, Lcom/hzbhd/midwareproxy/utils/DataHandleUtils;->sndCanCmd([B)V

    goto :goto_0

    .line 842
    :cond_1
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reqCanbusInfo([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method public static sndMcuDataTwoArray([B[BLandroid/content/Context;)V
    .locals 0

    .line 796
    :try_start_0
    invoke-static {p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isCanbusCmdPorting(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 797
    invoke-static {p1}, Lcom/hzbhd/midwareproxy/utils/DataHandleUtils;->sndCanCmd([B)V

    goto :goto_0

    .line 799
    :cond_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reqCanbusInfo([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public static str2Bcd(Ljava/lang/String;)[B
    .locals 14

    .line 543
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 544
    rem-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 547
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 549
    :cond_0
    new-array v1, v0, [B

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 551
    div-int/lit8 v0, v0, 0x2

    .line 553
    :cond_1
    new-array v0, v0, [B

    .line 554
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    .line 556
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    div-int/2addr v4, v1

    if-ge v3, v4, :cond_8

    mul-int/lit8 v4, v3, 0x2

    .line 557
    aget-byte v5, v2, v4

    const/16 v6, 0xb

    const/16 v7, 0xf

    const/16 v8, 0xa

    const/16 v9, 0x23

    const/16 v10, 0x39

    const/16 v11, 0x2a

    const/16 v12, 0x30

    if-lt v5, v12, :cond_2

    aget-byte v5, v2, v4

    if-gt v5, v10, :cond_2

    .line 558
    aget-byte v5, v2, v4

    sub-int/2addr v5, v12

    goto :goto_1

    .line 559
    :cond_2
    aget-byte v5, v2, v4

    if-ne v5, v11, :cond_3

    move v5, v8

    goto :goto_1

    .line 561
    :cond_3
    aget-byte v5, v2, v4

    if-ne v5, v9, :cond_4

    move v5, v6

    goto :goto_1

    :cond_4
    move v5, v7

    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 567
    aget-byte v13, v2, v4

    if-lt v13, v12, :cond_5

    aget-byte v13, v2, v4

    if-gt v13, v10, :cond_5

    .line 568
    aget-byte v4, v2, v4

    add-int/lit8 v6, v4, -0x30

    goto :goto_2

    .line 569
    :cond_5
    aget-byte v10, v2, v4

    if-ne v10, v11, :cond_6

    move v6, v8

    goto :goto_2

    .line 571
    :cond_6
    aget-byte v4, v2, v4

    if-ne v4, v9, :cond_7

    goto :goto_2

    :cond_7
    move v6, v7

    :goto_2
    shl-int/lit8 v4, v5, 0x4

    add-int/2addr v4, v6

    int-to-byte v4, v4

    .line 578
    aput-byte v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_8
    return-object v0
.end method

.method public static switchKey(I)I
    .locals 4

    const/16 v0, 0x2e

    const/16 v1, 0x14

    if-eq p0, v1, :cond_3

    const/16 v2, 0x2d

    const/16 v3, 0x15

    if-eq p0, v3, :cond_2

    if-eq p0, v2, :cond_1

    if-eq p0, v0, :cond_0

    return p0

    :cond_0
    return v1

    :cond_1
    return v3

    :cond_2
    return v2

    :cond_3
    return v0
.end method

.method public static toTimeFormat(IIIZ)Ljava/lang/String;
    .locals 5

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ":"

    const-string v2, "00:"

    const-string v3, "0"

    const/16 v4, 0xa

    if-eqz p3, :cond_2

    if-eqz p0, :cond_1

    if-ge p0, v4, :cond_0

    .line 464
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 466
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 468
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_0
    if-eqz p1, :cond_4

    if-ge p1, v4, :cond_3

    .line 473
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    :cond_3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 475
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 477
    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    if-eqz p2, :cond_6

    if-ge p2, v4, :cond_5

    .line 481
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    :cond_5
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    const-string p0, "00"

    .line 484
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static twoDigitStr(I)Ljava/lang/String;
    .locals 3

    .line 697
    div-int/lit8 v0, p0, 0xa

    const-string v1, ""

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static writeData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    const-string v0, "carInfoData"

    const/4 v1, 0x0

    .line 224
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 225
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 226
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 227
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
