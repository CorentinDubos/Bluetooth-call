.class synthetic Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$2;
.super Ljava/lang/Object;
.source "MpegplayerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$hzbhd$midware$constant$MpegConstantsDef$DISC_ROM_MEDIA_TYPE:[I

.field static final synthetic $SwitchMap$com$hzbhd$midwareproxy$mpeg$MpegplayerManager$MPEG_CALLBACK_MSG:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 200
    invoke-static {}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;->values()[Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$2;->$SwitchMap$com$hzbhd$midwareproxy$mpeg$MpegplayerManager$MPEG_CALLBACK_MSG:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;->discEjected:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$2;->$SwitchMap$com$hzbhd$midwareproxy$mpeg$MpegplayerManager$MPEG_CALLBACK_MSG:[I

    sget-object v3, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;->discQueryStart:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;

    invoke-virtual {v3}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$2;->$SwitchMap$com$hzbhd$midwareproxy$mpeg$MpegplayerManager$MPEG_CALLBACK_MSG:[I

    sget-object v4, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;->discQueryEnd:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;

    invoke-virtual {v4}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v3, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$2;->$SwitchMap$com$hzbhd$midwareproxy$mpeg$MpegplayerManager$MPEG_CALLBACK_MSG:[I

    sget-object v4, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;->playDVDRootMenuUpdate:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;

    invoke-virtual {v4}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;->ordinal()I

    move-result v4

    const/4 v5, 0x4

    aput v5, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v3, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$2;->$SwitchMap$com$hzbhd$midwareproxy$mpeg$MpegplayerManager$MPEG_CALLBACK_MSG:[I

    sget-object v4, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;->playStatusUpdate:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;

    invoke-virtual {v4}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;->ordinal()I

    move-result v4

    const/4 v5, 0x5

    aput v5, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v3, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$2;->$SwitchMap$com$hzbhd$midwareproxy$mpeg$MpegplayerManager$MPEG_CALLBACK_MSG:[I

    sget-object v4, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;->playTimeUpdate:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;

    invoke-virtual {v4}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;->ordinal()I

    move-result v4

    const/4 v5, 0x6

    aput v5, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v3, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$2;->$SwitchMap$com$hzbhd$midwareproxy$mpeg$MpegplayerManager$MPEG_CALLBACK_MSG:[I

    sget-object v4, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;->playCDTrackUpdate:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;

    invoke-virtual {v4}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;->ordinal()I

    move-result v4

    const/4 v5, 0x7

    aput v5, v3, v4
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v3, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$2;->$SwitchMap$com$hzbhd$midwareproxy$mpeg$MpegplayerManager$MPEG_CALLBACK_MSG:[I

    sget-object v4, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;->playDVDTitleChapterUpdate:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;

    invoke-virtual {v4}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;->ordinal()I

    move-result v4

    const/16 v5, 0x8

    aput v5, v3, v4
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v3, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$2;->$SwitchMap$com$hzbhd$midwareproxy$mpeg$MpegplayerManager$MPEG_CALLBACK_MSG:[I

    sget-object v4, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;->playROMFileUpdate:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;

    invoke-virtual {v4}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;->ordinal()I

    move-result v4

    const/16 v5, 0x9

    aput v5, v3, v4
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    .line 132
    :catch_8
    invoke-static {}, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_ROM_MEDIA_TYPE;->values()[Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_ROM_MEDIA_TYPE;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$2;->$SwitchMap$com$hzbhd$midware$constant$MpegConstantsDef$DISC_ROM_MEDIA_TYPE:[I

    :try_start_9
    sget-object v4, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_ROM_MEDIA_TYPE;->AUDIO:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_ROM_MEDIA_TYPE;

    invoke-virtual {v4}, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_ROM_MEDIA_TYPE;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v1, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$2;->$SwitchMap$com$hzbhd$midware$constant$MpegConstantsDef$DISC_ROM_MEDIA_TYPE:[I

    sget-object v3, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_ROM_MEDIA_TYPE;->PHOTO:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_ROM_MEDIA_TYPE;

    invoke-virtual {v3}, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_ROM_MEDIA_TYPE;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$2;->$SwitchMap$com$hzbhd$midware$constant$MpegConstantsDef$DISC_ROM_MEDIA_TYPE:[I

    sget-object v1, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_ROM_MEDIA_TYPE;->VIDEO:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_ROM_MEDIA_TYPE;

    invoke-virtual {v1}, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_ROM_MEDIA_TYPE;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    return-void
.end method
