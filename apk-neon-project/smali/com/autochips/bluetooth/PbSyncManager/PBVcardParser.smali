.class public Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;
.super Ljava/lang/Object;
.source "PBVcardParser.java"


# static fields
.field private static DEBUG:Z = false

.field private static final QUOTEDPRINTABLE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PBVcardParser"

.field private static final mBeginVcard:Ljava/lang/String; = "BEGIN:VCARD"

.field private static final mEncoding:Ljava/lang/String; = "ENCODING"

.field private static final mEndVcard:Ljava/lang/String; = "END:VCARD"

.field private static final mName:Ljava/lang/String; = "N"

.field private static final mQuotedPrintable:Ljava/lang/String; = "QUOTED-PRINTABLE"

.field private static final mTel:Ljava/lang/String; = "TEL"

.field private static final mTimestamp:Ljava/lang/String; = "X-IRMC-CALL-DATETIME"


# instance fields
.field private mAdditional:Ljava/lang/String;

.field private mCallTime:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mFamily:Ljava/lang/String;

.field private mGiven:Ljava/lang/String;

.field private mParseName:Ljava/lang/String;

.field private mPrefix:Ljava/lang/String;

.field private mSuffix:Ljava/lang/String;

.field private mTelNum:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    sget-boolean v0, Lcom/autochips/bluetooth/BtEmulatorDebug;->mDebugAll:Z

    sget-boolean v1, Lcom/autochips/bluetooth/BtEmulatorDebug;->mDebugPB:Z

    and-int/2addr v0, v1

    sput-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->mFamily:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->mGiven:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->mAdditional:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->mPrefix:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->mSuffix:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->mParseName:Ljava/lang/String;

    .line 49
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->mTelNum:Ljava/util/List;

    .line 57
    iput-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->mCallTime:Ljava/lang/String;

    .line 62
    iput-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static UTF8_Decoding(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "=\n"

    .line 70
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "=="

    const-string v2, "="

    .line 71
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "US-ASCII"

    .line 72
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    const/4 v1, 0x0

    move v2, v1

    .line 74
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 75
    aget-byte v3, p0, v2

    const/16 v4, 0x5f

    if-eq v3, v4, :cond_1

    .line 77
    aput-byte v3, p0, v2

    goto :goto_1

    :cond_1
    const/16 v3, 0x20

    .line 79
    aput-byte v3, p0, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-nez p0, :cond_3

    return-object v0

    .line 86
    :cond_3
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 87
    :goto_2
    array-length v3, p0

    if-ge v1, v3, :cond_7

    .line 88
    aget-byte v3, p0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v4, 0x3d

    if-ne v3, v4, :cond_5

    add-int/lit8 v1, v1, 0x1

    .line 91
    :try_start_1
    aget-byte v3, p0, v1

    int-to-char v3, v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    add-int/lit8 v1, v1, 0x1

    .line 92
    aget-byte v5, p0, v1

    int-to-char v5, v5

    invoke-static {v5, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    const/4 v5, -0x1

    if-eq v3, v5, :cond_6

    if-ne v4, v5, :cond_4

    goto :goto_3

    :cond_4
    shl-int/lit8 v3, v3, 0x4

    add-int/2addr v3, v4

    int-to-char v3, v3

    .line 96
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_0
    move-exception v3

    .line 98
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_3

    .line 101
    :cond_5
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_6
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 104
    :cond_7
    new-instance p0, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {p0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    .line 106
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public static UTF8_DecodingWithoutQuoted(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "=\n"

    .line 116
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "US-ASCII"

    .line 117
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    const/4 v1, 0x0

    move v2, v1

    .line 118
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 119
    aget-byte v3, p0, v2

    const/16 v4, 0x5f

    if-eq v3, v4, :cond_1

    .line 121
    aput-byte v3, p0, v2

    goto :goto_1

    :cond_1
    const/16 v3, 0x20

    .line 123
    aput-byte v3, p0, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-nez p0, :cond_3

    return-object v0

    .line 130
    :cond_3
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 131
    :goto_2
    array-length v3, p0

    if-ge v1, v3, :cond_6

    .line 132
    aget-byte v3, p0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    add-int/lit8 v3, v1, 0x1

    .line 134
    :try_start_1
    aget-byte v1, p0, v1

    int-to-char v1, v1

    const/16 v4, 0x10

    invoke-static {v1, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    add-int/lit8 v5, v3, 0x1

    .line 135
    :try_start_2
    aget-byte v3, p0, v3

    int-to-char v3, v3

    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    const/4 v4, -0x1

    if-eq v1, v4, :cond_5

    if-ne v3, v4, :cond_4

    goto :goto_3

    :cond_4
    shl-int/lit8 v1, v1, 0x4

    add-int/2addr v1, v3

    int-to-char v1, v1

    .line 139
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_5
    :goto_3
    move v1, v5

    goto :goto_2

    :catch_0
    move-exception v1

    move v3, v5

    goto :goto_4

    :catch_1
    move-exception v1

    .line 141
    :goto_4
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    move v1, v3

    goto :goto_2

    .line 144
    :cond_6
    new-instance p0, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {p0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    return-object p0

    :catch_2
    move-exception p0

    .line 146
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method private parseCallTime(Ljava/lang/String;)V
    .locals 8

    const-string v0, ":"

    .line 349
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 350
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 351
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 354
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xf

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    const/4 v3, 0x4

    .line 355
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x6

    .line 356
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x8

    .line 357
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x9

    const/16 v6, 0xb

    .line 358
    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0xd

    .line 359
    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 360
    invoke-virtual {p1, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 362
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->mCallTime:Ljava/lang/String;

    goto :goto_0

    .line 364
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "time format is not stadard:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PBVcardParser"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "2008-01-01 00:00:00"

    .line 365
    iput-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->mCallTime:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method private parseName(Ljava/lang/String;)V
    .locals 8

    const-string v0, "PBVcardParser"

    const-string v1, ""

    if-nez p1, :cond_0

    const-string p1, "no N string here."

    .line 238
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iput-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->mFamily:Ljava/lang/String;

    .line 240
    iput-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->mGiven:Ljava/lang/String;

    .line 241
    iput-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->mAdditional:Ljava/lang/String;

    .line 242
    iput-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->mPrefix:Ljava/lang/String;

    .line 243
    iput-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->mSuffix:Ljava/lang/String;

    return-void

    .line 246
    :cond_0
    sget-boolean v2, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->DEBUG:Z

    if-eqz v2, :cond_1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v0, ":"

    .line 252
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    .line 253
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ENCODING"

    .line 254
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const-string v5, ";"

    const/4 v6, 0x1

    if-ltz v4, :cond_3

    add-int/lit8 v4, v4, 0x8

    .line 256
    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    if-gez v7, :cond_2

    move v7, v0

    :cond_2
    add-int/2addr v4, v6

    .line 260
    invoke-virtual {v3, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "QUOTED-PRINTABLE"

    .line 261
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v2, v6

    :cond_3
    add-int/2addr v0, v6

    .line 266
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_4

    move v3, v0

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    :goto_0
    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "UTF-8"

    const-string v7, "ISO-8859-1"

    if-gez v3, :cond_7

    .line 269
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 270
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->mFamily:Ljava/lang/String;

    if-ne v2, v6, :cond_5

    .line 272
    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->UTF8_Decoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->mFamily:Ljava/lang/String;

    goto :goto_1

    .line 275
    :cond_5
    :try_start_0
    new-instance p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->mFamily:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p1, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->mFamily:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 277
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 281
    :cond_6
    iput-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->mFamily:Ljava/lang/String;

    .line 283
    :goto_1
    iput-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->mGiven:Ljava/lang/String;

    .line 284
    iput-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->mAdditional:Ljava/lang/String;

    .line 285
    iput-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->mPrefix:Ljava/lang/String;

    .line 286
    iput-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->mSuffix:Ljava/lang/String;

    return-void

    .line 289
    :cond_7
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->mFamily:Ljava/lang/String;

    add-int/2addr v3, v6

    .line 291
    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_8

    .line 293
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->mGiven:Ljava/lang/String;

    .line 294
    iput-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->mAdditional:Ljava/lang/String;

    .line 295
    iput-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->mPrefix:Ljava/lang/String;

    .line 296
    iput-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->mSuffix:Ljava/lang/String;

    goto :goto_2

    .line 298
    :cond_8
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->mGiven:Ljava/lang/String;

    add-int/2addr v0, v6

    .line 300
    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-gez v3, :cond_9

    .line 302
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->mAdditional:Ljava/lang/String;

    .line 303
    iput-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->mPrefix:Ljava/lang/String;

    .line 304
    iput-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->mSuffix:Ljava/lang/String;

    goto :goto_2

    .line 306
    :cond_9
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->mAdditional:Ljava/lang/String;

    .line 307
    iput-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->mPrefix:Ljava/lang/String;

    .line 308
    iput-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->mSuffix:Ljava/lang/String;

    :goto_2
    if-ne v2, v6, :cond_a

    .line 313
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->mFamily:Ljava/lang/String;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->UTF8_Decoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->mFamily:Ljava/lang/String;

    .line 314
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->mGiven:Ljava/lang/String;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->UTF8_Decoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->mGiven:Ljava/lang/String;

    .line 315
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->mAdditional:Ljava/lang/String;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->UTF8_Decoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->mAdditional:Ljava/lang/String;

    .line 316
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->mPrefix:Ljava/lang/String;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->UTF8_Decoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->mPrefix:Ljava/lang/String;

    .line 317
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->mSuffix:Ljava/lang/String;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->UTF8_Decoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->mSuffix:Ljava/lang/String;

    goto :goto_3

    :cond_a
    if-nez v2, :cond_b

    .line 320
    :try_start_1
    new-instance p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->mFamily:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p1, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->mFamily:Ljava/lang/String;

    .line 321
    new-instance p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->mGiven:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p1, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->mGiven:Ljava/lang/String;

    .line 322
    new-instance p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->mAdditional:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p1, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->mAdditional:Ljava/lang/String;

    .line 323
    new-instance p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->mPrefix:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p1, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->mPrefix:Ljava/lang/String;

    .line 324
    new-instance p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->mSuffix:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p1, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->mSuffix:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 326
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_b
    :goto_3
    return-void
.end method

.method private parseTel(Ljava/lang/String;)V
    .locals 3

    const-string v0, ":"

    .line 334
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 335
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 336
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "-"

    const-string v1, ""

    .line 337
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 338
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "+86"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->mTelNum:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public doParseVcard(Ljava/lang/String;Ljava/util/List;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/autochips/bluetooth/PbSyncManager/PBRecord;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "PBVcardParser"

    const/4 v1, 0x0

    .line 163
    :try_start_0
    iget-object v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 170
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_0
    move v6, v1

    move-object v5, v4

    .line 172
    :cond_0
    :goto_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_9

    const-string v8, "BEGIN:VCARD"

    .line 174
    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_1

    .line 176
    iput-object v4, p0, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->mFamily:Ljava/lang/String;

    .line 177
    iput-object v4, p0, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->mGiven:Ljava/lang/String;

    .line 178
    iput-object v4, p0, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->mAdditional:Ljava/lang/String;

    .line 179
    iput-object v4, p0, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->mPrefix:Ljava/lang/String;

    .line 180
    iput-object v4, p0, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->mSuffix:Ljava/lang/String;

    .line 181
    iput-object v4, p0, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->mParseName:Ljava/lang/String;

    .line 182
    iget-object v5, p0, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->mTelNum:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 183
    iput-object v4, p0, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->mCallTime:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v8, "END:VCARD"

    .line 187
    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_2

    .line 188
    invoke-direct {p0, v5}, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->parseName(Ljava/lang/String;)V

    move v7, v1

    .line 189
    :goto_2
    iget-object v8, p0, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->mTelNum:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_0

    .line 190
    new-instance v8, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->mFamily:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->mAdditional:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->mGiven:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->mTelNum:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iget-object v11, p0, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->mCallTime:Ljava/lang/String;

    invoke-direct {v8, v1, v9, v10, v11}, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-interface {p2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    const-string v8, ":"

    .line 197
    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-gez v8, :cond_3

    if-ne v3, v6, :cond_0

    .line 200
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 204
    :cond_3
    invoke-virtual {v7, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 205
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v9, v3, :cond_4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    goto :goto_3

    :cond_4
    move v9, v3

    :goto_3
    invoke-virtual {v8, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const-string v10, "N"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    move v6, v3

    move-object v5, v7

    goto/16 :goto_1

    .line 210
    :cond_5
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x3

    if-ge v9, v10, :cond_6

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    :cond_6
    invoke-virtual {v8, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const-string v10, "TEL"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 212
    invoke-direct {p0, v7}, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->parseTel(Ljava/lang/String;)V

    :goto_4
    move v6, v1

    goto/16 :goto_1

    .line 214
    :cond_7
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0x14

    if-ge v9, v10, :cond_8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    :cond_8
    invoke-virtual {v8, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const-string v9, "X-IRMC-CALL-DATETIME"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 216
    invoke-direct {p0, v7}, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->parseCallTime(Ljava/lang/String;)V

    goto :goto_4

    .line 220
    :cond_9
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 221
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    const-string p2, "PBListInfo.log read exception"

    .line 224
    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_5
    return v3

    :catch_1
    move-exception p2

    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-virtual {p2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    return v1
.end method
