.class public Lcom/hzbhd/midwareproxy/utils/ByteUtils;
.super Ljava/lang/Object;
.source "ByteUtils.java"


# static fields
.field private static final DIGITS:[C

.field private static final UPPER_CASE_DIGITS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x24

    new-array v1, v0, [C

    .line 8
    fill-array-data v1, :array_0

    sput-object v1, Lcom/hzbhd/midwareproxy/utils/ByteUtils;->DIGITS:[C

    new-array v0, v0, [C

    .line 15
    fill-array-data v0, :array_1

    sput-object v0, Lcom/hzbhd/midwareproxy/utils/ByteUtils;->UPPER_CASE_DIGITS:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
    .end array-data

    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toBcdString([B)Ljava/lang/String;
    .locals 4

    .line 31
    new-instance v0, Ljava/lang/StringBuffer;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    .line 32
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 33
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xf0

    ushr-int/lit8 v3, v3, 0x4

    int-to-byte v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 34
    aget-byte v3, p0, v2

    and-int/lit8 v3, v3, 0xf

    int-to-byte v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v1, "0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static toHexString(BZ)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_0

    .line 23
    sget-object p1, Lcom/hzbhd/midwareproxy/utils/ByteUtils;->UPPER_CASE_DIGITS:[C

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/hzbhd/midwareproxy/utils/ByteUtils;->DIGITS:[C

    :goto_0
    const/4 v0, 0x2

    new-array v1, v0, [C

    shr-int/lit8 v2, p0, 0x4

    and-int/lit8 v2, v2, 0xf

    .line 25
    aget-char v2, p1, v2

    const/4 v3, 0x0

    aput-char v2, v1, v3

    const/4 v2, 0x1

    and-int/lit8 p0, p0, 0xf

    .line 26
    aget-char p0, p1, p0

    aput-char p0, v1, v2

    .line 27
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v3, v0}, Ljava/lang/String;-><init>([CII)V

    return-object p0
.end method
