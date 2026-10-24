.class public Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;
.super Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;
.source "BluetoothServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothServiceManager"

.field private static mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

.field private static mBluetoothManager:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;


# instance fields
.field private mA2DPCallBackListenrs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;",
            ">;"
        }
    .end annotation
.end field

.field private mA2dpCallback:Lnfore/android/bt/servicemanager/UiA2dpCallback;

.field private mEventHandler:Landroid/os/Handler;

.field private mHfpCallBackListenrs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHfpCallbackListener;",
            ">;"
        }
    .end annotation
.end field

.field private mHfpCallback:Lnfore/android/bt/servicemanager/UiHfpCallback;

.field private mHidCallBackListenrs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHidCallbackListener;",
            ">;"
        }
    .end annotation
.end field

.field private mHidCallback:Lnfore/android/bt/servicemanager/UiHidCallback;

.field private mHspCallBackListenrs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHspCallbackListener;",
            ">;"
        }
    .end annotation
.end field

.field private mHspCallback:Lnfore/android/bt/servicemanager/UiHspCallback;

.field private mPanCallBackListenrs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hzbhd/midwareproxy/bluetooth/BluetoothPanCallbackListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPanCallback:Lnfore/android/bt/servicemanager/UiPanCallback;

.field private mPbapCallBackListenrs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hzbhd/midwareproxy/bluetooth/BluetoothPbapCallbackListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPbapCallback:Lnfore/android/bt/servicemanager/UiPbapCallback;

.field private mServiceBackListenrs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceCallbackListener;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceCallback:Lnfore/android/bt/servicemanager/UiServiceCallback;

.field private mSppCallBackListenrs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hzbhd/midwareproxy/bluetooth/BluetoothSppCallbackListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSppCallback:Lnfore/android/bt/servicemanager/UiSppCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 157
    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;-><init>()V

    .line 343
    new-instance v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;-><init>(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mEventHandler:Landroid/os/Handler;

    .line 1127
    new-instance v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$2;

    invoke-direct {v0, p0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$2;-><init>(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mHfpCallback:Lnfore/android/bt/servicemanager/UiHfpCallback;

    .line 1366
    new-instance v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$3;

    invoke-direct {v0, p0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$3;-><init>(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mHspCallback:Lnfore/android/bt/servicemanager/UiHspCallback;

    .line 1417
    new-instance v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;

    invoke-direct {v0, p0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;-><init>(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mA2dpCallback:Lnfore/android/bt/servicemanager/UiA2dpCallback;

    .line 1799
    new-instance v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$5;

    invoke-direct {v0, p0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$5;-><init>(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mServiceCallback:Lnfore/android/bt/servicemanager/UiServiceCallback;

    .line 1951
    new-instance v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$6;

    invoke-direct {v0, p0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$6;-><init>(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mPbapCallback:Lnfore/android/bt/servicemanager/UiPbapCallback;

    .line 2018
    new-instance v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$7;

    invoke-direct {v0, p0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$7;-><init>(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mSppCallback:Lnfore/android/bt/servicemanager/UiSppCallback;

    .line 2079
    new-instance v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$8;

    invoke-direct {v0, p0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$8;-><init>(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mPanCallback:Lnfore/android/bt/servicemanager/UiPanCallback;

    .line 2094
    new-instance v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$9;

    invoke-direct {v0, p0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$9;-><init>(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mHidCallback:Lnfore/android/bt/servicemanager/UiHidCallback;

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mA2DPCallBackListenrs:Ljava/util/List;

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mHfpCallBackListenrs:Ljava/util/List;

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mServiceBackListenrs:Ljava/util/List;

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mPbapCallBackListenrs:Ljava/util/List;

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mSppCallBackListenrs:Ljava/util/List;

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mPanCallBackListenrs:Ljava/util/List;

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mHspCallBackListenrs:Ljava/util/List;

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mHidCallBackListenrs:Ljava/util/List;

    .line 166
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getServiceConnection()Z

    return-void
.end method

.method static synthetic access$000(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mServiceBackListenrs:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mHfpCallBackListenrs:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mA2DPCallBackListenrs:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mPbapCallBackListenrs:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mSppCallBackListenrs:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mPanCallBackListenrs:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mHidCallBackListenrs:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mHspCallBackListenrs:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mEventHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static declared-synchronized getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;
    .locals 2

    const-class v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    monitor-enter v0

    .line 150
    :try_start_0
    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBluetoothManager:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    if-nez v1, :cond_0

    .line 151
    new-instance v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-direct {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;-><init>()V

    sput-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBluetoothManager:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    .line 153
    :cond_0
    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBluetoothManager:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;
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
.method public addBleListener(Lnfore/android/bt/servicemanager/BleCallback;)V
    .locals 1

    .line 4351
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->addBleListener(Lnfore/android/bt/servicemanager/BleCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4353
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public avrcpPlayOrPause()Z
    .locals 1

    .line 3868
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->avrcpPlayOrPause()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 3870
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public bleConn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 4319
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->bleConn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4321
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public bleDisConn(Ljava/lang/String;)V
    .locals 1

    .line 4327
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->bleDisConn(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4329
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public bleScanStart()V
    .locals 1

    .line 4294
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->bleScanStart()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4296
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public bleScanStop()V
    .locals 1

    .line 4302
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->bleScanStop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4304
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public bytes2HexString([BI)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    if-eqz p1, :cond_2

    if-gez p2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    .line 2070
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 2071
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 2072
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2074
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public disableA2dp()V
    .locals 4

    const-string v0, "disableA2dp"

    const-string v1, "BluetoothServiceManager"

    .line 4399
    :try_start_0
    invoke-static {v1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4400
    sget-object v2, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->disableA2dp()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 4402
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 4403
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public enableA2dp()V
    .locals 1

    .line 4390
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->enableA2dp()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4393
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public enterBluetoothTestMode()Z
    .locals 1

    .line 4207
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->enterBluetoothTestMode()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 4209
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public getA2dpConnectedDeviceAddress()Ljava/lang/String;
    .locals 1

    .line 2739
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getA2dpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2741
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getA2dpCurrentState()I
    .locals 1

    .line 2749
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getA2dpCurrentState()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2751
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public getAppleDeviceAuthState()I
    .locals 1

    .line 3929
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getAppleDeviceAuthState()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 3931
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public getAutoConnectionStatus()I
    .locals 1

    .line 4189
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getAutoConnectionStatus()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 4191
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public getAvrcpConnectedDeviceAddress()Ljava/lang/String;
    .locals 1

    .line 2814
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getAvrcpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2816
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAvrcpCurrentState()I
    .locals 1

    .line 2768
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getAvrcpCurrentState()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2770
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public getBluetoothCurrentState()I
    .locals 1

    .line 2298
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getBluetoothCurrentState()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2300
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public getBluetoothLocalAdapterAddress()Ljava/lang/String;
    .locals 1

    .line 2268
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getBluetoothLocalAdapterAddress()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2270
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBluetoothLocalAdapterName()Ljava/lang/String;
    .locals 1

    .line 2248
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getBluetoothLocalAdapterName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2250
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBluetoothRemoteDeviceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2258
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getBluetoothRemoteDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2260
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getCalibrationClick()I
    .locals 1

    .line 3814
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getCalibrationClick()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 3816
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public getCalibrationState()I
    .locals 1

    .line 4234
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getCalibrationState()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 4236
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public getCallTime(Ljava/lang/String;)I
    .locals 1

    .line 3805
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getCallTime(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3807
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public getCallerId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 3823
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getCallerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3825
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getConnectedHfpDeviceCount()I
    .locals 1

    .line 2445
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getConnectedHfpDeviceCount()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentCallNumber()Ljava/lang/String;
    .locals 1

    .line 3416
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getCurrentCallNumber()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3418
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentImei()Ljava/lang/String;
    .locals 1

    .line 4243
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getCurrentImei()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 4245
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    return-object v0
.end method

.method public getCurrentSource()Ljava/lang/String;
    .locals 1

    .line 3877
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getCurrentSource()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3879
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentSyncState()I
    .locals 1

    .line 3850
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getCurrentSyncState()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 3852
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public getCurrentSyncType()I
    .locals 1

    .line 3841
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getCurrentSyncType()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 3843
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public getHCaliX1()I
    .locals 1

    .line 4056
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getHCaliX1()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 4058
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public getHCaliX2()I
    .locals 1

    .line 4065
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getHCaliX2()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 4067
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public getHCaliY1()I
    .locals 1

    .line 4074
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getHCaliY1()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 4076
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public getHCaliY2()I
    .locals 1

    .line 4083
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getHCaliY2()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 4085
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public getHXPhoneLen()I
    .locals 1

    .line 4020
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getHXPhoneLen()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 4022
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public getHYPhoneLen()I
    .locals 1

    .line 4029
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getHYPhoneLen()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 4031
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public getHfpCallCounts()I
    .locals 1

    .line 4180
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getHfpCallCounts()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 4182
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public getHfpCallState()I
    .locals 1

    .line 2453
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getHfpCallState()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2455
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v0, 0x6e

    return v0
.end method

.method public getHfpConnectedDeviceAddress()Ljava/lang/String;
    .locals 1

    .line 2426
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2428
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "00:00:00:00:00:00"

    return-object v0
.end method

.method public getHfpConnectedDeviceVendorID()Ljava/lang/String;
    .locals 1

    .line 2595
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getHfpConnectedDeviceVendorID()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2597
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getHfpCurrentScoState(Ljava/lang/String;)I
    .locals 1

    .line 2463
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getHfpCurrentScoState(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2465
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/16 p1, 0x6e

    return p1
.end method

.method public getHfpCurrentState(Ljava/lang/String;)I
    .locals 1

    .line 2436
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getHfpCurrentState(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2438
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/16 p1, 0x6e

    return p1
.end method

.method public getHfpMicSelection()I
    .locals 1

    .line 3380
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getHfpMicSelection()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 3382
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public getHfpRemoteDeviceBatteryStatus(Ljava/lang/String;)I
    .locals 1

    .line 2652
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getHfpRemoteDeviceBatteryStatus(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2654
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public getHfpRemoteDeviceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2585
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getHfpRemoteDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2587
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getHfpRemoteDeviceSignalStatus(Ljava/lang/String;)I
    .locals 1

    .line 2662
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getHfpRemoteDeviceSignalStatus(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2664
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public getHidCurrentState()I
    .locals 1

    .line 3975
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getHidCurrentState()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 3977
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v0, 0x64

    return v0
.end method

.method public getHspConnectedDeviceAddress()Ljava/lang/String;
    .locals 1

    .line 3475
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getHspConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3477
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getHspCurrentScoState(Ljava/lang/String;)I
    .locals 1

    .line 3495
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getHspCurrentScoState(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3497
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/16 p1, 0x64

    return p1
.end method

.method public getHspCurrentState(Ljava/lang/String;)I
    .locals 1

    .line 3485
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getHspCurrentState(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3487
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/16 p1, 0x64

    return p1
.end method

.method public getImportVCardState()Z
    .locals 1

    .line 3859
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getImportVCardState()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 3861
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public getLastCallNumber()Ljava/lang/String;
    .locals 1

    .line 3425
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getLastCallNumber()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3427
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMicMuteStation()Z
    .locals 1

    .line 2472
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->isMicMute()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2474
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public getPCaliX1()I
    .locals 1

    .line 4092
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getPCaliX1()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 4094
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public getPCaliX2()I
    .locals 1

    .line 4101
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getPCaliX2()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 4103
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public getPCaliY1()I
    .locals 1

    .line 4110
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getPCaliY1()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 4112
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public getPCaliY2()I
    .locals 1

    .line 4119
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getPCaliY2()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 4121
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public getPXPhoneLen()I
    .locals 1

    .line 4038
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getHYPhoneLen()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 4040
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public getPYPhoneLen()I
    .locals 1

    .line 4047
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getHYPhoneLen()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 4049
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public getPanConnectedDeviceAddress()Ljava/lang/String;
    .locals 1

    .line 3787
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getPanConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3789
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPanCurrentState()I
    .locals 1

    .line 3796
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getPanCurrentState()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 3798
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v0, 0x64

    return v0
.end method

.method public getPbapCurrentState(Ljava/lang/String;)I
    .locals 1

    .line 2758
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getPbapCurrentState(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2760
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public getPhoneDeviceX()I
    .locals 1

    .line 4162
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getDeviceX()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 4164
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public getPhoneDeviceY()I
    .locals 1

    .line 4171
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getDeviceY()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 4173
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public getPhoneResolution()Ljava/lang/String;
    .locals 1

    .line 4011
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getPhoneResolution()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 4013
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    return-object v0
.end method

.method public getPhoneScreenState()I
    .locals 1

    .line 3993
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getPhoneScreenState()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 3995
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public getPhoneScreenType()I
    .locals 1

    .line 4002
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getPhoneScreenType()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 4004
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public getPinCode()Ljava/lang/String;
    .locals 1

    .line 2805
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getPinCode()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2807
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    return-object v0
.end method

.method public getServiceConnection()Z
    .locals 3

    .line 176
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->connectService()Landroid/os/IBinder;

    move-result-object v0

    const-string v1, "BluetoothServiceManager"

    if-eqz v0, :cond_0

    .line 178
    invoke-static {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->asInterface(Landroid/os/IBinder;)Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    .line 180
    :try_start_0
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mHfpCallback:Lnfore/android/bt/servicemanager/UiHfpCallback;

    invoke-interface {v0, v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->registerHfpCallback(Lnfore/android/bt/servicemanager/UiHfpCallback;)Z

    .line 181
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    iget-object v2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mHspCallback:Lnfore/android/bt/servicemanager/UiHspCallback;

    invoke-interface {v0, v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->registerHspCallback(Lnfore/android/bt/servicemanager/UiHspCallback;)Z

    .line 182
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    iget-object v2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mA2dpCallback:Lnfore/android/bt/servicemanager/UiA2dpCallback;

    invoke-interface {v0, v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->registerA2dpAvrcpCallback(Lnfore/android/bt/servicemanager/UiA2dpCallback;)Z

    .line 183
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    iget-object v2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mServiceCallback:Lnfore/android/bt/servicemanager/UiServiceCallback;

    invoke-interface {v0, v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->registerNforeServiceCallback(Lnfore/android/bt/servicemanager/UiServiceCallback;)Z

    .line 184
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    iget-object v2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mPbapCallback:Lnfore/android/bt/servicemanager/UiPbapCallback;

    invoke-interface {v0, v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->registerPbapCallback(Lnfore/android/bt/servicemanager/UiPbapCallback;)Z

    .line 185
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    iget-object v2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mSppCallback:Lnfore/android/bt/servicemanager/UiSppCallback;

    invoke-interface {v0, v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->registerSppCallback(Lnfore/android/bt/servicemanager/UiSppCallback;)Z

    .line 186
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    iget-object v2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mPanCallback:Lnfore/android/bt/servicemanager/UiPanCallback;

    invoke-interface {v0, v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->registerPanCallback(Lnfore/android/bt/servicemanager/UiPanCallback;)Z

    .line 187
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    iget-object v2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mHidCallback:Lnfore/android/bt/servicemanager/UiHidCallback;

    invoke-interface {v0, v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->registerHidCallback(Lnfore/android/bt/servicemanager/UiHidCallback;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 189
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const-string v0, "BluetoothService connected1:"

    .line 191
    invoke-static {v1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 194
    sput-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    const-string v0, "BluetoothService not connected:"

    .line 195
    invoke-static {v1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    const-string v0, "hzbhd.bluetooth"

    return-object v0
.end method

.method public getSoftwareVersion()Ljava/lang/String;
    .locals 1

    .line 4260
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 4262
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    return-object v0
.end method

.method public getSppCurrentState(Ljava/lang/String;)I
    .locals 1

    .line 3389
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getSppCurrentState(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3391
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/16 p1, 0x6e

    return p1
.end method

.method public getTargetAddress()Ljava/lang/String;
    .locals 1

    .line 4153
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getTargetAddress()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 4155
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    return-object v0
.end method

.method public getThreeWayCallNumber()Ljava/lang/String;
    .locals 1

    .line 3434
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getThreeWayCallNumber()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3436
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getThreeWayCallTime()I
    .locals 1

    .line 3832
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getThreeWayCallTime()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 3834
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public isA2dpNativeRunning()Z
    .locals 1

    .line 3302
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->isA2dpNativeRunning()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 3304
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public isA2dpPlaying()Z
    .locals 1

    .line 3902
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->isA2dpPlaying()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 3904
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public isAAConnected()Z
    .locals 1

    .line 4381
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->isAAConnected()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 4383
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public isAlreadyReadPairedDevices()Z
    .locals 1

    .line 3095
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->isAlreadyReadPairedDevices()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 3097
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x1

    return v0
.end method

.method public isAppleDeviceFinishAuth()Z
    .locals 1

    .line 3920
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->isAppleDeviceFinishAuth()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 3922
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public isAvrcp13Supported(Ljava/lang/String;)Z
    .locals 1

    .line 2824
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->isAvrcp13Supported(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2826
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public isAvrcp14Supported(Ljava/lang/String;)Z
    .locals 1

    .line 2834
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->isAvrcp14Supported(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2836
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public isAvrcpBrowsingChannelEstablished(Ljava/lang/String;)Z
    .locals 1

    .line 3263
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->isAvrcpBrowsingChannelEstablished(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3265
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public isBluetoothAutoReconnectEnable()Z
    .locals 1

    .line 2356
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->isBluetoothAutoReconnectEnable()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2358
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public isBluetoothDiscoverable()Z
    .locals 1

    .line 2328
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->isBluetoothDiscoverable()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2330
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public isBluetoothEnable()Z
    .locals 1

    .line 2288
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->isBluetoothEnable()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2290
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public isBluetoothScanning()Z
    .locals 1

    .line 2318
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->isBluetoothScanning()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2320
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public isCalibration()Z
    .locals 1

    .line 4198
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->isCalibration()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 4200
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public isCallingFlag()Z
    .locals 1

    .line 3371
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->isCallingFlag()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 3373
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public isDevicePaired(Ljava/lang/String;)Z
    .locals 4

    .line 4409
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->isDevicePaired(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "BluetoothServiceManager"

    .line 4410
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPaired:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " address:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p1

    .line 4413
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public isFirstBootUp()Z
    .locals 1

    .line 3311
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->isFirstBootUp()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 3313
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x1

    return v0
.end method

.method public isForiPodDisconnectA2DP()Z
    .locals 1

    .line 3104
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->isForiPodDisconnectA2DP()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 3106
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public isHfpAutoAnswer()Z
    .locals 1

    .line 3353
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->isHfpAutoAnswer()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 3355
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public isHfpConnectedAppleDevice()Z
    .locals 1

    .line 3911
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->isHfpConnectedAppleDevice()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 3913
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public isHfpRemoteDeviceOnRoaming(Ljava/lang/String;)Z
    .locals 1

    .line 2642
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->isHfpRemoteDeviceOnRoaming(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2644
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public isHfpRemoteDeviceTelecomServiceOn(Ljava/lang/String;)Z
    .locals 1

    .line 2632
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->isHfpRemoteDeviceTelecomServiceOn(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2634
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public isHfpVoiceControlOn(Ljava/lang/String;)Z
    .locals 1

    .line 4128
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->isHfpVoiceControlOn(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 4130
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public isMapNotificationRegistered(Ljava/lang/String;)Z
    .locals 1

    .line 3720
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->isMapNotificationRegistered(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3722
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public isPhoneBookLoading()Z
    .locals 1

    .line 4277
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->isPhoneBookLoading()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 4279
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public isPhonebookAutoSync()Z
    .locals 1

    .line 3398
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->isPhonebookAutoSync()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 3400
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public isPlayRing()Z
    .locals 1

    .line 4286
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->isRing()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public isScaning()Z
    .locals 1

    .line 4310
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->isScan()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 4312
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public isSppConnected(Ljava/lang/String;)Z
    .locals 1

    .line 3596
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->isSppConnected(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3598
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public isTwinConnectEnable()Z
    .locals 1

    .line 3362
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->isTwinConnectEnable()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 3364
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public refreshConn()V
    .locals 1

    .line 4335
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->refreshConn()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4337
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public registerA2DPCallBackListenr(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;)V
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mA2DPCallBackListenrs:Ljava/util/List;

    monitor-enter v0

    .line 216
    :try_start_0
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mA2DPCallBackListenrs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 217
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mA2DPCallBackListenrs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public registerHfpCallBackListenr(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHfpCallbackListener;)V
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mHfpCallBackListenrs:Ljava/util/List;

    monitor-enter v0

    .line 224
    :try_start_0
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mHfpCallBackListenrs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 225
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mHfpCallBackListenrs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public registerHidCallBackListenr(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHidCallbackListener;)V
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mHidCallBackListenrs:Ljava/util/List;

    monitor-enter v0

    .line 272
    :try_start_0
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mHidCallBackListenrs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 273
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mHidCallBackListenrs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public registerHspCallBackListenr(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHspCallbackListener;)V
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mHspCallBackListenrs:Ljava/util/List;

    monitor-enter v0

    .line 232
    :try_start_0
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mHspCallBackListenrs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 233
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mHspCallBackListenrs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public registerPanCallBackListenr(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothPanCallbackListener;)V
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mPanCallBackListenrs:Ljava/util/List;

    monitor-enter v0

    .line 264
    :try_start_0
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mPanCallBackListenrs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 265
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mPanCallBackListenrs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public registerPbapCallBackListenr(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothPbapCallbackListener;)V
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mPbapCallBackListenrs:Ljava/util/List;

    monitor-enter v0

    .line 248
    :try_start_0
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mPbapCallBackListenrs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 249
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mPbapCallBackListenrs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public registerServiceBackListenr(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceCallbackListener;)V
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mServiceBackListenrs:Ljava/util/List;

    monitor-enter v0

    .line 240
    :try_start_0
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mServiceBackListenrs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 241
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mServiceBackListenrs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public registerSppCallBackListenr(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothSppCallbackListener;)V
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mSppCallBackListenrs:Ljava/util/List;

    monitor-enter v0

    .line 256
    :try_start_0
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mSppCallBackListenrs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 257
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mSppCallBackListenrs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeBleListener(Lnfore/android/bt/servicemanager/BleCallback;)V
    .locals 1

    .line 4359
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->removeBleListener(Lnfore/android/bt/servicemanager/BleCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4361
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public reqA2dpConnect(Ljava/lang/String;)Z
    .locals 1

    .line 2719
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqA2dpConnect(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2721
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public reqA2dpDisconnect(Ljava/lang/String;)Z
    .locals 1

    .line 2729
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqA2dpDisconnect(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2731
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public reqAvrcpAbortMetadataReceiving(Ljava/lang/String;)Z
    .locals 1

    .line 3075
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqAvrcpAbortMetadataReceiving(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3077
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public reqAvrcpAddToNowPlaying(Ljava/lang/String;BIJ)Z
    .locals 6

    .line 3253
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqAvrcpAddToNowPlaying(Ljava/lang/String;BIJ)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3255
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public reqAvrcpBackward(Ljava/lang/String;)Z
    .locals 1

    .line 2910
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqAvrcpBackward(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2912
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public reqAvrcpChangePath(Ljava/lang/String;IJB)Z
    .locals 6

    .line 3210
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqAvrcpChangePath(Ljava/lang/String;IJB)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3212
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public reqAvrcpForward(Ljava/lang/String;)Z
    .locals 1

    .line 2900
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqAvrcpForward(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2902
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public reqAvrcpGetCapabilitiesSupportEvent(Ljava/lang/String;)Z
    .locals 1

    .line 2980
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqAvrcpGetCapabilitiesSupportEvent(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2982
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public reqAvrcpGetElementAttributesPlaying(Ljava/lang/String;)Z
    .locals 1

    .line 3033
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqAvrcpGetElementAttributesPlaying(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3035
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public reqAvrcpGetFolderItems(Ljava/lang/String;B)Z
    .locals 1

    .line 3199
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqAvrcpGetFolderItems(Ljava/lang/String;B)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3201
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public reqAvrcpGetItemAttributes(Ljava/lang/String;BIJ)Z
    .locals 6

    .line 3221
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqAvrcpGetItemAttributes(Ljava/lang/String;BIJ)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3223
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public reqAvrcpGetPlayStatus(Ljava/lang/String;)Z
    .locals 1

    .line 3043
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqAvrcpGetPlayStatus(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3045
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public reqAvrcpGetPlayerSettingAttributeText(Ljava/lang/String;B)Z
    .locals 1

    .line 3136
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqAvrcpGetPlayerSettingAttributeText(Ljava/lang/String;B)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3138
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public reqAvrcpGetPlayerSettingAttributesList(Ljava/lang/String;)Z
    .locals 1

    .line 2990
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqAvrcpGetPlayerSettingAttributesList(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2992
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public reqAvrcpGetPlayerSettingCurrentValues(Ljava/lang/String;B)Z
    .locals 1

    .line 3012
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqAvrcpGetPlayerSettingCurrentValues(Ljava/lang/String;B)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3014
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public reqAvrcpGetPlayerSettingValueText(Ljava/lang/String;BB)Z
    .locals 1

    .line 3147
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1, p2, p3}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqAvrcpGetPlayerSettingValueText(Ljava/lang/String;BB)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3149
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public reqAvrcpGetPlayerSettingValuesList(Ljava/lang/String;B)Z
    .locals 1

    .line 3001
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqAvrcpGetPlayerSettingValuesList(Ljava/lang/String;B)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3003
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public reqAvrcpInformBatteryStatusOfCt(Ljava/lang/String;B)Z
    .locals 1

    .line 3169
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqAvrcpInformBatteryStatusOfCt(Ljava/lang/String;B)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3171
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public reqAvrcpInformDisplayableCharset(Ljava/lang/String;[I)Z
    .locals 1

    .line 3158
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqAvrcpInformDisplayableCharset(Ljava/lang/String;[I)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3160
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public reqAvrcpNextGroup(Ljava/lang/String;)Z
    .locals 1

    .line 3085
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqAvrcpNextGroup(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3087
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public reqAvrcpPause(Ljava/lang/String;)Z
    .locals 1

    .line 2864
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqAvrcpPause(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2866
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public reqAvrcpPlay(Ljava/lang/String;)Z
    .locals 1

    .line 2844
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqAvrcpPlay(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2846
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public reqAvrcpPlayPause()Z
    .locals 1

    .line 2873
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqAvrcpPlayPause()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2875
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public reqAvrcpPlaySelectedItem(Ljava/lang/String;BIJ)Z
    .locals 6

    .line 3232
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqAvrcpPlaySelectedItem(Ljava/lang/String;BIJ)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3234
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public reqAvrcpPreviousGroup(Ljava/lang/String;)Z
    .locals 1

    .line 3114
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqAvrcpPreviousGroup(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3116
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public reqAvrcpRegisterEventWatcher(Ljava/lang/String;BJ)Z
    .locals 1

    .line 3054
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1, p2, p3, p4}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqAvrcpRegisterEventWatcher(Ljava/lang/String;BJ)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3056
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public reqAvrcpSearch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 3242
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqAvrcpSearch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3244
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public reqAvrcpSetAbsoluteVolume(Ljava/lang/String;B)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3274
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqAvrcpSetAbsoluteVolume(Ljava/lang/String;B)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3276
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public reqAvrcpSetAddressedPlayer(Ljava/lang/String;I)Z
    .locals 1

    .line 3179
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqAvrcpSetAddressedPlayer(Ljava/lang/String;I)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3181
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public reqAvrcpSetBrowsedPlayer(Ljava/lang/String;I)Z
    .locals 1

    .line 3189
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqAvrcpSetBrowsedPlayer(Ljava/lang/String;I)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3191
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public reqAvrcpSetMetadataCompanyId(Ljava/lang/String;I)Z
    .locals 1

    .line 3125
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqAvrcpSetMetadataCompanyId(Ljava/lang/String;I)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3127
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public reqAvrcpSetPlayerSettingValue(Ljava/lang/String;BB)Z
    .locals 1

    .line 3023
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1, p2, p3}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqAvrcpSetPlayerSettingValue(Ljava/lang/String;BB)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3025
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public reqAvrcpStartFastForward(Ljava/lang/String;)Z
    .locals 1

    .line 2940
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqAvrcpStartFastForward(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2942
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public reqAvrcpStartRewind(Ljava/lang/String;)Z
    .locals 1

    .line 2960
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqAvrcpStartRewind(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2962
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public reqAvrcpStop(Ljava/lang/String;)Z
    .locals 1

    .line 2854
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqAvrcpStop(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2856
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public reqAvrcpStopFastForward(Ljava/lang/String;)Z
    .locals 1

    .line 2950
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqAvrcpStopFastForward(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2952
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public reqAvrcpStopRewind(Ljava/lang/String;)Z
    .locals 1

    .line 2970
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqAvrcpStopRewind(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2972
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public reqAvrcpUnregisterEventWatcher(Ljava/lang/String;B)Z
    .locals 1

    .line 3065
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqAvrcpUnregisterEventWatcher(Ljava/lang/String;B)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3067
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public reqAvrcpUpdateSongStatus()V
    .locals 1

    .line 3445
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqAvrcpUpdateSongStatus()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 3447
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public reqAvrcpVolumeDown(Ljava/lang/String;)Z
    .locals 1

    .line 2930
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqAvrcpVolumeDown(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2932
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public reqAvrcpVolumeUp(Ljava/lang/String;)Z
    .locals 1

    .line 2920
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqAvrcpBackward(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2922
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public reqBluetoothConnectAll(Ljava/lang/String;)I
    .locals 1

    .line 2366
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqBluetoothConnectAll(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2368
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public reqBluetoothDisconnectAll()I
    .locals 1

    .line 2376
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqBluetoothDisconnectAll()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2378
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public reqBluetoothFoundDevices()Z
    .locals 1

    .line 2238
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqBluetoothFoundDevices()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2240
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public reqBluetoothPair(Ljava/lang/String;)Z
    .locals 1

    .line 2180
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqBluetoothPair(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2182
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public reqBluetoothPairedDevices()Z
    .locals 1

    .line 2219
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqBluetoothPairedDevices()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2221
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public reqBluetoothPairedDevicesCount()I
    .locals 1

    .line 2308
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqBluetoothPairedDevicesCount()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2310
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public reqBluetoothPairedDevicesExtend()Z
    .locals 1

    .line 2228
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqBluetoothPairedDevicesExtend()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2230
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public reqBluetoothRemoteUuids(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2396
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqBluetoothRemoteUuids(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2398
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public reqBluetoothScanning(Z)Z
    .locals 1

    .line 2170
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqBluetoothScanning(Z)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2172
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public reqBluetoothUnpair(Ljava/lang/String;)Z
    .locals 1

    .line 2190
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqBluetoothUnpair(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2192
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public reqBluetoothUnpairAll()Z
    .locals 1

    .line 2200
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqBluetoothUnpairAll()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2202
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public reqBluetoothUnpairAllNextTime()Z
    .locals 1

    .line 2209
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqBluetoothUnpairAllNextTime()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2211
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public reqCancelPbapDownload(Ljava/lang/String;)Z
    .locals 1

    .line 3320
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqCancelPbapDownload(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3322
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public reqDisconnectAll(Ljava/lang/String;)I
    .locals 1

    .line 2385
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqDisconnectAll(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2387
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public reqHfpAnswerCall(Ljava/lang/String;)V
    .locals 1

    .line 2512
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqHfpAnswerCall(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2514
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public reqHfpAtDownloadPhonebook(Ljava/lang/String;I)V
    .locals 1

    .line 2681
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqHfpAtDownloadPhonebook(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2683
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public reqHfpAtDownloadSMS(Ljava/lang/String;)V
    .locals 1

    .line 2690
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqHfpAtDownloadSMS(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2692
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public reqHfpAudioTransfer(Ljava/lang/String;B)Z
    .locals 1

    .line 2557
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqHfpAudioTransfer(Ljava/lang/String;B)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2559
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public reqHfpConnect(Ljava/lang/String;)Z
    .locals 1

    .line 2406
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqHfpConnect(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2408
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public reqHfpDialCall(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 2482
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqHfpDialCall(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2484
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public reqHfpDisconnect(Ljava/lang/String;)Z
    .locals 1

    .line 2416
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqHfpDisconnect(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2418
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public reqHfpMemoryDial(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 2502
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqHfpMemoryDial(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2504
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public reqHfpMicMute()Z
    .locals 1

    .line 2891
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqHfpMicMute()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2893
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public reqHfpMicSelection()Z
    .locals 1

    .line 3407
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqHfpMicSelection()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 3409
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public reqHfpMultiCallControl(Ljava/lang/String;B)V
    .locals 1

    .line 2539
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqHfpMultiCallControl(Ljava/lang/String;B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2541
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public reqHfpReDial(Ljava/lang/String;)Z
    .locals 1

    .line 2492
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqHfpReDial(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2494
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public reqHfpRejectIncomingCall(Ljava/lang/String;)V
    .locals 1

    .line 2521
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqHfpRejectIncomingCall(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2523
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public reqHfpRemoteDeviceInfo(Ljava/lang/String;)V
    .locals 1

    .line 2576
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqHfpRemoteDeviceInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2578
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public reqHfpRemoteDeviceNetworkOperator(Ljava/lang/String;)V
    .locals 1

    .line 2614
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqHfpRemoteDeviceNetworkOperator(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2616
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public reqHfpRemoteDevicePhoneNumber(Ljava/lang/String;)V
    .locals 1

    .line 2605
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqHfpRemoteDevicePhoneNumber(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2607
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public reqHfpRemoteDeviceSubscriberNumber(Ljava/lang/String;)V
    .locals 1

    .line 2623
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqHfpRemoteDeviceSubscriberNumber(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2625
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public reqHfpRemoteDeviceVolumeSync(Ljava/lang/String;BI)V
    .locals 1

    .line 2700
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1, p2, p3}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqHfpRemoteDeviceVolumeSync(Ljava/lang/String;BI)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2702
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public reqHfpSendDtmf(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2548
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqHfpSendDtmf(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2550
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public reqHfpTerminateOngoingCall(Ljava/lang/String;)V
    .locals 1

    .line 2530
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqHfpTerminateOngoingCall(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2532
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public reqHfpVoiceDial(Ljava/lang/String;Z)Z
    .locals 1

    .line 2709
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqHfpVoiceDial(Ljava/lang/String;Z)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2711
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public reqHidConnect(Ljava/lang/String;)Z
    .locals 1

    .line 3938
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqHidConnect(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3940
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public reqHidDisconnect(Ljava/lang/String;)Z
    .locals 1

    .line 3947
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqHidDisconnect(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3949
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public reqHspAnswerCall(Ljava/lang/String;)Z
    .locals 1

    .line 3515
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqHspAnswerCall(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3517
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public reqHspAudioTransfer(Ljava/lang/String;B)Z
    .locals 1

    .line 3545
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqHspAudioTransfer(Ljava/lang/String;B)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3547
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public reqHspConnect(Ljava/lang/String;)Z
    .locals 1

    .line 3455
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqHspConnect(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3457
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public reqHspDisconnect(Ljava/lang/String;)Z
    .locals 1

    .line 3465
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqHspDisconnect(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3467
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public reqHspReDial(Ljava/lang/String;)Z
    .locals 1

    .line 3505
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqHspReDial(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3507
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public reqHspRejectIncomingCall(Ljava/lang/String;)Z
    .locals 1

    .line 3525
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqHspRejectIncomingCall(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3527
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public reqHspRemoteDeviceVolumeSync(Ljava/lang/String;BI)Z
    .locals 1

    .line 3556
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1, p2, p3}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqHspRemoteDeviceVolumeSync(Ljava/lang/String;BI)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3558
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public reqHspTerminateOngoingCall(Ljava/lang/String;)Z
    .locals 1

    .line 3535
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqHspTerminateOngoingCall(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3537
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public reqMapCleanDatabase()V
    .locals 1

    .line 3760
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqMapCleanDatabase()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 3762
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public reqMapDatabaseAvailable(Ljava/lang/String;)V
    .locals 1

    .line 3740
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqMapDatabaseAvailable(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3742
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public reqMapDeleteDatabaseByAddress(Ljava/lang/String;)V
    .locals 1

    .line 3750
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqMapDeleteDatabaseByAddress(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3752
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public reqMapDownloadAllMessages(Ljava/lang/String;IIZ)Z
    .locals 1

    .line 3678
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1, p2, p3, p4}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqMapDownloadAllMessages(Ljava/lang/String;IIZ)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3680
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public reqMapDownloadInterrupt(Ljava/lang/String;)Z
    .locals 1

    .line 3730
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqMapDownloadInterrupt(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3732
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public reqMapDownloadSingleMessage(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 1

    .line 3689
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1, p2, p3}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqMapDownloadSingleMessage(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3691
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public reqMapRegisterNotification(Ljava/lang/String;Z)Z
    .locals 1

    .line 3700
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqMapRegisterNotification(Ljava/lang/String;Z)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3702
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public reqMapUnregisterNotification(Ljava/lang/String;)V
    .locals 1

    .line 3710
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqMapUnregisterNotification(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3712
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public reqPanConnect(Ljava/lang/String;)Z
    .locals 1

    .line 3769
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqPanConnect(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3771
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public reqPanDisconnect(Ljava/lang/String;)Z
    .locals 1

    .line 3778
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqPanDisconnect(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3780
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public reqPbapCleanDatabase()V
    .locals 1

    .line 3657
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqPbapCleanDatabase()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 3659
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public reqPbapDatabaseAvailable(Ljava/lang/String;)V
    .locals 1

    .line 3627
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqPbapDatabaseAvailable(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3629
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public reqPbapDeleteDatabaseByAddress(Ljava/lang/String;)V
    .locals 1

    .line 3647
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqPbapDeleteDatabaseByAddress(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3649
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public reqPbapDownloadAllVcards(Ljava/lang/String;IIZ)Z
    .locals 1

    .line 3617
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1, p2, p3, p4}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqPbapDownloadAllVcards(Ljava/lang/String;IIZ)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3619
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public reqPbapDownloadInterrupt(Ljava/lang/String;)Z
    .locals 1

    .line 3667
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqPbapDownloadInterrupt(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3669
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public reqPbapQueryName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 3637
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqPbapQueryName(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3639
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public reqSoftwareUpdate()Z
    .locals 1

    .line 2882
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqSoftwareUpdate()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2884
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public reqSppConnect(Ljava/lang/String;)Z
    .locals 1

    .line 3566
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqSppConnect(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3568
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public reqSppConnectedDeviceAddressList()V
    .locals 1

    .line 3586
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqSppConnectedDeviceAddressList()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 3588
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public reqSppDisconnect(Ljava/lang/String;)Z
    .locals 1

    .line 3576
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqSppDisconnect(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3578
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public reqSppSendData(Ljava/lang/String;[B)V
    .locals 1

    .line 3606
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqSppSendData(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3608
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public requestAudioFocus()V
    .locals 1

    .line 3886
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->requestAudioFocus()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3888
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public requestBTAudioChannel()V
    .locals 1

    .line 3894
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->requestBTAudioChannel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3896
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public sendData(Ljava/lang/String;)V
    .locals 1

    .line 4343
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->sendData(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4345
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public sendHidMouseCommand(IIII)I
    .locals 1

    .line 3957
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1, p2, p3, p4}, Lnfore/android/bt/servicemanager/UiServiceCommand;->sendHidMouseCommand(IIII)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3959
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public sendHidVirtualKeyCommand(II)I
    .locals 1

    .line 3966
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->sendHidVirtualKeyCommand(II)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3968
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public sendSppMessage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 3984
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->sendSppMessage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3986
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public serviceDied()V
    .locals 3

    .line 207
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mServiceBackListenrs:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    .line 208
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mServiceBackListenrs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 209
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mServiceBackListenrs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceCallbackListener;

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceCallbackListener;->onServiceDied()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 211
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public serviceReConnected()V
    .locals 0

    .line 202
    invoke-super {p0}, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;->serviceReConnected()V

    return-void
.end method

.method public setA2dpLocalMute(Z)Z
    .locals 1

    .line 2788
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->setA2dpLocalMute(Z)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2790
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public setA2dpLocalVolume(I)Z
    .locals 1

    .line 2778
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->setA2dpLocalVolume(I)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2780
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public setA2dpNativeStart()V
    .locals 1

    .line 3284
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->setA2dpNativeStart()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3286
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setA2dpNativeStop()V
    .locals 1

    .line 3293
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->setA2dpNativeStop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3295
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setAAConnected(Z)V
    .locals 2

    .line 4367
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    if-nez v0, :cond_0

    return-void

    .line 4370
    :cond_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    const-string v1, ""

    invoke-interface {v0, v1, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->setAAConnected(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4373
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setActivePhone(Ljava/lang/String;)V
    .locals 1

    .line 4145
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->setActivePhone(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4147
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setBluetoothAutoReconnect(Z)V
    .locals 1

    .line 2338
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->setBluetoothAutoReconnect(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2340
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setBluetoothAutoReconnectForceOor(Z)V
    .locals 1

    .line 2347
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->setBluetoothAutoReconnectForceOor(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2349
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setBluetoothDiscoverableDuration(I)Z
    .locals 1

    .line 2150
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->setBluetoothDiscoverableDuration(I)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2152
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public setBluetoothDiscoverablePermanent(Z)Z
    .locals 1

    .line 2160
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->setBluetoothDiscoverablePermanent(Z)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2162
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public setBluetoothEnable(Z)Z
    .locals 1

    .line 2141
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->setBluetoothEnable(Z)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2143
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public setBluetoothLocalAdapterName(Ljava/lang/String;)Z
    .locals 1

    .line 2278
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->setBluetoothLocalAdapterName(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2280
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public setCalibration(Z)V
    .locals 1

    .line 4252
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->setCalibration(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4254
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setHfpAtNewSmsNotify(Ljava/lang/String;Z)V
    .locals 1

    .line 2672
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->setHfpAtNewSmsNotify(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2674
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setHfpAutoAnswer(Z)V
    .locals 1

    .line 3329
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->setHfpAutoAnswer(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3331
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setHfpLocalRingEnable(Z)V
    .locals 1

    .line 2567
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->setHfpLocalRingEnable(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2569
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setOutputFrequencyChannel(II)Z
    .locals 1

    .line 4216
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->setOutputFrequencyChannel(II)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 4218
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public setOutputFrequencyChannelExtended(I)Z
    .locals 1

    .line 4225
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->setOutputFrequencyChannelExtended(I)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 4227
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public setPhonebookAutoSyncEnable(Z)V
    .locals 1

    .line 3337
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->setPhonebookAutoSyncEnable(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3339
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setPinCode(Ljava/lang/String;)V
    .locals 1

    .line 2797
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->setPinCode(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2799
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setTargetAddress(Ljava/lang/String;)V
    .locals 1

    .line 4137
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->setTargetAddress(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4139
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setTouchesOptions(Z)V
    .locals 1

    .line 4269
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->setTouchesOptions(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4271
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setTwinConnectEnable(Z)V
    .locals 1

    .line 3345
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mBlueToothService:Lnfore/android/bt/servicemanager/UiServiceCommand;

    invoke-interface {v0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->setTwinConnectEnable(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3347
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public unRegisterA2DPCallBackListenr(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;)V
    .locals 2

    .line 279
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mA2DPCallBackListenrs:Ljava/util/List;

    monitor-enter v0

    .line 280
    :try_start_0
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mA2DPCallBackListenrs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 281
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mA2DPCallBackListenrs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 283
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public unRegisterHfpCallBackListenr(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHfpCallbackListener;)V
    .locals 2

    .line 287
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mHfpCallBackListenrs:Ljava/util/List;

    monitor-enter v0

    .line 288
    :try_start_0
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mHfpCallBackListenrs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 289
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mHfpCallBackListenrs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 291
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public unRegisterHidCallBackListenr(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHidCallbackListener;)V
    .locals 2

    .line 335
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mHidCallBackListenrs:Ljava/util/List;

    monitor-enter v0

    .line 336
    :try_start_0
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mHidCallBackListenrs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 337
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mHidCallBackListenrs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 339
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public unRegisterHspCallBackListenr(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHspCallbackListener;)V
    .locals 2

    .line 295
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mHspCallBackListenrs:Ljava/util/List;

    monitor-enter v0

    .line 296
    :try_start_0
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mHspCallBackListenrs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 297
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mHspCallBackListenrs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 299
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public unRegisterPanCallBackListenr(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothPanCallbackListener;)V
    .locals 2

    .line 327
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mPanCallBackListenrs:Ljava/util/List;

    monitor-enter v0

    .line 328
    :try_start_0
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mPanCallBackListenrs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 329
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mPanCallBackListenrs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 331
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public unRegisterPbapCallBackListenr(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothPbapCallbackListener;)V
    .locals 2

    .line 311
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mPbapCallBackListenrs:Ljava/util/List;

    monitor-enter v0

    .line 312
    :try_start_0
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mPbapCallBackListenrs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 313
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mPbapCallBackListenrs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 315
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public unRegisterServiceBackListenr(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceCallbackListener;)V
    .locals 2

    .line 303
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mServiceBackListenrs:Ljava/util/List;

    monitor-enter v0

    .line 304
    :try_start_0
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mServiceBackListenrs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 305
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mServiceBackListenrs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 307
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public unRegisterSppCallBackListenr(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothSppCallbackListener;)V
    .locals 2

    .line 319
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mSppCallBackListenrs:Ljava/util/List;

    monitor-enter v0

    .line 320
    :try_start_0
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mSppCallBackListenrs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 321
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->mSppCallBackListenrs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 323
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
