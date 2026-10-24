.class public Lcom/hzbhd/mediaScanner/ScannerManager;
.super Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;
.source "ScannerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/mediaScanner/ScannerManager$IMediaScannerCallBackInterfaceImpl;
    }
.end annotation


# static fields
.field private static final MSG_FILE_SAVE_UPDATE_IMAGE:I = 0x4

.field private static final MSG_FILE_SAVE_UPDATE_MUSIC:I = 0x2

.field private static final MSG_FILE_SAVE_UPDATE_VIDEO:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ScannerManager"

.field private static mScannerManager:Lcom/hzbhd/mediaScanner/ScannerManager;

.field private static mService:Lcom/hzbhd/midwareproxy/binder/service/IMediaScannerInterface;


# instance fields
.field private getServiceObj:Landroid/os/IBinder;

.field private mFilesStateChangedCallBacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hzbhd/mediaScanner/MediaScannerInterface$FilesStateChanged;",
            ">;"
        }
    .end annotation
.end field

.field mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/hzbhd/mediaScanner/ScannerManager;->getServiceObj:Landroid/os/IBinder;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/mediaScanner/ScannerManager;->mFilesStateChangedCallBacks:Ljava/util/List;

    .line 90
    new-instance v0, Lcom/hzbhd/mediaScanner/ScannerManager$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/hzbhd/mediaScanner/ScannerManager$1;-><init>(Lcom/hzbhd/mediaScanner/ScannerManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/hzbhd/mediaScanner/ScannerManager;->mHandler:Landroid/os/Handler;

    .line 38
    invoke-virtual {p0}, Lcom/hzbhd/mediaScanner/ScannerManager;->getServiceConnection()Z

    return-void
.end method

.method static synthetic access$000(Lcom/hzbhd/mediaScanner/ScannerManager;)Ljava/util/List;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/hzbhd/mediaScanner/ScannerManager;->mFilesStateChangedCallBacks:Ljava/util/List;

    return-object p0
.end method

.method public static declared-synchronized getScannerManager()Lcom/hzbhd/mediaScanner/ScannerManager;
    .locals 2

    const-class v0, Lcom/hzbhd/mediaScanner/ScannerManager;

    monitor-enter v0

    .line 42
    :try_start_0
    sget-object v1, Lcom/hzbhd/mediaScanner/ScannerManager;->mScannerManager:Lcom/hzbhd/mediaScanner/ScannerManager;

    if-nez v1, :cond_0

    .line 43
    new-instance v1, Lcom/hzbhd/mediaScanner/ScannerManager;

    invoke-direct {v1}, Lcom/hzbhd/mediaScanner/ScannerManager;-><init>()V

    sput-object v1, Lcom/hzbhd/mediaScanner/ScannerManager;->mScannerManager:Lcom/hzbhd/mediaScanner/ScannerManager;

    .line 46
    :cond_0
    sget-object v1, Lcom/hzbhd/mediaScanner/ScannerManager;->mScannerManager:Lcom/hzbhd/mediaScanner/ScannerManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getScanningState(Ljava/lang/String;)Lcom/hzbhd/mediaScanner/MediaScannerInterface$SCANNING_STATE;
    .locals 2

    .line 163
    :try_start_0
    invoke-static {}, Lcom/hzbhd/mediaScanner/MediaScannerInterface$SCANNING_STATE;->values()[Lcom/hzbhd/mediaScanner/MediaScannerInterface$SCANNING_STATE;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/mediaScanner/ScannerManager;->mService:Lcom/hzbhd/midwareproxy/binder/service/IMediaScannerInterface;

    invoke-interface {v1, p1}, Lcom/hzbhd/midwareproxy/binder/service/IMediaScannerInterface;->getScanningState(Ljava/lang/String;)I

    move-result p1

    aget-object p1, v0, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 166
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 167
    sget-object p1, Lcom/hzbhd/mediaScanner/MediaScannerInterface$SCANNING_STATE;->NOT_START:Lcom/hzbhd/mediaScanner/MediaScannerInterface$SCANNING_STATE;

    return-object p1
.end method

.method public getServiceConnection()Z
    .locals 2

    const-string v0, "ScannerManager"

    const-string v1, "ScannerManager getServiceConnection start"

    .line 51
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/hzbhd/mediaScanner/ScannerManager;->connectService()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Lcom/hzbhd/mediaScanner/ScannerManager;->getServiceObj:Landroid/os/IBinder;

    if-eqz v1, :cond_1

    const-string v1, "getServiceConnection success"

    .line 54
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v1, p0, Lcom/hzbhd/mediaScanner/ScannerManager;->getServiceObj:Landroid/os/IBinder;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/binder/service/IMediaScannerInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/binder/service/IMediaScannerInterface;

    move-result-object v1

    sput-object v1, Lcom/hzbhd/mediaScanner/ScannerManager;->mService:Lcom/hzbhd/midwareproxy/binder/service/IMediaScannerInterface;

    if-eqz v1, :cond_0

    :try_start_0
    const-string/jumbo v1, "scanner registerCallBack success"

    .line 58
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    sget-object v0, Lcom/hzbhd/mediaScanner/ScannerManager;->mService:Lcom/hzbhd/midwareproxy/binder/service/IMediaScannerInterface;

    new-instance v1, Lcom/hzbhd/mediaScanner/ScannerManager$IMediaScannerCallBackInterfaceImpl;

    invoke-direct {v1, p0}, Lcom/hzbhd/mediaScanner/ScannerManager$IMediaScannerCallBackInterfaceImpl;-><init>(Lcom/hzbhd/mediaScanner/ScannerManager;)V

    invoke-interface {v0, v1}, Lcom/hzbhd/midwareproxy/binder/service/IMediaScannerInterface;->registerCallBack(Lcom/hzbhd/midwareproxy/binder/callback/IMediaScannerCallBackInterface;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    .line 67
    sput-object v0, Lcom/hzbhd/mediaScanner/ScannerManager;->mService:Lcom/hzbhd/midwareproxy/binder/service/IMediaScannerInterface;

    const/4 v0, 0x0

    return v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    const-string v0, "hzbhd.mediascanner"

    return-object v0
.end method

.method public isCheckDevice(Landroid/content/Context;)Z
    .locals 5

    const-string/jumbo v0, "storage"

    .line 172
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/StorageManager;

    .line 173
    invoke-virtual {p1}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object p1

    .line 174
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 175
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "checking"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public registerCallBack(Lcom/hzbhd/mediaScanner/MediaScannerInterface$FilesStateChanged;)Z
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/hzbhd/mediaScanner/ScannerManager;->mFilesStateChangedCallBacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/mediaScanner/ScannerManager;->mFilesStateChangedCallBacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v1
.end method

.method public serviceDied()V
    .locals 2

    const/4 v0, 0x0

    .line 85
    sput-object v0, Lcom/hzbhd/mediaScanner/ScannerManager;->mService:Lcom/hzbhd/midwareproxy/binder/service/IMediaScannerInterface;

    const-string v0, "ScannerManager"

    const-string/jumbo v1, "scanner died..."

    .line 86
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-super {p0}, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;->serviceDied()V

    return-void
.end method

.method public serviceReConnected()V
    .locals 0

    .line 79
    invoke-super {p0}, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;->serviceReConnected()V

    return-void
.end method

.method public startScanFile(Ljava/lang/String;)Z
    .locals 1

    .line 184
    :try_start_0
    sget-object v0, Lcom/hzbhd/mediaScanner/ScannerManager;->mService:Lcom/hzbhd/midwareproxy/binder/service/IMediaScannerInterface;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IMediaScannerInterface;->startSanFile(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 186
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public unRegisterCallBack(Lcom/hzbhd/mediaScanner/MediaScannerInterface$FilesStateChanged;)Z
    .locals 1

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/mediaScanner/ScannerManager;->mFilesStateChangedCallBacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 133
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method
