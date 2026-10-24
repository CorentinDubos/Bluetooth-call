.class public Lcom/autochips/media/AtcMediaPlayer;
.super Ljava/lang/Object;
.source "AtcMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autochips/media/AtcMediaPlayer$DivxDrmInfo;,
        Lcom/autochips/media/AtcMediaPlayer$OnSetRateCompleteListener;
    }
.end annotation


# static fields
.field public static final AUDIO_BITRATE_UNSUPPORT:I = 0x100

.field public static final AUDIO_CODEC_UNSUPPORT:I = 0x400

.field public static final AUDIO_PROFILE_LEVEL_UNSUPPORT:I = 0x800

.field public static final AUDIO_SAMPLERATE_UNSUPPORT:I = 0x200

.field public static final FILE_FF_UNSUPPORT:I = 0x2

.field public static final FILE_RW_UNSUPPORT:I = 0x4

.field public static final FILE_SEEK_UNSUPPORT:I = 0x1

.field private static final INVOKE_ID_DIVXHT31_START:I = 0x9

.field private static final INVOKE_ID_DIVX_DRM_GET_INFO:I = 0x8

.field private static final INVOKE_ID_DIVX_MENU_DO_ACTION:I = 0x7

.field private static final KEY_PARAMETER_DIVX_SERVICE_RESET:I = 0x578

.field private static final KEY_PARAMETER_GET_CURRENT_AUDIO_TRACK:I = 0x7d3

.field private static final KEY_PARAMETER_GET_CURRENT_SUBTITLE_TRACK:I = 0x7d4

.field private static final KEY_PARAMETER_GET_LOADING_STATUS:I = 0x834

.field private static final KEY_PARAMETER_MAXRATE_SUPPORTED:I = 0x640

.field private static final KEY_PARAMETER_MEDIA_CAPABILITY:I = 0x5dc

.field private static final KEY_PARAMETER_PLAYBACK_RATE_PERMILLE:I = 0x514

.field private static final KEY_PARAMETER_PLAYBACK_RATE_PERMILLE_ASYNC:I = 0x708

.field private static final KEY_PARAMETER_SET_DYNAMIC_FILE_INFO:I = 0x7d5

.field private static final KEY_PARAMETER_SET_VIDEO_VISIABLE:I = 0x76c

.field public static final MEDIA_DEST_FRONT:I = 0x1

.field public static final MEDIA_DEST_FRONT_REAR:I = 0x3

.field public static final MEDIA_DEST_REAR:I = 0x2

.field public static final MEDIA_ERROR_CARD_EJECT:I = 0x133

.field public static final MEDIA_ERROR_DATA:I = 0x131

.field public static final MEDIA_ERROR_DIVXDRM_NEVER_REGISTERED:I = -0x9c7

.field public static final MEDIA_ERROR_DIVXDRM_NOT_AUTHORIZED:I = -0x9c5

.field public static final MEDIA_ERROR_DIVXDRM_NOT_REGISTERED:I = -0x9c6

.field public static final MEDIA_ERROR_DIVXDRM_RENTAL_EXPIRED:I = -0x9c8

.field public static final MEDIA_ERROR_INVALID_PARAMETER:I = 0x12c

.field public static final MEDIA_ERROR_OUTOFMEMOTY:I = 0x12d

.field public static final MEDIA_ERROR_READ_FILE_FAILED:I = 0x12e

.field public static final MEDIA_ERROR_UNSUPPORTED_DRM:I = 0x130

.field public static final MEDIA_ERROR_UNSUPPORTED_FILE:I = 0x12f

.field public static final MEDIA_INFO_CBM_FORBID:I = 0x7d5

.field public static final MEDIA_INFO_CBM_PAUSE:I = 0x7d3

.field public static final MEDIA_INFO_CBM_RESUME:I = 0x7d4

.field public static final MEDIA_INFO_CBM_START:I = 0x7d2

.field public static final MEDIA_INFO_CBM_STOP:I = 0x7d1

.field public static final MEDIA_INFO_DIVX:I = 0x3eb

.field public static final MEDIA_INFO_DIVXDRM:I = 0x3ec

.field public static final MEDIA_INFO_DIVXDRM_ERROR:I = 0x3ed

.field public static final MEDIA_INFO_UNSUPPORTED_AUDIO:I = 0x3e9

.field public static final MEDIA_INFO_UNSUPPORTED_MENU:I = 0x3ea

.field public static final MEDIA_INFO_UNSUPPORTED_VIDEO:I = 0x3e8

.field public static final MEDIA_PLAYBACK_FF_16X:I = 0x10

.field public static final MEDIA_PLAYBACK_FF_2X:I = 0x2

.field public static final MEDIA_PLAYBACK_FF_32X:I = 0x20

.field public static final MEDIA_PLAYBACK_FF_4X:I = 0x4

.field public static final MEDIA_PLAYBACK_FF_8X:I = 0x8

.field public static final MEDIA_PLAYBACK_NORMAL:I = 0x1

.field public static final MEDIA_PLAYBACK_RW_16X:I = -0x10

.field public static final MEDIA_PLAYBACK_RW_2X:I = -0x2

.field public static final MEDIA_PLAYBACK_RW_32X:I = -0x20

.field public static final MEDIA_PLAYBACK_RW_4X:I = -0x4

.field public static final MEDIA_PLAYBACK_RW_8X:I = -0x8

.field public static final MEDIA_PLAYER_IDLE:I = 0x1

.field public static final MEDIA_PLAYER_INITIALIZED:I = 0x2

.field public static final MEDIA_PLAYER_PAUSED:I = 0x20

.field public static final MEDIA_PLAYER_PLAYBACK_COMPLETE:I = 0x80

.field public static final MEDIA_PLAYER_PREPARED:I = 0x8

.field public static final MEDIA_PLAYER_PREPARING:I = 0x4

.field public static final MEDIA_PLAYER_STARTED:I = 0x10

.field public static final MEDIA_PLAYER_STATE_ERROR:I = 0x0

.field public static final MEDIA_PLAYER_STOPPED:I = 0x40

.field private static final TAG:Ljava/lang/String; = "AtcMediaPlayer.java"

.field public static final VIDEO_BITRATE_UNSUPPORT:I = 0x10

.field public static final VIDEO_CODEC_UNSUPPORT:I = 0x40

.field public static final VIDEO_FRAMERATE_UNSUPPORT:I = 0x20

.field public static final VIDEO_PROFILE_LEVEL_UNSUPPORT:I = 0x80

.field public static final VIDEO_RESOLUTION_UNSUPPORT:I = 0x8


# instance fields
.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mOnSetRateCompleteListener:Lcom/autochips/media/AtcMediaPlayer$OnSetRateCompleteListener;


# direct methods
.method public constructor <init>(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 386
    iput-object v0, p0, Lcom/autochips/media/AtcMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 393
    iput-object p1, p0, Lcom/autochips/media/AtcMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-void
.end method

.method static synthetic access$000(Lcom/autochips/media/AtcMediaPlayer;)Lcom/autochips/media/AtcMediaPlayer$OnSetRateCompleteListener;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/autochips/media/AtcMediaPlayer;->mOnSetRateCompleteListener:Lcom/autochips/media/AtcMediaPlayer$OnSetRateCompleteListener;

    return-object p0
.end method

.method private checkRateValid(I)Z
    .locals 2

    const/16 v0, -0x20

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    const/16 v0, -0x10

    if-eq p1, v0, :cond_0

    const/4 v0, -0x8

    if-eq p1, v0, :cond_0

    const/4 v0, -0x4

    if-eq p1, v0, :cond_0

    const/4 v0, -0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    const/16 v0, 0x20

    if-eq p1, v0, :cond_0

    if-eq p1, v1, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return v1
.end method

.method public static isSupportDivxHT31()Z
    .locals 3

    const-string/jumbo v0, "ro.atc.supportdivxht31"

    const-string v1, "0"

    .line 974
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 975
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDivxSupportProperty : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AtcMediaPlayer.java"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "1"

    .line 979
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method


# virtual methods
.method public SetVideoVisibile(Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 754
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetVideoVisibile fgVisible:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AtcMediaPlayer.java"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    iget-object v0, p0, Lcom/autochips/media/AtcMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    const-string p1, "getCurrentAudioTrack player invalid"

    .line 756
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 v1, 0x76c

    .line 766
    invoke-virtual {v0, v1, p1}, Landroid/media/MediaPlayer;->setParameter(II)Z

    move-result p1

    return p1
.end method

.method public appResume()V
    .locals 1

    .line 1022
    iget-object v0, p0, Lcom/autochips/media/AtcMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 1023
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->appResume()V

    :cond_0
    return-void
.end method

.method public clearDivxService()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "AtcMediaPlayer.java"

    const-string v1, "clearDivxService: enter"

    .line 846
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    iget-object v1, p0, Lcom/autochips/media/AtcMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    const-string v1, "clearDivxService player invalid"

    .line 848
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/16 v2, 0x578

    const/4 v3, 0x0

    .line 853
    :try_start_0
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setParameter(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "clearDivxService setParameter error"

    .line 855
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public closeAudioOutput(I)Z
    .locals 2

    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "closeAudioOutput entry destination:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AtcMediaPlayer.java"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget-object v0, p0, Lcom/autochips/media/AtcMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    const-string p1, "openAudioOutput invalid player"

    .line 506
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 510
    :cond_0
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->closeAudioOutput(I)Z

    move-result p1

    return p1
.end method

.method public config(Z)V
    .locals 1

    .line 1014
    iget-object v0, p0, Lcom/autochips/media/AtcMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 1015
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->config(Z)V

    :cond_0
    return-void
.end method

.method public getCurrentAudioTrack()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "AtcMediaPlayer.java"

    const-string v1, "getCurrentAudioTrack enter"

    .line 690
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    iget-object v1, p0, Lcom/autochips/media/AtcMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, -0x1

    if-nez v1, :cond_0

    const-string v1, "getCurrentAudioTrack invalid player"

    .line 692
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/4 v3, 0x0

    const/16 v4, 0x7d3

    .line 698
    :try_start_0
    invoke-virtual {v1, v4}, Landroid/media/MediaPlayer;->getParcelParameter(I)Landroid/os/Parcel;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 700
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v3, :cond_2

    .line 704
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 708
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentAudioTrack current audio:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :catchall_0
    move-exception v0

    if-eqz v3, :cond_3

    .line 704
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    :cond_3
    throw v0
.end method

.method public getCurrentSubtitleTrack()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "AtcMediaPlayer.java"

    const-string v1, "getCurrentSubtitleTrack enter"

    .line 720
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    iget-object v1, p0, Lcom/autochips/media/AtcMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, -0x1

    if-nez v1, :cond_0

    const-string v1, "getCurrentSubtitleTrack invalid player"

    .line 722
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/4 v3, 0x0

    const/16 v4, 0x7d4

    .line 728
    :try_start_0
    invoke-virtual {v1, v4}, Landroid/media/MediaPlayer;->getParcelParameter(I)Landroid/os/Parcel;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 730
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v3, :cond_2

    .line 734
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 738
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentSubtitleTrack current subtitle:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :catchall_0
    move-exception v0

    if-eqz v3, :cond_3

    .line 734
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    :cond_3
    throw v0
.end method

.method public getDivxDrmInfo()Lcom/autochips/media/AtcMediaPlayer$DivxDrmInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "AtcMediaPlayer.java"

    const-string v1, "getDivxDrmInfo"

    .line 880
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    iget-object v1, p0, Lcom/autochips/media/AtcMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    const-string v1, "getDivxDrmInfo invalid player"

    .line 882
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    .line 885
    :cond_0
    new-instance v0, Lcom/autochips/media/AtcMediaPlayer$DivxDrmInfo;

    invoke-direct {v0, p0}, Lcom/autochips/media/AtcMediaPlayer$DivxDrmInfo;-><init>(Lcom/autochips/media/AtcMediaPlayer;)V

    .line 886
    iget-object v1, p0, Lcom/autochips/media/AtcMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->newRequest()Landroid/os/Parcel;

    move-result-object v1

    .line 887
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    const/16 v3, 0x8

    .line 888
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 890
    :try_start_0
    iget-object v3, p0, Lcom/autochips/media/AtcMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, v1, v2}, Landroid/media/MediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V

    .line 891
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Lcom/autochips/media/AtcMediaPlayer$DivxDrmInfo;->maxplayCount:I

    .line 892
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Lcom/autochips/media/AtcMediaPlayer$DivxDrmInfo;->remainPlayCount:I

    .line 893
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Lcom/autochips/media/AtcMediaPlayer$DivxDrmInfo;->cgmsa:I

    .line 894
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Lcom/autochips/media/AtcMediaPlayer$DivxDrmInfo;->acptb:I

    .line 895
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Lcom/autochips/media/AtcMediaPlayer$DivxDrmInfo;->digitalProtection:I

    .line 896
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Lcom/autochips/media/AtcMediaPlayer$DivxDrmInfo;->lict:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 898
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 899
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-object v0

    :catchall_0
    move-exception v0

    .line 898
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 899
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getFFMaxRate()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "AtcMediaPlayer.java"

    const-string v1, "getFFMaxRate: enter"

    .line 617
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    iget-object v1, p0, Lcom/autochips/media/AtcMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    const-string v1, "getFFMaxRate invalid player"

    .line 619
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x640

    .line 625
    :try_start_0
    invoke-virtual {v1, v4}, Landroid/media/MediaPlayer;->getParcelParameter(I)Landroid/os/Parcel;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 627
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v3, :cond_2

    .line 631
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 635
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFFMaxRate: maxRate: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :catchall_0
    move-exception v0

    if-eqz v3, :cond_3

    .line 631
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    :cond_3
    throw v0
.end method

.method public getLoadingPercentage()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "AtcMediaPlayer.java"

    const-string v1, "getLoadingPercentage enter"

    .line 912
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    iget-object v1, p0, Lcom/autochips/media/AtcMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    const-string v1, "getLoadingPercentage invalid player"

    .line 914
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x834

    .line 920
    :try_start_0
    invoke-virtual {v1, v4}, Landroid/media/MediaPlayer;->getParcelParameter(I)Landroid/os/Parcel;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 922
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v2, :cond_2

    .line 926
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 930
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLoadingPercentage percent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_3

    .line 926
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    :cond_3
    throw v0
.end method

.method public getLoadingRemainTime()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "AtcMediaPlayer.java"

    const-string v1, "getLoadingRemainTime enter"

    .line 943
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    iget-object v1, p0, Lcom/autochips/media/AtcMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    const-string v1, "getLoadingRemainTime invalid player"

    .line 945
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x834

    .line 951
    :try_start_0
    invoke-virtual {v1, v4}, Landroid/media/MediaPlayer;->getParcelParameter(I)Landroid/os/Parcel;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 953
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    .line 954
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v2, :cond_2

    .line 958
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 962
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLoadingRemainTime remainTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_3

    .line 958
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    :cond_3
    throw v0
.end method

.method public getMediaCapability()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "AtcMediaPlayer.java"

    const-string v1, "getMediaCapability: enter"

    .line 790
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    iget-object v1, p0, Lcom/autochips/media/AtcMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    const-string v1, "getMediaCapability player invalid"

    .line 792
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    .line 795
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const v2, 0x3fffffff    # 1.9999999f

    .line 798
    :try_start_0
    iget-object v3, p0, Lcom/autochips/media/AtcMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/16 v4, 0x5dc

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->getParcelParameter(I)Landroid/os/Parcel;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 800
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v1, :cond_2

    .line 804
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 808
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMediaCapability: capability"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    .line 804
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    :cond_3
    throw v0
.end method

.method public getRWMaxRate()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "AtcMediaPlayer.java"

    const-string v1, "getFFMaxRate: enter"

    .line 658
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    iget-object v1, p0, Lcom/autochips/media/AtcMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    const-string v1, "getRWMaxRate invalid player "

    .line 661
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v2, 0x0

    const/16 v3, 0x640

    .line 667
    :try_start_0
    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer;->getParcelParameter(I)Landroid/os/Parcel;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 669
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    .line 670
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    if-eqz v2, :cond_2

    .line 674
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 678
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFFMaxRate: maxRate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_3

    .line 674
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    :cond_3
    throw v0
.end method

.method public getRealCurrentState()I
    .locals 3

    .line 1040
    iget-object v0, p0, Lcom/autochips/media/AtcMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 1041
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getRealCurrentState()I

    move-result v0

    .line 1042
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRealCurrentState state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AtcMediaPlayer.java"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public openAudioOutput(I)Z
    .locals 2

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openAudioOutput entry destination:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AtcMediaPlayer.java"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    iget-object v0, p0, Lcom/autochips/media/AtcMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    const-string p1, "openAudioOutput invalid player"

    .line 486
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 490
    :cond_0
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->openAudioOutput(I)Z

    move-result p1

    return p1
.end method

.method public selectMenu(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 821
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "selectMenu x:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "y:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AtcMediaPlayer.java"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    iget-object v0, p0, Lcom/autochips/media/AtcMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    const-string/jumbo p1, "selectMenu player invalid"

    .line 823
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 826
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->newRequest()Landroid/os/Parcel;

    move-result-object v0

    .line 827
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x7

    .line 828
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 829
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 830
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 832
    :try_start_0
    iget-object p1, p0, Lcom/autochips/media/AtcMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, v0, v1}, Landroid/media/MediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 834
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 835
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 834
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 835
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public setDynamicInfo(JJ)Z
    .locals 1

    .line 1050
    iget-object v0, p0, Lcom/autochips/media/AtcMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 1051
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1052
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1053
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 1054
    iget-object p1, p0, Lcom/autochips/media/AtcMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/16 p2, 0x7d5

    invoke-virtual {p1, p2, v0}, Landroid/media/MediaPlayer;->setParameter(ILandroid/os/Parcel;)Z

    move-result p1

    .line 1055
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setMediaPlayer(Landroid/media/MediaPlayer;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 407
    :cond_0
    iput-object p1, p0, Lcom/autochips/media/AtcMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 p1, 0x1

    return p1
.end method

.method public setOnSetRateCompleteListener(Lcom/autochips/media/AtcMediaPlayer$OnSetRateCompleteListener;)V
    .locals 1

    .line 434
    iput-object p1, p0, Lcom/autochips/media/AtcMediaPlayer;->mOnSetRateCompleteListener:Lcom/autochips/media/AtcMediaPlayer$OnSetRateCompleteListener;

    .line 436
    iget-object p1, p0, Lcom/autochips/media/AtcMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v0, Lcom/autochips/media/AtcMediaPlayer$1;

    invoke-direct {v0, p0}, Lcom/autochips/media/AtcMediaPlayer$1;-><init>(Lcom/autochips/media/AtcMediaPlayer;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnSetRateCompleteListener(Landroid/media/MediaPlayer$OnSetRateCompleteListener;)V

    return-void
.end method

.method public setPlaybackRate(I)Z
    .locals 3

    .line 553
    iget-object v0, p0, Lcom/autochips/media/AtcMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const-string v1, "AtcMediaPlayer.java"

    if-nez v0, :cond_0

    const-string/jumbo p1, "setPlaybackRate invalid player"

    .line 554
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 557
    :cond_0
    invoke-direct {p0, p1}, Lcom/autochips/media/AtcMediaPlayer;->checkRateValid(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPlaybackRate invalid rate:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPlaybackRate rate:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    iget-object v0, p0, Lcom/autochips/media/AtcMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/16 v1, 0x514

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaPlayer;->setParameter(II)Z

    move-result p1

    return p1
.end method

.method public setPlaybackRateAsync(I)Z
    .locals 3

    .line 586
    iget-object v0, p0, Lcom/autochips/media/AtcMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const-string v1, "AtcMediaPlayer.java"

    if-nez v0, :cond_0

    const-string/jumbo p1, "setPlaybackRateAsync invalid player"

    .line 587
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 590
    :cond_0
    invoke-direct {p0, p1}, Lcom/autochips/media/AtcMediaPlayer;->checkRateValid(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPlaybackRate invalid rate:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPlaybackRateAsync rate:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    iget-object v0, p0, Lcom/autochips/media/AtcMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/16 v1, 0x708

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaPlayer;->setParameter(II)Z

    move-result p1

    return p1
.end method

.method public setRearDisplay(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRearDisplay SurfaceHolder:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " entry"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AtcMediaPlayer.java"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget-object v0, p0, Lcom/autochips/media/AtcMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    const-string/jumbo p1, "setRearDisplay invalid player"

    .line 467
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 471
    :cond_0
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setRearDisplay(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public showDivxHT31Video()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "AtcMediaPlayer.java"

    const-string/jumbo v1, "showDivxHT31Video enter"

    .line 994
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    iget-object v1, p0, Lcom/autochips/media/AtcMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    const-string/jumbo v1, "showDivxHT31Video invalid player"

    .line 996
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 999
    :cond_0
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->newRequest()Landroid/os/Parcel;

    move-result-object v0

    .line 1000
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/16 v2, 0x9

    .line 1001
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1003
    :try_start_0
    iget-object v2, p0, Lcom/autochips/media/AtcMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v0, v1}, Landroid/media/MediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1005
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1006
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 1005
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1006
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method
