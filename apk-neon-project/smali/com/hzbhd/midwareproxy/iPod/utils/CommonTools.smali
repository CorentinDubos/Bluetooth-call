.class public Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;
.super Ljava/lang/Object;
.source "CommonTools.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ENCODER_NAME:Ljava/lang/String; = "utf-8"

.field private static final TAG:Ljava/lang/String; = "CommonTools"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteArrayToHexString([B)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 266
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 267
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 268
    aget-byte v2, p0, v1

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    .line 269
    aget-byte v3, p0, v1

    and-int/lit8 v3, v3, 0xf

    .line 271
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 274
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static byteArrayToInt([BLcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p0, :cond_4

    if-eqz p1, :cond_3

    .line 121
    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 125
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;->BIG_ENDIAN:Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p1, v0, :cond_0

    .line 126
    aget-byte p1, p0, v4

    aget-byte v0, p0, v3

    aget-byte v2, p0, v2

    aget-byte p0, p0, v1

    invoke-static {p1, v0, v2, p0}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;->byteToInt(BBBB)I

    move-result p0

    return p0

    .line 127
    :cond_0
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;->LITTLE_ENDIAN:Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;

    if-ne p1, v0, :cond_1

    .line 128
    aget-byte p1, p0, v1

    aget-byte v0, p0, v2

    aget-byte v1, p0, v3

    aget-byte p0, p0, v4

    invoke-static {p1, v0, v1, p0}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;->byteToInt(BBBB)I

    move-result p0

    return p0

    :cond_1
    return v4

    .line 122
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "byte array size != 4!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 118
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "byteOrder is null!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 114
    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "bArray is null!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static byteArrayToLong([BLcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;)J
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v0, :cond_4

    if-eqz v1, :cond_3

    .line 227
    array-length v2, v0

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    .line 231
    sget-object v2, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;->BIG_ENDIAN:Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;

    const/4 v3, 0x7

    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-ne v1, v2, :cond_0

    .line 232
    aget-byte v11, v0, v10

    aget-byte v12, v0, v9

    aget-byte v13, v0, v8

    aget-byte v14, v0, v7

    aget-byte v15, v0, v6

    aget-byte v16, v0, v5

    aget-byte v17, v0, v4

    aget-byte v18, v0, v3

    invoke-static/range {v11 .. v18}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;->byteToLong(BBBBBBBB)J

    move-result-wide v0

    return-wide v0

    .line 233
    :cond_0
    sget-object v2, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;->LITTLE_ENDIAN:Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;

    if-ne v1, v2, :cond_1

    .line 234
    aget-byte v11, v0, v3

    aget-byte v12, v0, v4

    aget-byte v13, v0, v5

    aget-byte v14, v0, v6

    aget-byte v15, v0, v7

    aget-byte v16, v0, v8

    aget-byte v17, v0, v9

    aget-byte v18, v0, v10

    invoke-static/range {v11 .. v18}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;->byteToLong(BBBBBBBB)J

    move-result-wide v0

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0

    .line 228
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "byte array size != 8!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "byteOrder is null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "bArray is null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static byteArrayToShort([BLcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;)S
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p0, :cond_4

    if-eqz p1, :cond_3

    .line 40
    array-length v0, p0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 44
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;->BIG_ENDIAN:Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    .line 45
    aget-byte p1, p0, v2

    aget-byte p0, p0, v1

    invoke-static {p1, p0}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;->byteToShort(BB)S

    move-result p0

    return p0

    .line 46
    :cond_0
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;->LITTLE_ENDIAN:Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;

    if-ne p1, v0, :cond_1

    .line 47
    aget-byte p1, p0, v1

    aget-byte p0, p0, v2

    invoke-static {p1, p0}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;->byteToShort(BB)S

    move-result p0

    return p0

    :cond_1
    return v2

    .line 41
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "byte array size != 2!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 37
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "byteOrder is null!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 33
    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "bArray is null!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static byteToInt(BBBB)I
    .locals 0

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p0, p1

    and-int/lit16 p1, p2, 0xff

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    and-int/lit16 p1, p3, 0xff

    or-int/2addr p0, p1

    return p0
.end method

.method public static byteToLong(BBBBBBBB)J
    .locals 0

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x38

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x30

    or-int/2addr p0, p1

    and-int/lit16 p1, p2, 0xff

    shl-int/lit8 p1, p1, 0x28

    or-int/2addr p0, p1

    and-int/lit16 p1, p3, 0xff

    shl-int/lit8 p1, p1, 0x20

    or-int/2addr p0, p1

    and-int/lit16 p1, p4, 0xff

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    and-int/lit16 p1, p5, 0xff

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p0, p1

    and-int/lit16 p1, p6, 0xff

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    and-int/lit16 p1, p7, 0xff

    or-int/2addr p0, p1

    int-to-long p0, p0

    return-wide p0
.end method

.method public static byteToShort(BB)S
    .locals 1

    shl-int/lit8 p0, p0, 0x8

    const v0, 0xff00

    and-int/2addr p0, v0

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p0, p1

    int-to-short p0, p0

    return p0
.end method

.method public static byteToString([BI)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_2

    .line 348
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 353
    :cond_0
    array-length v1, p0

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_1

    return-object v0

    .line 358
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, v1}, Ljava/lang/String;-><init>([BII)V

    return-object v0

    .line 349
    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parameter error, start index invalid:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CommonTools"

    invoke-static {p1, p0}, Lcom/hzbhd/midwareproxy/iPod/utils/Trace;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static byteToString([BII)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const-string v1, "CommonTools"

    if-gtz p2, :cond_0

    .line 370
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "parameter error, count is "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/hzbhd/midwareproxy/iPod/utils/Trace;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    if-ltz p1, :cond_2

    .line 373
    array-length v2, p0

    if-lt p1, v2, :cond_1

    goto :goto_0

    .line 378
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([BII)V

    return-object v0

    .line 374
    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "parameter error, start index invalid:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/hzbhd/midwareproxy/iPod/utils/Trace;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static celsiusToFahrenheit(D)D
    .locals 2

    const-wide/high16 v0, 0x4022000000000000L    # 9.0

    mul-double/2addr p0, v0

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    div-double/2addr p0, v0

    const-wide/high16 v0, 0x4040000000000000L    # 32.0

    add-double/2addr p0, v0

    return-wide p0
.end method

.method public static fahrenheitToCelsius(D)D
    .locals 2

    const-wide/high16 v0, 0x4040000000000000L    # 32.0

    sub-double/2addr p0, v0

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    mul-double/2addr p0, v0

    const-wide/high16 v0, 0x4022000000000000L    # 9.0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method private static getStringLength([BIB)I
    .locals 3

    const/4 v0, 0x0

    .line 332
    array-length v1, p0

    :goto_0
    if-ge p1, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 334
    aget-byte v2, p0, p1

    if-ne v2, p2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method public static getStringLengthByTab([BI)I
    .locals 1

    const/16 v0, 0x9

    .line 324
    invoke-static {p0, p1, v0}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;->getStringLength([BIB)I

    move-result p0

    return p0
.end method

.method public static getStringLengthFromByteArray([BI)I
    .locals 1

    const/4 v0, 0x0

    .line 311
    invoke-static {p0, p1, v0}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;->getStringLength([BIB)I

    move-result p0

    return p0
.end method

.method public static gfcm2Tokgfcm2(D)D
    .locals 2

    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public static hexStringToByteArray(Ljava/lang/String;)[B
    .locals 5

    .line 278
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 279
    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 283
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 284
    array-length v0, p0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    const/4 v2, 0x0

    .line 285
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 286
    aget-char v3, p0, v2

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-nez v3, :cond_1

    return-object v1

    .line 290
    :cond_1
    aget-char v3, p0, v2

    invoke-static {v3}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v3

    add-int/lit8 v4, v2, 0x1

    .line 291
    aget-char v4, p0, v4

    invoke-static {v4}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v4

    shl-int/lit8 v3, v3, 0x4

    and-int/lit8 v4, v4, 0xf

    or-int/2addr v3, v4

    int-to-byte v3, v3

    .line 295
    div-int/lit8 v4, v2, 0x2

    aput-byte v3, v0, v4

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static intToByteArray(ILcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    if-eqz p1, :cond_2

    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 155
    sget-object v2, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;->BIG_ENDIAN:Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;

    if-ne p1, v2, :cond_0

    const/4 p1, 0x3

    :goto_0
    if-ltz p1, :cond_1

    and-int/lit16 v0, p0, 0xff

    int-to-byte v0, v0

    .line 157
    aput-byte v0, v1, p1

    shr-int/lit8 p0, p0, 0x8

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 160
    :cond_0
    sget-object v2, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;->LITTLE_ENDIAN:Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;

    if-ne p1, v2, :cond_1

    const/4 p1, 0x0

    :goto_1
    if-ge p1, v0, :cond_1

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    .line 162
    aput-byte v2, v1, p1

    shr-int/lit8 p0, p0, 0x8

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-object v1

    .line 151
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "byteOrder is null!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static kgfcm2Togfcm2(D)D
    .locals 2

    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double/2addr p0, v0

    return-wide p0
.end method

.method public static longToByteArray(JLcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;)[B
    .locals 7

    if-eqz p2, :cond_2

    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 190
    sget-object v2, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;->BIG_ENDIAN:Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;

    const-wide/16 v3, 0xff

    if-ne p2, v2, :cond_0

    const/4 p2, 0x7

    :goto_0
    if-ltz p2, :cond_1

    and-long v5, p0, v3

    long-to-int v2, v5

    int-to-byte v2, v2

    .line 192
    aput-byte v2, v1, p2

    shr-long/2addr p0, v0

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 195
    :cond_0
    sget-object v2, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;->LITTLE_ENDIAN:Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;

    if-ne p2, v2, :cond_1

    const/4 p2, 0x0

    :goto_1
    if-ge p2, v0, :cond_1

    and-long v5, p0, v3

    long-to-int v2, v5

    int-to-byte v2, v2

    .line 197
    aput-byte v2, v1, p2

    shr-long/2addr p0, v0

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    return-object v1

    .line 186
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "byteOrder is null!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static printByteArrayInHex(Ljava/lang/String;[B)V
    .locals 2

    .line 388
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;->printByteArrayInHex(Ljava/lang/String;[BII)V

    return-void
.end method

.method public static printByteArrayInHex(Ljava/lang/String;[BII)V
    .locals 6

    const-string v0, "CommonTools"

    if-gtz p3, :cond_0

    const-string p0, "length is error!"

    .line 399
    invoke-static {v0, p0}, Lcom/hzbhd/midwareproxy/iPod/utils/Trace;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-ltz p2, :cond_4

    .line 403
    array-length v1, p1

    if-lt p2, v1, :cond_1

    goto :goto_2

    :cond_1
    add-int/2addr p3, p2

    .line 408
    array-length v1, p1

    if-ge p3, v1, :cond_2

    goto :goto_0

    :cond_2
    array-length p3, p1

    .line 409
    :goto_0
    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1}, Ljava/util/Formatter;-><init>()V

    move v2, p2

    :goto_1
    if-ge v2, p3, :cond_3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 411
    aget-byte v5, p1, v2

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "%02x "

    invoke-virtual {v1, v4, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 413
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr p3, p2

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/hzbhd/midwareproxy/iPod/utils/Trace;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    invoke-virtual {v1}, Ljava/util/Formatter;->close()V

    return-void

    .line 404
    :cond_4
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "start value invalid:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/hzbhd/midwareproxy/iPod/utils/Trace;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static printByteArrayInHex([B)V
    .locals 2

    .line 385
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;->printByteArrayInHex([BII)V

    return-void
.end method

.method public static printByteArrayInHex([BII)V
    .locals 1

    const-string v0, ""

    .line 418
    invoke-static {v0, p0, p1, p2}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;->printByteArrayInHex(Ljava/lang/String;[BII)V

    return-void
.end method

.method public static printShortInHex(SLcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;)V
    .locals 0

    .line 422
    invoke-static {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;->shortToByteArray(SLcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;->printByteArrayInHex([B)V

    return-void
.end method

.method public static shortToByteArray(SLcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    if-eqz p1, :cond_2

    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 84
    sget-object v1, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;->BIG_ENDIAN:Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;

    const/4 v2, 0x1

    const v3, 0xff00

    const/4 v4, 0x0

    if-ne p1, v1, :cond_0

    and-int p1, p0, v3

    shr-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    aput-byte p1, v0, v4

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    aput-byte p0, v0, v2

    goto :goto_0

    .line 87
    :cond_0
    sget-object v1, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;->LITTLE_ENDIAN:Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;

    if-ne p1, v1, :cond_1

    and-int p1, p0, v3

    shr-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    aput-byte p0, v0, v4

    :cond_1
    :goto_0
    return-object v0

    .line 80
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "byteOrder is null!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
