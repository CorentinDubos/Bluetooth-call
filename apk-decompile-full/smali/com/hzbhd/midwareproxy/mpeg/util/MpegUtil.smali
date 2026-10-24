.class public Lcom/hzbhd/midwareproxy/mpeg/util/MpegUtil;
.super Ljava/lang/Object;
.source "MpegUtil.java"

# interfaces
.implements Lcom/hzbhd/midware/constant/MpegConstantsDef;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/mpeg/util/MpegUtil$ForyouToast;,
        Lcom/hzbhd/midwareproxy/mpeg/util/MpegUtil$launagry;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeString(Ljava/lang/String;Ljava/lang/String;[I)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    .line 165
    aget v1, p2, v0

    int-to-byte v1, v1

    .line 166
    array-length v2, p2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    new-array v2, v2, [B

    .line 169
    :goto_0
    array-length v4, p2

    sub-int/2addr v4, v3

    if-ge v0, v4, :cond_0

    add-int/lit8 v4, v0, 0x1

    .line 170
    aget v5, p2, v4

    int-to-byte v5, v5

    aput-byte v5, v2, v0

    move v0, v4

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_4

    if-eq v1, v3, :cond_3

    const/4 p0, 0x2

    if-eq v1, p0, :cond_2

    const/4 p0, 0x3

    if-eq v1, p0, :cond_1

    const-string p0, "ISO-8859-1"

    goto :goto_1

    :cond_1
    const-string/jumbo p0, "utf-8"

    goto :goto_1

    :cond_2
    const-string/jumbo p0, "utf-16be"

    goto :goto_1

    :cond_3
    const-string/jumbo p0, "utf-16le"

    goto :goto_1

    :cond_4
    const-string/jumbo p2, "zh"

    .line 176
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    const-string p0, "TW"

    .line 177
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "big5"

    goto :goto_1

    :cond_5
    const-string p0, "gbk"

    goto :goto_1

    :cond_6
    const-string/jumbo p2, "ru"

    .line 182
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "Windows-1251"

    goto :goto_1

    .line 185
    :cond_7
    invoke-static {p1}, Lcom/hzbhd/midwareproxy/mpeg/util/MpegUtil;->getCharSetByCountry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 202
    :goto_1
    :try_start_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2, p0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 205
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method

.method public static getCharSetByCountry(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 304
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/util/MpegUtil$1;->$SwitchMap$com$hzbhd$midwareproxy$mpeg$util$MpegUtil$launagry:[I

    invoke-static {p0}, Lcom/hzbhd/midwareproxy/mpeg/util/MpegUtil$launagry;->valueOf(Ljava/lang/String;)Lcom/hzbhd/midwareproxy/mpeg/util/MpegUtil$launagry;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/mpeg/util/MpegUtil$launagry;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const-string p0, "ISO-8859-9"

    return-object p0

    :pswitch_0
    const-string p0, "EUC-KR"

    return-object p0

    :pswitch_1
    const-string p0, "BIG5"

    return-object p0

    :pswitch_2
    const-string p0, "GBK"

    return-object p0

    :pswitch_3
    const-string p0, "ISO-8859-11"

    return-object p0

    :pswitch_4
    const-string p0, "Windows-1251"

    return-object p0

    :pswitch_5
    const-string p0, "ISO-8859-1"

    return-object p0

    :pswitch_6
    const-string p0, "ISO-8859-15"

    return-object p0

    :pswitch_7
    const-string p0, "ISO-8859-2"

    return-object p0

    :pswitch_8
    const-string p0, "ISO-8859-6"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getDirection(Lcom/hzbhd/midware/constant/MpegConstantsDef$MOVE_DIRECTION;)I
    .locals 1

    .line 140
    sget-object v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$MOVE_DIRECTION;->LEFT:Lcom/hzbhd/midware/constant/MpegConstantsDef$MOVE_DIRECTION;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 142
    :cond_0
    sget-object v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$MOVE_DIRECTION;->RIGHT:Lcom/hzbhd/midware/constant/MpegConstantsDef$MOVE_DIRECTION;

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 144
    :cond_1
    sget-object v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$MOVE_DIRECTION;->UP:Lcom/hzbhd/midware/constant/MpegConstantsDef$MOVE_DIRECTION;

    if-ne p0, v0, :cond_2

    const/4 p0, 0x2

    return p0

    .line 146
    :cond_2
    sget-object v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$MOVE_DIRECTION;->DOWN:Lcom/hzbhd/midware/constant/MpegConstantsDef$MOVE_DIRECTION;

    if-ne p0, v0, :cond_3

    const/4 p0, 0x3

    return p0

    .line 148
    :cond_3
    sget-object v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$MOVE_DIRECTION;->OK:Lcom/hzbhd/midware/constant/MpegConstantsDef$MOVE_DIRECTION;

    if-ne p0, v0, :cond_4

    const/4 p0, 0x4

    return p0

    :cond_4
    const/4 p0, -0x1

    return p0
.end method

.method public static getDiscType(I)Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/16 v0, 0xf

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 59
    :pswitch_0
    sget-object p0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;->USB:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;

    return-object p0

    .line 57
    :pswitch_1
    sget-object p0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;->ROM:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;

    return-object p0

    .line 55
    :pswitch_2
    sget-object p0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;->CD:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;

    return-object p0

    .line 53
    :pswitch_3
    sget-object p0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;->VCD:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;

    return-object p0

    .line 61
    :cond_0
    sget-object p0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;->UNKONW:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;

    return-object p0

    .line 50
    :cond_1
    :pswitch_4
    sget-object p0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;->DVD:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;

    return-object p0

    .line 47
    :cond_2
    sget-object p0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;->NODISC:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getFormatTime(I)Ljava/lang/String;
    .locals 7

    const-string v0, ":"

    const-string v1, "0"

    const/4 v2, 0x2

    const/16 v3, 0xe10

    const-string v4, ""

    if-lt p0, v3, :cond_2

    .line 214
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit16 v5, p0, 0xe10

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 215
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-int/lit16 v6, p0, 0xe10

    div-int/lit8 v6, v6, 0x3c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 216
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v2, :cond_0

    .line 217
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 218
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-int/lit8 p0, p0, 0x3c

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 219
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v2, :cond_1

    .line 220
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 222
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    if-lez p0, :cond_5

    .line 224
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-int/lit16 v5, p0, 0xe10

    div-int/lit8 v5, v5, 0x3c

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 225
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v2, :cond_3

    .line 226
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 227
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-int/lit8 p0, p0, 0x3c

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 228
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v2, :cond_4

    .line 229
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 230
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_5
    const-string p0, "00:00"

    :goto_0
    return-object p0
.end method

.method public static getMPEGDate([I)Ljava/lang/String;
    .locals 3

    .line 285
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 286
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 287
    aget v2, p0, v1

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 290
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMPEGVerCode([I)Ljava/lang/String;
    .locals 4

    .line 273
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 274
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 275
    aget v2, p0, v1

    const/16 v3, 0x20

    if-eq v2, v3, :cond_0

    .line 276
    aget v2, p0, v1

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 280
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMediaType(I)Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_ROM_MEDIA_TYPE;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 40
    sget-object p0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_ROM_MEDIA_TYPE;->UNKNOW:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_ROM_MEDIA_TYPE;

    return-object p0

    .line 38
    :cond_0
    sget-object p0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_ROM_MEDIA_TYPE;->PHOTO:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_ROM_MEDIA_TYPE;

    return-object p0

    .line 36
    :cond_1
    sget-object p0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_ROM_MEDIA_TYPE;->VIDEO:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_ROM_MEDIA_TYPE;

    return-object p0

    .line 33
    :cond_2
    sget-object p0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_ROM_MEDIA_TYPE;->AUDIO:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_ROM_MEDIA_TYPE;

    return-object p0
.end method

.method public static getMpegVersion([I[I)Ljava/lang/String;
    .locals 2

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MPEG-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/hzbhd/midwareproxy/mpeg/util/MpegUtil;->getMPEGVerCode([I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/mpeg/util/MpegUtil;->getMPEGDate([I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPlayStatus(I)Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;
    .locals 1

    if-eqz p0, :cond_6

    const/16 v0, 0x20

    if-eq p0, v0, :cond_5

    const/16 v0, 0x30

    if-eq p0, v0, :cond_4

    const/16 v0, 0x50

    if-eq p0, v0, :cond_3

    const/16 v0, 0xf1

    if-eq p0, v0, :cond_2

    const/16 v0, 0x40

    if-eq p0, v0, :cond_1

    const/16 v0, 0x41

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const/4 p0, 0x0

    return-object p0

    .line 100
    :pswitch_0
    sget-object p0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;->PLAY_STATUS_BACKWARD_20X:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

    return-object p0

    .line 98
    :pswitch_1
    sget-object p0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;->PLAY_STATUS_BACKWARD_8X:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

    return-object p0

    .line 96
    :pswitch_2
    sget-object p0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;->PLAY_STATUS_BACKWARD_4X:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

    return-object p0

    .line 94
    :pswitch_3
    sget-object p0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;->PLAY_STATUS_BACKWARD_2X:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

    return-object p0

    .line 92
    :pswitch_4
    sget-object p0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;->PLAY_STATUS_BACKWARD_OFF:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

    return-object p0

    .line 90
    :pswitch_5
    sget-object p0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;->PLAY_STATUS_FORWARD_20X:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

    return-object p0

    .line 88
    :pswitch_6
    sget-object p0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;->PLAY_STATUS_FORWARD_8X:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

    return-object p0

    .line 86
    :pswitch_7
    sget-object p0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;->PLAY_STATUS_FORWARD_4X:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

    return-object p0

    .line 84
    :pswitch_8
    sget-object p0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;->PLAY_STATUS_FORWARD_2X:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

    return-object p0

    .line 82
    :pswitch_9
    sget-object p0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;->PLAY_STATUS_FORWARD_OFF:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

    return-object p0

    .line 78
    :cond_0
    sget-object p0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;->PLAY_STATUS_STOP:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

    return-object p0

    .line 76
    :cond_1
    sget-object p0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;->PLAY_STATUS_PRE_STOP:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

    return-object p0

    .line 102
    :cond_2
    sget-object p0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;->PLAY_STATUS_DISC_ERROR:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

    return-object p0

    .line 80
    :cond_3
    sget-object p0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;->RESUME:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

    return-object p0

    .line 74
    :cond_4
    sget-object p0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;->PLAY_STATUS_PAUSE:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

    return-object p0

    .line 72
    :cond_5
    sget-object p0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;->PLAY_STATUS_PLAY:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

    return-object p0

    .line 70
    :cond_6
    sget-object p0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;->PLAY_STATUS_LOADING:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x60
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x70
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getRepeatStatus(I)Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_REPEAT_STATUS;
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return-object p0

    .line 125
    :pswitch_1
    sget-object p0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_REPEAT_STATUS;->PLAY_REPEAT_CHAPTER:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_REPEAT_STATUS;

    return-object p0

    .line 123
    :pswitch_2
    sget-object p0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_REPEAT_STATUS;->PLAY_REPEAT_TITLE:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_REPEAT_STATUS;

    return-object p0

    .line 121
    :pswitch_3
    sget-object p0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_REPEAT_STATUS;->PLAY_REPEAT_ALL:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_REPEAT_STATUS;

    return-object p0

    .line 118
    :pswitch_4
    sget-object p0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_REPEAT_STATUS;->PLAY_REPEAT_FOLDER:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_REPEAT_STATUS;

    return-object p0

    .line 115
    :pswitch_5
    sget-object p0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_REPEAT_STATUS;->PLAY_REPEAT_ONE:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_REPEAT_STATUS;

    return-object p0

    .line 112
    :pswitch_6
    sget-object p0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_REPEAT_STATUS;->PLAY_REPEAT_OFF:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_REPEAT_STATUS;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public static getShuffle(Z)Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_SHUFFLE_STATUS;
    .locals 0

    if-eqz p0, :cond_0

    .line 133
    sget-object p0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_SHUFFLE_STATUS;->SHUFFLE_ON:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_SHUFFLE_STATUS;

    return-object p0

    .line 135
    :cond_0
    sget-object p0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_SHUFFLE_STATUS;->SHUFFLE_OFF:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_SHUFFLE_STATUS;

    return-object p0
.end method

.method public static getUri(Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_ROM_MEDIA_TYPE;)Landroid/net/Uri;
    .locals 1

    .line 237
    sget-object v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_ROM_MEDIA_TYPE;->AUDIO:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_ROM_MEDIA_TYPE;

    if-ne p0, v0, :cond_0

    const-string p0, "content://Disc/audio"

    .line 238
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 239
    :cond_0
    sget-object v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_ROM_MEDIA_TYPE;->VIDEO:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_ROM_MEDIA_TYPE;

    if-ne p0, v0, :cond_1

    const-string p0, "content://Disc/video"

    .line 240
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 241
    :cond_1
    sget-object v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_ROM_MEDIA_TYPE;->PHOTO:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_ROM_MEDIA_TYPE;

    if-ne p0, v0, :cond_2

    const-string p0, "content://Disc/photo"

    .line 242
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, "content://Disc/media"

    .line 244
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getVideoMode(I)Lcom/hzbhd/midware/constant/MpegConstantsDef$VIDEO_MODE;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 23
    :cond_0
    sget-object p0, Lcom/hzbhd/midware/constant/MpegConstantsDef$VIDEO_MODE;->VIDEO_ON:Lcom/hzbhd/midware/constant/MpegConstantsDef$VIDEO_MODE;

    return-object p0

    .line 20
    :cond_1
    sget-object p0, Lcom/hzbhd/midware/constant/MpegConstantsDef$VIDEO_MODE;->VIDEO_OFF:Lcom/hzbhd/midware/constant/MpegConstantsDef$VIDEO_MODE;

    return-object p0
.end method
