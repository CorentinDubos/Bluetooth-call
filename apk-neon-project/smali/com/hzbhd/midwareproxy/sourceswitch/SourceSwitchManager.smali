.class public Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;
.super Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;
.source "SourceSwitchManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SourceSwitchManager"

.field private static mSourceSwitchManager:Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

.field private static mSourceSwitchService:Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;-><init>()V

    .line 52
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getServiceConnection()Z

    return-void
.end method

.method public static declared-synchronized getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;
    .locals 3

    const-class v0, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    monitor-enter v0

    .line 39
    :try_start_0
    sget-object v1, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->mSourceSwitchManager:Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    if-nez v1, :cond_0

    const-string v1, "SourceSwitchManager"

    const-string v2, "mSourceSwitchManager == null,go to new SourceSwitchManager()!"

    .line 40
    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    new-instance v1, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    invoke-direct {v1}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;-><init>()V

    sput-object v1, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->mSourceSwitchManager:Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    .line 43
    :cond_0
    sget-object v1, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->mSourceSwitchService:Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager;

    if-nez v1, :cond_1

    const-string v1, "SourceSwitchManager"

    const-string v2, "mSourceSwitchService == null,return null!"

    .line 44
    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->logError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    .line 45
    monitor-exit v0

    return-object v1

    .line 47
    :cond_1
    :try_start_1
    sget-object v1, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->mSourceSwitchManager:Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public audioChannelRelease(Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;Landroid/os/Bundle;)Z
    .locals 1

    .line 99
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->mSourceSwitchService:Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager;

    invoke-virtual {p1}, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->ordinal()I

    move-result p1

    invoke-virtual {p2}, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->ordinal()I

    move-result p2

    invoke-interface {v0, p1, p2, p3}, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager;->audioChannelRelease(IILandroid/os/Bundle;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "SourceSwitchManager"

    const-string p3, "audioChannelRelease: RemoteException"

    .line 101
    invoke-static {p2, p3, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public audioChannelRequest(Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;Landroid/os/Bundle;)Z
    .locals 1

    .line 83
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->mSourceSwitchService:Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager;

    invoke-virtual {p1}, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->ordinal()I

    move-result p1

    invoke-virtual {p2}, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->ordinal()I

    move-result p2

    invoke-interface {v0, p1, p2, p3}, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager;->audioChannelRequest(IILandroid/os/Bundle;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "SourceSwitchManager"

    const-string p3, "audioChannelRequest: RemoteException"

    .line 85
    invoke-static {p2, p3, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public detectParkPanoramic(ZI)V
    .locals 1

    .line 118
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->mSourceSwitchService:Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager;

    invoke-interface {v0, p1, p2}, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager;->detectParkPanoramic(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "SourceSwitchManager"

    const-string/jumbo v0, "videoChannelRequest: RemoteException"

    .line 120
    invoke-static {p2, v0, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public getCurrentFrontSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;
    .locals 3

    .line 181
    sget-object v0, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->NULL:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    .line 183
    :try_start_0
    sget-object v1, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->mSourceSwitchService:Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager;

    invoke-virtual {p1}, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->ordinal()I

    move-result p1

    invoke-interface {v1, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager;->getCurrentFrontSource(I)I

    move-result p1

    .line 184
    invoke-static {}, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->values()[Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v1

    aget-object v0, v1, p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "SourceSwitchManager"

    const-string v2, "getCurrentFrontSource: RemoteException"

    .line 186
    invoke-static {v1, v2, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method public getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;
    .locals 3

    .line 170
    sget-object v0, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->NULL:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    .line 172
    :try_start_0
    sget-object v1, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->mSourceSwitchService:Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager;

    invoke-virtual {p1}, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->ordinal()I

    move-result p1

    invoke-interface {v1, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager;->getCurrentValidSource(I)I

    move-result p1

    .line 173
    invoke-static {}, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->values()[Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v1

    aget-object v0, v1, p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "SourceSwitchManager"

    const-string v2, "getCurrentValidSource: RemoteException"

    .line 175
    invoke-static {v1, v2, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method public getServiceConnection()Z
    .locals 2

    .line 62
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->connectService()Landroid/os/IBinder;

    move-result-object v0

    const-string v1, "SourceSwitchManager"

    if-eqz v0, :cond_0

    .line 64
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->mSourceSwitchService:Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager;

    const-string v0, "in SourceSwitchManager,mSourceSwitchService be connected1:"

    .line 65
    invoke-static {v1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 68
    sput-object v0, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->mSourceSwitchService:Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager;

    const-string v0, "in SourceSwitchManager,mSourceSwitchService not be connected:"

    .line 69
    invoke-static {v1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    const-string v0, "hzbhd.sourceswitch"

    return-object v0
.end method

.method public openRightVisualCamera(Z)V
    .locals 1

    .line 193
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->mSourceSwitchService:Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager;->openRightVisualCamera(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 195
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public pauseorresumeothercvbs(Z)Z
    .locals 2

    .line 202
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->mSourceSwitchService:Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager;->pauseorresumeothercvbs(Z)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string v0, "SourceSwitchManager"

    const-string v1, "pauseorresumeothercvbs"

    .line 204
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public releaseVideoChannel(I)Z
    .locals 2

    .line 147
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->mSourceSwitchService:Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager;->releaseVideoChannel(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "SourceSwitchManager"

    const-string v1, "releaseVideoChannel: RemoteException"

    .line 149
    invoke-static {v0, v1, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public requestVideoChannel(I)Z
    .locals 2

    .line 137
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->mSourceSwitchService:Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager;->requestVideoChannel(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "SourceSwitchManager"

    const-string/jumbo v1, "requestVideoChannel: RemoteException"

    .line 139
    invoke-static {v0, v1, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public switchToNextSource()V
    .locals 3

    .line 156
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->mSourceSwitchService:Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager;->switchToNextSource()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SourceSwitchManager"

    const-string v2, "releaseVideoChannel: RemoteException"

    .line 158
    invoke-static {v1, v2, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public videoChannelRelease(Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;Landroid/os/Bundle;)Z
    .locals 1

    .line 127
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->mSourceSwitchService:Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager;

    invoke-virtual {p1}, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->ordinal()I

    move-result p1

    invoke-virtual {p2}, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->ordinal()I

    move-result p2

    invoke-interface {v0, p1, p2, p3}, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager;->videoChannelRelease(IILandroid/os/Bundle;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "SourceSwitchManager"

    const-string/jumbo p3, "videoChannelRelease: RemoteException"

    .line 129
    invoke-static {p2, p3, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public videoChannelRequest(Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;Landroid/os/Bundle;)Z
    .locals 1

    .line 109
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->mSourceSwitchService:Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager;

    invoke-virtual {p1}, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->ordinal()I

    move-result p1

    invoke-virtual {p2}, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->ordinal()I

    move-result p2

    invoke-interface {v0, p1, p2, p3}, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager;->videoChannelRequest(IILandroid/os/Bundle;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "SourceSwitchManager"

    const-string/jumbo p3, "videoChannelRequest: RemoteException"

    .line 111
    invoke-static {p2, p3, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method
