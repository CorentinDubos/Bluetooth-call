.class public Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;
.super Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;
.source "IPodServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager$ServiceConnectionState;
    }
.end annotation


# static fields
.field public static final ACTION_IPOD_CONN_EVENT:Ljava/lang/String; = "com.hzbhd.action.ipod.IPodConnected"

.field public static final ACTION_IPOD_PLUG_EVENT:Ljava/lang/String; = "com.hzbhd.action.ipod.IPodPlugEvent"

.field public static final EXTRA_IPOD_PLUG_EVENT_BOOL:Ljava/lang/String; = "extra_ipod_plug_event"

.field public static final EXTRA_IPOD_PLUG_EVENT_TYPE:Ljava/lang/String; = "extra_ipod_plug_event_type"

.field public static final LINGO_ID_DIGITAL_AUDIO:B = 0xat

.field public static final LINGO_ID_DISPLAY_REMOTE:B = 0x3t

.field public static final LINGO_ID_EXTENDED_INTERFACE:B = 0x4t

.field public static final LINGO_ID_GENERAL:B = 0x0t

.field public static final PERMISSION_IPOD_PLUG_EVENT:Ljava/lang/String; = "hzbhd.permission.ipod.IPOD_PLUG_EVENT"

.field public static final PROTOCOL_MFI_IAP1:B = 0x1t

.field public static final PROTOCOL_MFI_IAP2:B = 0x2t

.field public static final PROTOCOL_MFI_UNKNOWN:B = 0x0t

.field private static final TAG:Ljava/lang/String; = "IPodServiceManager"

.field public static final USB_POSITION_1:I = 0x3

.field public static final USB_POSITION_2:I = 0x2

.field public static final USB_POSITION_3:I = 0x1

.field private static final VERSION:Ljava/lang/String; = "midwareProxy iPod V0.1.1_2013_11_01"

.field private static mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

.field private static mIPodServiceManager:Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;


# instance fields
.field private mServiceConnectionState:Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager$ServiceConnectionState;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 91
    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;-><init>()V

    const-string v0, "IPodServiceManager"

    const-string v1, "midwareProxy iPod V0.1.1_2013_11_01"

    .line 92
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->getServiceConnection()Z

    return-void
.end method

.method public static declared-synchronized instance(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;
    .locals 1

    const-class p0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;

    monitor-enter p0

    .line 77
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIPodServiceManager:Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;

    invoke-direct {v0}, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;-><init>()V

    sput-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIPodServiceManager:Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;

    .line 81
    :cond_0
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 82
    monitor-exit p0

    return-object v0

    .line 84
    :cond_1
    :try_start_1
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIPodServiceManager:Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static release()V
    .locals 1

    const/4 v0, 0x0

    .line 88
    sput-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIPodServiceManager:Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;

    return-void
.end method


# virtual methods
.method public accessoryHIDReport(BB)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 682
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    invoke-interface {v0, p1, p2}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->accessoryHIDReport(BB)V

    return-void
.end method

.method public addAuthenticationListener(Lcom/hzbhd/midwareproxy/iPod/aidl/AuthenticationListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 168
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->addAuthenticationListener(Lcom/hzbhd/midwareproxy/iPod/aidl/AuthenticationListener;)V

    return-void
.end method

.method public addAuthenticationStateListener(Lcom/hzbhd/midwareproxy/iPod/aidl/AuthenticationStateListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 190
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    const-string v1, "IPodServiceManager"

    if-nez v0, :cond_0

    const-string v0, "[addAuthenticationStateListener]mIIPodService is null!"

    .line 191
    invoke-static {v1, v0}, Lcom/hzbhd/midwareproxy/iPod/utils/Trace;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-nez p1, :cond_1

    const-string v0, "[addAuthenticationStateListener]listener is null"

    .line 195
    invoke-static {v1, v0}, Lcom/hzbhd/midwareproxy/iPod/utils/Trace;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v0, "[addAuthenticationStateListener]parameter is OK!"

    .line 198
    invoke-static {v1, v0}, Lcom/hzbhd/midwareproxy/iPod/utils/Trace;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->addAuthenticationStateListener(Lcom/hzbhd/midwareproxy/iPod/aidl/AuthenticationStateListener;)V

    return-void
.end method

.method public cancelCommand()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 587
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->cancelCommand()B

    move-result v0

    return v0
.end method

.method public enterExtendedInterfaceMode()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 114
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->enterExtendedInterfaceMode()B

    move-result v0

    return v0
.end method

.method public exitExtendedInterfaceMode()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 118
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->exitExtendedInterfaceMode()B

    move-result v0

    return v0
.end method

.method public getActivate(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 821
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    if-nez v0, :cond_0

    const-string p1, "IPodServiceManager"

    const-string v0, "[getActivate]mIIPodService is null!"

    .line 822
    invoke-static {p1, v0}, Lcom/hzbhd/midwareproxy/iPod/utils/Trace;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 v1, 0x1

    .line 825
    invoke-interface {v0, v1, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->ipod_get_activate(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getArtworkData(B[BII)Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 561
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->getArtworkData(B[BII)Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData;

    move-result-object p1

    return-object p1
.end method

.method public getArtworkFormats()Lcom/hzbhd/midwareproxy/iPod/ArtworkFormats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 552
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->getArtworkFormats()Lcom/hzbhd/midwareproxy/iPod/ArtworkFormats;

    move-result-object v0

    return-object v0
.end method

.method public getArtworkTimes(B[BIII)Lcom/hzbhd/midwareproxy/iPod/TimeOffsetArray;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 571
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 572
    invoke-interface/range {v0 .. v5}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->getArtworkTimes(B[BIII)Lcom/hzbhd/midwareproxy/iPod/TimeOffsetArray;

    move-result-object p1

    return-object p1
.end method

.method public getAudiobookSpeed()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 580
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->getAudiobookSpeed()B

    move-result v0

    return v0
.end method

.method public getAuthenticationState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 145
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->getAuthenticationState()I

    move-result v0

    return v0
.end method

.method public getCurrentPlayingTrackIndex()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 352
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->getCurrentPlayingTrackIndex()I

    move-result v0

    return v0
.end method

.method public getDBTrackInfo(IILcom/hzbhd/midwareproxy/iPod/TrackInformationMask;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 268
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    invoke-interface {v0, p1, p2, p3}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->getDBTrackInfo(IILcom/hzbhd/midwareproxy/iPod/TrackInformationMask;)V

    return-void
.end method

.method public getDBiTunesInfo(B)Lcom/hzbhd/midwareproxy/iPod/DBiTunesInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 260
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->getDBiTunesInfo(B)Lcom/hzbhd/midwareproxy/iPod/DBiTunesInfo;

    move-result-object p1

    return-object p1
.end method

.method public getIndexedPlayingTrackAlbumName(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 420
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->getIndexedPlayingTrackAlbumName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getIndexedPlayingTrackArtistName(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 398
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->getIndexedPlayingTrackArtistName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getIndexedPlayingTrackInfo(BII)Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 548
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    invoke-interface {v0, p1, p2, p3}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->getIndexedPlayingTrackInfo(BII)Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;

    move-result-object p1

    return-object p1
.end method

.method public getIndexedPlayingTrackTitle(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 375
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->getIndexedPlayingTrackTitle(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMFiProcotol()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 155
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->getMFiProtocol()B

    move-result v0

    return v0
.end method

.method public getNumPlayingTracks()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 524
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->getNumPlayingTracks()I

    move-result v0

    return v0
.end method

.method public getNumberCategorizedDBRecords(B)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 251
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->getNumberCategorizedDBRecords(B)I

    move-result p1

    return p1
.end method

.method public getPBTrackInfo(IILcom/hzbhd/midwareproxy/iPod/TrackInformationMask;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 272
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    invoke-interface {v0, p1, p2, p3}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->getPBTrackInfo(IILcom/hzbhd/midwareproxy/iPod/TrackInformationMask;)V

    return-void
.end method

.method public getPlayStatus(B)Lcom/hzbhd/midwareproxy/iPod/PlayStatus;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 321
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->getPlayStatus(B)Lcom/hzbhd/midwareproxy/iPod/PlayStatus;

    move-result-object p1

    return-object p1
.end method

.method public getPlugEventState()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 758
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->getPlugEventState()Z

    move-result v0

    return v0
.end method

.method public getPlugEventType()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 754
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->getPlugEventType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRepeat()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 492
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->getRepeat()B

    move-result v0

    return v0
.end method

.method public getServiceConnection()Z
    .locals 1

    .line 103
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->connectService()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 108
    sput-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    const/4 v0, 0x0

    return v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    const-string v0, "hzbhd.ipod"

    return-object v0
.end method

.method public getShuffle()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 459
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->getShuffle()B

    move-result v0

    return v0
.end method

.method public getSupportedEventNotification()Lcom/hzbhd/midwareproxy/iPod/EventNotification;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 591
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->getSupportedEventNotification()Lcom/hzbhd/midwareproxy/iPod/EventNotification;

    move-result-object v0

    return-object v0
.end method

.method public getTrackArtworkData(III)Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 556
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    invoke-interface {v0, p1, p2, p3}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->getTrackArtworkData(III)Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData;

    move-result-object p1

    return-object p1
.end method

.method public getTrackArtworkTimes(IIII)Lcom/hzbhd/midwareproxy/iPod/TimeOffsetArray;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 566
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->getTrackArtworkTimes(IIII)Lcom/hzbhd/midwareproxy/iPod/TimeOffsetArray;

    move-result-object p1

    return-object p1
.end method

.method public getUIDTrackInfo([BLcom/hzbhd/midwareproxy/iPod/TrackInformationMask;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 264
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    invoke-interface {v0, p1, p2}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->getUIDTrackInfo([BLcom/hzbhd/midwareproxy/iPod/TrackInformationMask;)V

    return-void
.end method

.method public getUsbPosition()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 697
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->getUsbPosition()I

    move-result v0

    return v0
.end method

.method public iPodAudioPause()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 620
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->iPodAudioPause()I

    move-result v0

    return v0
.end method

.method public iPodAudioPlay()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 616
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->iPodAudioPlay()I

    move-result v0

    return v0
.end method

.method public iPodAudioSampleRateChange(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 612
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->iPodAudioSampleRateChange(I)I

    move-result p1

    return p1
.end method

.method public iPodAudioSetVolume(FF)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 628
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    invoke-interface {v0, p1, p2}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->iPodAudioSetVolume(FF)I

    move-result p1

    return p1
.end method

.method public iPodAudioStop()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 624
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->iPodAudioStop()I

    move-result v0

    return v0
.end method

.method public initCarPlayFunc()V
    .locals 1

    .line 747
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->initCarPlayFunc()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 749
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public launchCarLife(B)V
    .locals 1

    .line 739
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->launchCarLife(B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 741
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public playControl(B)B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 439
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->playControl(B)B

    move-result p1

    return p1
.end method

.method public playCurrentSelection(I)B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 276
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->playCurrentSelection(I)B

    move-result p1

    return p1
.end method

.method public playMediaLibraryCollection(Ljava/lang/String;Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;JLjava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 645
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    invoke-virtual {p2}, Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;->value()B

    move-result v2

    move-object v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->playMediaLibraryCollection(Ljava/lang/String;BJLjava/lang/String;)V

    return-void
.end method

.method public playMediaLibraryCurrentSelection(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 635
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->playMediaLibraryCurrentSelection(Ljava/lang/String;)V

    return-void
.end method

.method public playMediaLibraryItems([Ljava/lang/String;JLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 640
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->playMediaLibraryItems([Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public playMediaLibrarySpecial(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 650
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    invoke-interface {v0, p1, p2}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->playMediaLibrarySpecial(Ljava/lang/String;Z)V

    return-void
.end method

.method public registerCarPlayiAP2Listener(Lcom/hzbhd/midwareproxy/iPod/aidl/ICarPlayiAP2Listener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 768
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    const-string v1, "IPodServiceManager"

    if-nez v0, :cond_0

    const-string p1, "[registerCarPlayiAP2Listener]mIIPodService is null!"

    .line 769
    invoke-static {v1, p1}, Lcom/hzbhd/midwareproxy/iPod/utils/Trace;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "[registerCarPlayiAP2Listener]listener is null"

    .line 774
    invoke-static {v1, p1}, Lcom/hzbhd/midwareproxy/iPod/utils/Trace;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "[registerCarPlayiAP2Listener]parameter is OK!"

    .line 778
    invoke-static {v1, v0}, Lcom/hzbhd/midwareproxy/iPod/utils/Trace;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->registerCarPlayiAP2Listener(Lcom/hzbhd/midwareproxy/iPod/aidl/ICarPlayiAP2Listener;)V

    return-void
.end method

.method public removeAuthenticationListener(Lcom/hzbhd/midwareproxy/iPod/aidl/AuthenticationListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 180
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->removeAuthencationListener(Lcom/hzbhd/midwareproxy/iPod/aidl/AuthenticationListener;)V

    return-void
.end method

.method public removeAuthenticationStateListener(Lcom/hzbhd/midwareproxy/iPod/aidl/AuthenticationStateListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 209
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->removeAuthenticationStateListener(Lcom/hzbhd/midwareproxy/iPod/aidl/AuthenticationStateListener;)V

    return-void
.end method

.method public removeCarPlayiAP2Listener(Lcom/hzbhd/midwareproxy/iPod/aidl/ICarPlayiAP2Listener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 789
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->removeCarPlayiAP2Listener(Lcom/hzbhd/midwareproxy/iPod/aidl/ICarPlayiAP2Listener;)V

    return-void
.end method

.method public resetDBSelection()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 243
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->resetDBSelection()B

    move-result v0

    return v0
.end method

.method public resetDBSelectionHierarchy(I)B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 280
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->resetDBSelectionHierarchy(I)B

    move-result p1

    return p1
.end method

.method public retrieveCategorizedDatabaseRecords(BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 255
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    invoke-interface {v0, p1, p2, p3}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->retrieveCategorizedDatabaseRecords(BII)V

    return-void
.end method

.method public selectDBRecord(BI)B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 247
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    invoke-interface {v0, p1, p2}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->selectDBRecord(BI)B

    move-result p1

    return p1
.end method

.method public serviceDied()V
    .locals 1

    .line 123
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->release()V

    .line 124
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mServiceConnectionState:Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager$ServiceConnectionState;

    if-eqz v0, :cond_0

    .line 125
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager$ServiceConnectionState;->serviceDead()V

    :cond_0
    return-void
.end method

.method public setActivate(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 807
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    const-string p1, "IPodServiceManager"

    const-string v0, "[setActivate]mIIPodService is null!"

    .line 808
    invoke-static {p1, v0}, Lcom/hzbhd/midwareproxy/iPod/utils/Trace;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    const/4 v2, 0x1

    .line 811
    invoke-interface {v0, v2, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->ipod_set_activate(ILjava/lang/String;)I

    move-result p1

    if-gez p1, :cond_1

    return v1

    .line 814
    :cond_1
    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object p1

    instance-of p1, p1, Lcom/hzbhd/midwareproxy/hardware/RK3399P_HardwarePlatform;

    if-eqz p1, :cond_2

    const-wide/32 v0, 0xc05000

    const-string p1, "phonelink.lic"

    .line 815
    invoke-static {p1, v0, v1}, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->bhd_pwrite(Ljava/lang/String;J)I

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public setAudiobookSpeed(BB)B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 576
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    invoke-interface {v0, p1, p2}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->setAudiobookSpeed(BB)B

    move-result p1

    return p1
.end method

.method public setCurrentPlayingTrack(I)B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 543
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->setCurrentPlayingTrack(I)B

    move-result p1

    return p1
.end method

.method public setDigitalAudioEventListener(Lcom/hzbhd/midwareproxy/iPod/aidl/DigitalAudioEventListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 217
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->setDigitalAudioEventListener(Lcom/hzbhd/midwareproxy/iPod/aidl/DigitalAudioEventListener;)V

    return-void
.end method

.method public setDisplayRemoteLingoRetListener(Lcom/hzbhd/midwareproxy/iPod/aidl/DisplayRemoteLingoRetListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 239
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->setDisplayRemoteLingoRetListener(Lcom/hzbhd/midwareproxy/iPod/aidl/DisplayRemoteLingoRetListener;)V

    return-void
.end method

.method public setEventNotification(Lcom/hzbhd/midwareproxy/iPod/EventNotification;)B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 605
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->setEventNotification(Lcom/hzbhd/midwareproxy/iPod/EventNotification;)B

    move-result p1

    return p1
.end method

.method public setExtendedInterfaceRetListener(Lcom/hzbhd/midwareproxy/iPod/aidl/ExtendedInterfaceRetListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 213
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->setExtendedInterfaceRetListener(Lcom/hzbhd/midwareproxy/iPod/aidl/ExtendedInterfaceRetListener;)V

    return-void
.end method

.method public setGeneralLingoRetListener(Lcom/hzbhd/midwareproxy/iPod/aidl/GeneralLingoRetListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 228
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->setGeneralLingoRetListener(Lcom/hzbhd/midwareproxy/iPod/aidl/GeneralLingoRetListener;)V

    return-void
.end method

.method public setNowPlayingInfoListener(Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 664
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->setNowPlayingInfoListener(Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;)V

    return-void
.end method

.method public setOtgMode(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 829
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    if-nez v0, :cond_0

    const-string p1, "IPodServiceManager"

    const-string v0, "[setOtgMode]mIIPodService is null!"

    .line 830
    invoke-static {p1, v0}, Lcom/hzbhd/midwareproxy/iPod/utils/Trace;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1

    .line 833
    :cond_0
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->jni_ipod_set_otg_mode(I)I

    move-result p1

    return p1
.end method

.method public setPlayStatusChangeNotification(Lcom/hzbhd/midwareproxy/iPod/FourBytesStatus;)B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 299
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->setPlayStatusChangeNotification(Lcom/hzbhd/midwareproxy/iPod/FourBytesStatus;)B

    move-result p1

    return p1
.end method

.method public setProperty(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 799
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    if-nez v0, :cond_0

    const-string p1, "IPodServiceManager"

    const-string p2, "[setProperty]mIIPodService is null!"

    .line 800
    invoke-static {p1, p2}, Lcom/hzbhd/midwareproxy/iPod/utils/Trace;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 803
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->setProperty(ILjava/lang/String;)V

    return-void
.end method

.method public setRemoteEventNotification(Lcom/hzbhd/midwareproxy/iPod/RemoteEventMask;)B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 330
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->setRemoteEventNotification(Lcom/hzbhd/midwareproxy/iPod/RemoteEventMask;)B

    move-result p1

    return p1
.end method

.method public setRepeat(BB)B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 512
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    invoke-interface {v0, p1, p2}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->setRepeat(BB)B

    move-result p1

    return p1
.end method

.method public setServiceConnectionStateListener(Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager$ServiceConnectionState;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mServiceConnectionState:Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager$ServiceConnectionState;

    return-void
.end method

.method public setShuffle(BB)B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 476
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    invoke-interface {v0, p1, p2}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->setShuffle(BB)B

    move-result p1

    return p1
.end method

.method public setUIMode(B)B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 601
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->setUIModeCommand(B)B

    move-result p1

    return p1
.end method

.method public startHID()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 678
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->startHID()V

    return-void
.end method

.method public startMediaLibraryInformation()V
    .locals 1

    .line 703
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->startMediaLibraryInformation()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 706
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public startMediaLibraryUpdates()V
    .locals 1

    .line 721
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->startMediaLibraryUpdates()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 724
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public startNowPlayingUpdates(Lcom/hzbhd/midwareproxy/iPod/iap2/MediaItemAttributesIDs;Lcom/hzbhd/midwareproxy/iPod/iap2/PlaybackAttributesIDs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 656
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    invoke-interface {v0, p1, p2}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->startNowPlayingUpdates(Lcom/hzbhd/midwareproxy/iPod/iap2/MediaItemAttributesIDs;Lcom/hzbhd/midwareproxy/iPod/iap2/PlaybackAttributesIDs;)V

    return-void
.end method

.method public startUSBDeviceModeAudio()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 669
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->startUSBDeviceModeAudio()V

    return-void
.end method

.method public stopHID()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 686
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->stopHID()V

    return-void
.end method

.method public stopMediaLibraryInformation()V
    .locals 1

    .line 712
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->stopMediaLibraryInformation()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 715
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public stopMediaLibraryUpdates()V
    .locals 1

    .line 730
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->stopMediaLibraryUpdates()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 733
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public stopNowPlayingUpdates()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 660
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->stopNowPlayingUpdates()V

    return-void
.end method

.method public stopUSBDeviceModeAudio()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 673
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/IPodServiceManager;->mIIPodService:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->stopUSBDeviceModeAudio()V

    return-void
.end method
