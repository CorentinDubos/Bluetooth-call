.class public Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;
.super Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;
.source "MpegplayerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MpegplayerCallBackImpl;,
        Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$ROMFileUpdateStruct;,
        Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$DVDTitleChapterUpdateStruct;,
        Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$PlayStatusUpdateStruct;,
        Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MpegplayerManager"

.field private static mContext:Landroid/content/Context;

.field private static mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

.field private static mMultiPlayer:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;


# instance fields
.field private getServiceObj:Landroid/os/IBinder;

.field private mEventHandler:Landroid/os/Handler;

.field private mPlayInfoListener:Lcom/hzbhd/midware/constant/MpegConstantsDef$OnDISCPlayingInfoUpdateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 52
    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->getServiceObj:Landroid/os/IBinder;

    .line 192
    new-instance v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$1;-><init>(Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mEventHandler:Landroid/os/Handler;

    .line 53
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->getServiceConnection()Z

    return-void
.end method

.method static synthetic access$000(Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;)Lcom/hzbhd/midware/constant/MpegConstantsDef$OnDISCPlayingInfoUpdateListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mPlayInfoListener:Lcom/hzbhd/midware/constant/MpegConstantsDef$OnDISCPlayingInfoUpdateListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->discQueryStart(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->discQueryEnd()V

    return-void
.end method

.method private discQueryEnd()V
    .locals 2

    const-string v0, "MpegplayerManager"

    const-string v1, "mpepPlayManager discQueryEnd."

    .line 324
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mEventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 326
    sget-object v1, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;->discQueryEnd:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;

    .line 327
    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 328
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private discQueryStart(I)V
    .locals 3

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mpepPlayManager discScaned:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MpegplayerManager"

    invoke-static {v1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mEventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 316
    sget-object v1, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;->discQueryStart:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;

    .line 317
    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    .line 316
    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 318
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public static declared-synchronized getMpegplayerManager(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;
    .locals 2

    const-class v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;

    monitor-enter v0

    .line 41
    :try_start_0
    sget-object v1, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMultiPlayer:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;

    if-nez v1, :cond_0

    .line 42
    new-instance v1, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;

    invoke-direct {v1}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;-><init>()V

    sput-object v1, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMultiPlayer:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;

    .line 43
    sput-object p0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mContext:Landroid/content/Context;

    .line 48
    :cond_0
    sget-object p0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMultiPlayer:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private romMediaEnum2Type(Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_ROM_MEDIA_TYPE;)I
    .locals 3

    .line 132
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$2;->$SwitchMap$com$hzbhd$midware$constant$MpegConstantsDef$DISC_ROM_MEDIA_TYPE:[I

    invoke-virtual {p1}, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_ROM_MEDIA_TYPE;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_2

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :cond_2
    :goto_1
    return v0
.end method


# virtual methods
.method public backward()Z
    .locals 1

    .line 676
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->backward()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 679
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public discEjected(I)V
    .locals 3

    .line 305
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mEventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 306
    sget-object v1, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;->discEjected:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;

    .line 307
    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    .line 306
    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 308
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public discGoto(Lcom/hzbhd/midware/constant/MpegConstantsDef$K_SELECT;I)V
    .locals 1

    .line 751
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-virtual {p1}, Lcom/hzbhd/midware/constant/MpegConstantsDef$K_SELECT;->ordinal()I

    move-result p1

    invoke-interface {v0, p1, p2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->discGoto(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 753
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public display()Z
    .locals 1

    .line 815
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->display()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 817
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public duration()J
    .locals 2

    .line 715
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->duration()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 717
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public forward()Z
    .locals 1

    .line 686
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->forward()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 689
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public getCDTrackName(I)Ljava/lang/String;
    .locals 1

    .line 1273
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getCDTrackName(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1275
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getCDTracksCount()I
    .locals 1

    .line 1246
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getCDTracksCount()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1248
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public getCurrAudioLang()I
    .locals 1

    .line 1110
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getCurrAudioLang()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1112
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public getCurrAudioLangText()Ljava/lang/String;
    .locals 1

    .line 1101
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getCurrAudioLangText()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1103
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrSubtitle()I
    .locals 1

    .line 1092
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getCurrSubtitle()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1094
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public getCurrSubtitleText()Ljava/lang/String;
    .locals 1

    .line 1083
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getCurrSubtitleText()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1085
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentTotalNo()I
    .locals 1

    .line 1413
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getCurrentTotalNo()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1415
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public getDVDChaptersCount()I
    .locals 1

    .line 1264
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getDVDChaptersCount()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1266
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public getDVDCurrChapNumber()I
    .locals 1

    .line 993
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getDVDCurrChapNumber()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 995
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public getDVDCurrTitlesCount()I
    .locals 1

    .line 1236
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getDVDTitlesCount()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1238
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public getDVDTitlesCount()I
    .locals 1

    .line 1255
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getDVDTitlesCount()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1257
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public getDiscType()Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;
    .locals 2

    .line 603
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getDiscType()I

    move-result v0

    .line 604
    invoke-static {}, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;->values()[Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;

    move-result-object v1

    aget-object v0, v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 606
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 607
    sget-object v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;->UNKONW:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;

    return-object v0
.end method

.method public getDivxDeactivCode()Ljava/lang/String;
    .locals 1

    .line 966
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getDivxDeactivCode()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 968
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    return-object v0
.end method

.method public getDivxRegTime()I
    .locals 1

    .line 922
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getDivxRegTime()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 924
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public getDivxRegionCode()Ljava/lang/String;
    .locals 1

    .line 940
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getDivxRegionCode()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 942
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    return-object v0
.end method

.method public getId3Info()V
    .locals 1

    .line 1405
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getId3Info()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1407
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getLastPlayingFile(I)Ljava/lang/String;
    .locals 1

    .line 1119
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getLastPlayingFile(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1121
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getList(Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_ROM_MEDIA_TYPE;I)Landroid/database/Cursor;
    .locals 6

    .line 257
    invoke-static {p1}, Lcom/hzbhd/midwareproxy/mpeg/util/MpegUtil;->getUri(Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_ROM_MEDIA_TYPE;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v4, v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v4, v2

    .line 261
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "(_id=? and _id <>2000) or parentid=?"

    const-string v5, "isfile,_id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 264
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 266
    :cond_0
    :try_start_0
    sget-object v1, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-virtual {p1}, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_ROM_MEDIA_TYPE;->ordinal()I

    move-result p1

    invoke-interface {v1, p1, p2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getList(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 269
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getMpegCurrAlbumName()Ljava/lang/String;
    .locals 1

    .line 1020
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getMpegCurrAlbumName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1022
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMpegCurrArtistName()Ljava/lang/String;
    .locals 1

    .line 1029
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getMpegCurrArtistName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1031
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMpegCurrPlayingIndex()I
    .locals 1

    .line 1038
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getMpegCurrPlayingIndex()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1040
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public getMpegCurrPlayingName()Ljava/lang/String;
    .locals 1

    .line 1011
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getMpegCurrPlayingName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1013
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMpegCurrentPlayingType()I
    .locals 1

    .line 1047
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getMpegCurrentPlayingType()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1049
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public getMpegPlayingTimeCurr()I
    .locals 1

    .line 1137
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getMpegPlayingTimeCurr()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1139
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public getMpegPlayingTimeTotal()I
    .locals 1

    .line 1128
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getMpegPlayingTimeTotal()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1130
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public getMpegRootMenuState()I
    .locals 1

    .line 984
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getMpegRootMenuState()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 986
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public getMpegStatus()Z
    .locals 2

    const/4 v0, 0x0

    .line 1364
    :try_start_0
    sget-object v1, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    if-eqz v1, :cond_0

    .line 1365
    sget-object v1, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v1}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getMpegStatus()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return v0

    :catch_0
    move-exception v1

    .line 1370
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public getMpegTestNumber()I
    .locals 1

    .line 1432
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getMpegTestNumber()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1434
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public getMpegVersion()Ljava/lang/String;
    .locals 1

    .line 1056
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getMpegVersion()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1058
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNameReqStatus()Z
    .locals 1

    .line 1304
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getNameReqStatus()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1306
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public getParentId(I)I
    .locals 7

    const/4 v0, 0x0

    .line 289
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/mpeg/util/MpegUtil;->getUri(Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_ROM_MEDIA_TYPE;)Landroid/net/Uri;

    move-result-object v2

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, v5, v0

    .line 293
    sget-object p1, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string p1, "parentid"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "_id=?"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 295
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 296
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 297
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 298
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return v0
.end method

.method public getPlayInfo()Z
    .locals 1

    .line 1377
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getPlayInfo()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1379
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .line 975
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getRepeatMode()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 977
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public getRomFileName(Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_ROM_MEDIA_TYPE;II)Ljava/lang/String;
    .locals 1

    .line 1325
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    .line 1326
    invoke-direct {p0, p1}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->romMediaEnum2Type(Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_ROM_MEDIA_TYPE;)I

    move-result p1

    .line 1325
    invoke-interface {v0, p1, p2, p3}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getRomFileName(III)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1328
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getRomFilesCount(Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_ROM_MEDIA_TYPE;I)I
    .locals 2

    .line 1292
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    sget-object v1, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_ROM_MEDIA_TYPE;->AUDIO:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_ROM_MEDIA_TYPE;

    .line 1294
    invoke-virtual {p1, v1}, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_ROM_MEDIA_TYPE;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    .line 1293
    invoke-interface {v0, p1, p2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getRomFilesCount(II)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 1297
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public getRomFolderName(Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_ROM_MEDIA_TYPE;I)Ljava/lang/String;
    .locals 1

    .line 1314
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    .line 1315
    invoke-direct {p0, p1}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->romMediaEnum2Type(Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_ROM_MEDIA_TYPE;)I

    move-result p1

    .line 1314
    invoke-interface {v0, p1, p2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getRomFolderName(II)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1317
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getRomFoldersCount(Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_ROM_MEDIA_TYPE;)I
    .locals 1

    .line 1282
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    .line 1283
    invoke-direct {p0, p1}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->romMediaEnum2Type(Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_ROM_MEDIA_TYPE;)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getRomFoldersCount(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 1285
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public getSearchList(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    .line 278
    sget-object v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_ROM_MEDIA_TYPE;->AUDIO:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_ROM_MEDIA_TYPE;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/mpeg/util/MpegUtil;->getUri(Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_ROM_MEDIA_TYPE;)Landroid/net/Uri;

    move-result-object v2

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isfile = 2 and filename like \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "%\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 281
    sget-object p1, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const-string v6, "isfile,_id"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public getServiceConnection()Z
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->connectService()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->getServiceObj:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 67
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 70
    sput-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    const/4 v0, 0x0

    return v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    const-string v0, "hzbhd.mpegplayer"

    return-object v0
.end method

.method public getShuffleMode()I
    .locals 1

    .line 896
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getShuffleMode()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 898
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public gotoChapter(II)V
    .locals 1

    .line 733
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0, p1, p2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->gotoChapter(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 735
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public gotoTrack(I)V
    .locals 1

    .line 742
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->gotoTrack(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 744
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public isDiscExist()Z
    .locals 1

    .line 586
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->isDiscExist()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 588
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public isDiscQueryEnd()Z
    .locals 1

    .line 613
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->isDiscQueryEnd()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 615
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public isDivxActive()Z
    .locals 1

    .line 949
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->isDivxActive()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 951
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public isFirstStart()Z
    .locals 1

    .line 1464
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->isFirstStart()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1466
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 631
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->isPlaying()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 633
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public next()V
    .locals 1

    .line 667
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->next()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 669
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public passMpegTouchEvent(ZII)I
    .locals 1

    .line 1002
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->passMpegTouchEvent(ZII)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 1004
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public pause()V
    .locals 1

    .line 649
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 651
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public photoMove(Lcom/hzbhd/midware/constant/MpegConstantsDef$MOVE_DIRECTION;)Z
    .locals 1

    .line 886
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    .line 887
    invoke-static {p1}, Lcom/hzbhd/midwareproxy/mpeg/util/MpegUtil;->getDirection(Lcom/hzbhd/midware/constant/MpegConstantsDef$MOVE_DIRECTION;)I

    move-result p1

    .line 886
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->photoMove(I)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 889
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public photoRotateLeft()Z
    .locals 1

    .line 833
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->photoRotateLeft()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 835
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public photoRotateRight()Z
    .locals 1

    .line 824
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->photoRotateRight()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 826
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public photoZoomIn()Z
    .locals 1

    .line 851
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->photoZoomIn()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 853
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public photoZoomOut()Z
    .locals 1

    .line 842
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->photoZoomOut()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 844
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public play()V
    .locals 1

    .line 622
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->play()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 624
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public playCDTrackUpdate(II)V
    .locals 2

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playCDTrackUpdate totalTrack:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " currTrack:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MpegplayerManager"

    invoke-static {v1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mEventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 374
    sget-object v1, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;->playCDTrackUpdate:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;

    .line 375
    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;->ordinal()I

    move-result v1

    .line 374
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 377
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public playDVDRootMenuUpdate(Z)V
    .locals 3

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playDVDRootMenuUpdate isPlayRootMenu:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MpegplayerManager"

    invoke-static {v1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mEventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 336
    sget-object v1, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;->playDVDRootMenuUpdate:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;

    .line 337
    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;->ordinal()I

    move-result v1

    .line 338
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v2, 0x0

    .line 336
    invoke-virtual {v0, v1, v2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 339
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public playDVDTitleChapterUpdate(IIII)V
    .locals 7

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playDVDTitleChapterUpdate totalTitle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " totalChapter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " currTitle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " currChapter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MpegplayerManager"

    invoke-static {v1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mEventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 387
    new-instance v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$DVDTitleChapterUpdateStruct;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$DVDTitleChapterUpdateStruct;-><init>(Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;IIII)V

    .line 389
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mEventHandler:Landroid/os/Handler;

    sget-object p2, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;->playDVDTitleChapterUpdate:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;

    .line 390
    invoke-virtual {p2}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;->ordinal()I

    move-result p2

    const/4 p3, 0x0

    .line 389
    invoke-virtual {p1, p2, p3, p3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 392
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public playMpegFast()I
    .locals 1

    .line 1200
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->playMpegFast()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1202
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public playMpegSlow()I
    .locals 1

    .line 1209
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->playMpegSlow()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1211
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public playROMFileUpdate(III)V
    .locals 2

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playROMFileUpdate folderIndex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " fileIndex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " fileType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MpegplayerManager"

    invoke-static {v1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mEventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 400
    new-instance v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$ROMFileUpdateStruct;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$ROMFileUpdateStruct;-><init>(Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;III)V

    .line 402
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mEventHandler:Landroid/os/Handler;

    sget-object p2, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;->playROMFileUpdate:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;

    .line 403
    invoke-virtual {p2}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;->ordinal()I

    move-result p2

    const/4 p3, 0x0

    .line 402
    invoke-virtual {p1, p2, p3, p3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 405
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public playRootMenu()Z
    .locals 1

    .line 860
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->playRootMenu()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 862
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public playStatusUpdate(III)V
    .locals 2

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playStatusUpdate. playStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,repeatStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,shuffleStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MpegplayerManager"

    invoke-static {v1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mEventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 350
    new-instance v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$PlayStatusUpdateStruct;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$PlayStatusUpdateStruct;-><init>(Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;III)V

    .line 352
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mEventHandler:Landroid/os/Handler;

    sget-object p2, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;->playStatusUpdate:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;

    .line 353
    invoke-virtual {p2}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;->ordinal()I

    move-result p2

    const/4 p3, 0x0

    .line 352
    invoke-virtual {p1, p2, p3, p3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 355
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public playTimeUpdate(II)V
    .locals 2

    .line 362
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mEventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 363
    sget-object v1, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;->playTimeUpdate:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;

    .line 364
    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;->ordinal()I

    move-result v1

    .line 363
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 366
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public position()J
    .locals 2

    .line 706
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->position()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 708
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public prev()V
    .locals 1

    .line 658
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->prev()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 660
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public registerBackCameraChangeCallBack(Lcom/hzbhd/midwareproxy/binder/callback/IDiscBackCameraChangeInterface;)Z
    .locals 1

    .line 1473
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->registerBackCameraChangeCallBack(Lcom/hzbhd/midwareproxy/binder/callback/IDiscBackCameraChangeInterface;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 1475
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public registerCallBack()Z
    .locals 3

    const/4 v0, 0x0

    .line 98
    :try_start_0
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mPlayInfoListener:Lcom/hzbhd/midware/constant/MpegConstantsDef$OnDISCPlayingInfoUpdateListener;

    if-nez v1, :cond_0

    return v0

    .line 99
    :cond_0
    sget-object v1, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    new-instance v2, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MpegplayerCallBackImpl;

    invoke-direct {v2, p0}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MpegplayerCallBackImpl;-><init>(Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;)V

    invoke-interface {v1, v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->registerCallBack(Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 103
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public registerRealCallBack()Z
    .locals 2

    .line 110
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    new-instance v1, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MpegplayerCallBackImpl;

    invoke-direct {v1, p0}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MpegplayerCallBackImpl;-><init>(Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;)V

    invoke-interface {v0, v1}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->registerRealCallBack(Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 112
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public releaseSource()V
    .locals 1

    .line 595
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->releaseSource()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 597
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public repeat()Z
    .locals 1

    .line 769
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->repeat()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 771
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public repeat(I)Z
    .locals 0

    .line 905
    :try_start_0
    sget-object p1, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {p1}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->repeat()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 907
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public reqDivxDeactiveCode()V
    .locals 1

    .line 958
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->reqDivxDeactiveCode()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 960
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public reqDivxRegTime()V
    .locals 1

    .line 914
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->reqDivxRegTime()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 916
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public reqDivxRegionCode()V
    .locals 1

    .line 932
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->reqDivxRegionCode()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 934
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public reqMpegUpgrade()V
    .locals 1

    .line 877
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->reqMpegUpgrade()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 879
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public resetMpegSystem_32()V
    .locals 1

    .line 1456
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->resetMpegSystem_32()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1458
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public rptControllBarStatus(Z)V
    .locals 1

    .line 869
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->rptControllBarStatus(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 871
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public scan()Z
    .locals 1

    .line 696
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->scan()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 699
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public seek(I)Z
    .locals 1

    .line 724
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->seek(I)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 726
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public selectType(Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_ROM_MEDIA_TYPE;)V
    .locals 1

    .line 760
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-virtual {p1}, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_ROM_MEDIA_TYPE;->ordinal()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->selectType(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 762
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public serviceDied()V
    .locals 0

    .line 77
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->getServiceConnection()Z

    .line 78
    invoke-super {p0}, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;->serviceDied()V

    return-void
.end method

.method public serviceReConnected()V
    .locals 1

    .line 85
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getDeviceStatus()V

    .line 86
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->registerCallBack()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 89
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setAngle()V
    .locals 1

    .line 1173
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->setAngle()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1175
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setAudio()V
    .locals 1

    .line 1182
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->setAudio()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1184
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setCDTrackToPlay(I)V
    .locals 1

    .line 1335
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->setCDTrackToPlay(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1337
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public setDVDAudioLang()I
    .locals 1

    .line 1074
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->setDVDAudioLang()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1076
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public setDVDFileToPlay(II)V
    .locals 1

    .line 1355
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0, p1, p2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->setDVDFileToPlay(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1357
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public setDVDSubtitle()I
    .locals 1

    .line 1065
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->setDVDSubtitle()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1067
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public setMpegDirection(I)I
    .locals 1

    .line 1155
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->setMpegDirection(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 1157
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public setMpegMode(I)V
    .locals 1

    .line 1423
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->setMpegMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1425
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setMpegNotifyLanguage(B)V
    .locals 1

    .line 1441
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->setMpegNotifyLanguage(B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1443
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setMpegPowerDown()I
    .locals 1

    .line 1218
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->setMpegPowerDown()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1220
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public setMpegPowerUp()I
    .locals 1

    .line 1227
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->setMpegPowerUp()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1229
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public setMpegZoom()I
    .locals 1

    .line 1146
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->setMpegZoom()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1148
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public setOnPlayingInfoUpdateListener(Lcom/hzbhd/midware/constant/MpegConstantsDef$OnDISCPlayingInfoUpdateListener;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 580
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mPlayInfoListener:Lcom/hzbhd/midware/constant/MpegConstantsDef$OnDISCPlayingInfoUpdateListener;

    :cond_0
    return-void
.end method

.method public setPBC()Z
    .locals 1

    .line 806
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->setPBC()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 808
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public setPassWord([B)Z
    .locals 6

    const/4 v0, 0x0

    .line 1396
    :try_start_0
    sget-object v1, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    aget-byte v2, p1, v0

    const/4 v3, 0x1

    aget-byte v3, p1, v3

    const/4 v4, 0x2

    aget-byte v4, p1, v4

    const/4 v5, 0x3

    aget-byte p1, p1, v5

    invoke-interface {v1, v2, v3, v4, p1}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->setPassWord(BBBB)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 1398
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public setReadDisc(Z)V
    .locals 1

    .line 1449
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->setReadDisc(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1451
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setRepeatAB()V
    .locals 1

    .line 1191
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->setRepeatAB()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1193
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setRomFileToPlay(Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_ROM_MEDIA_TYPE;II)V
    .locals 1

    .line 1345
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-direct {p0, p1}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->romMediaEnum2Type(Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_ROM_MEDIA_TYPE;)I

    move-result p1

    invoke-interface {v0, p1, p2, p3}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->setRomFileToPlay(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1348
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public setRootMenu()I
    .locals 1

    .line 1164
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->setRootMenu()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1166
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public shuffle()Z
    .locals 1

    .line 779
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->shuffle()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 781
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public stop()V
    .locals 1

    .line 640
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 642
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public subTitle()Z
    .locals 1

    .line 788
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->subTitle()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 790
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public title()Z
    .locals 1

    .line 797
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->title()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 799
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public tsPosition(Lcom/hzbhd/midware/constant/MpegConstantsDef$TSTYPE;II)Z
    .locals 2

    .line 1386
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    sget-object v1, Lcom/hzbhd/midware/constant/MpegConstantsDef$TSTYPE;->UP:Lcom/hzbhd/midware/constant/MpegConstantsDef$TSTYPE;

    invoke-virtual {p1, v1}, Lcom/hzbhd/midware/constant/MpegConstantsDef$TSTYPE;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    invoke-interface {v0, p1, p2, p3}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->tsPosition(III)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 1389
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public unRegisterCallBack()Z
    .locals 1

    .line 119
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->unregisterCallBack()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 123
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public unregisterBackCameraChangeCallBack()Z
    .locals 1

    .line 1481
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->mMpegPlayerService:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->unregisterBackCameraChangeCallBack()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1483
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method
