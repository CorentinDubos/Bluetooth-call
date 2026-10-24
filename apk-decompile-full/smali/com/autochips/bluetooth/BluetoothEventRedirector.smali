.class public Lcom/autochips/bluetooth/BluetoothEventRedirector;
.super Ljava/lang/Object;
.source "BluetoothEventRedirector.java"


# static fields
.field public static final ACTION_QB_POWEROFF:Ljava/lang/String; = "autochips.intent.action.QB_POWEROFF"

.field public static final ACTION_QB_POWERON:Ljava/lang/String; = "autochips.intent.action.QB_POWERON"

.field private static DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BluetoothEventRedirector"


# instance fields
.field private mAvrcpCtPLayerUtility:Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;

.field private mAvrcpCtPlayerManage:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mHfAdapter:Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;

.field private mIsA2DPEnable:Z

.field private mManager:Lcom/autochips/bluetooth/LocalBluetoothManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 72
    sget-boolean v0, Lcom/autochips/bluetooth/BtEmulatorDebug;->mDebugAll:Z

    sget-boolean v1, Lcom/autochips/bluetooth/BtEmulatorDebug;->mDebugSettings:Z

    and-int/2addr v0, v1

    sput-boolean v0, Lcom/autochips/bluetooth/BluetoothEventRedirector;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/autochips/bluetooth/LocalBluetoothManager;)V
    .locals 1

    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector;->mIsA2DPEnable:Z

    .line 84
    new-instance v0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;-><init>(Lcom/autochips/bluetooth/BluetoothEventRedirector;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 417
    iput-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector;->mManager:Lcom/autochips/bluetooth/LocalBluetoothManager;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 70
    sget-boolean v0, Lcom/autochips/bluetooth/BluetoothEventRedirector;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/LocalBluetoothManager;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector;->mManager:Lcom/autochips/bluetooth/LocalBluetoothManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector;->mHfAdapter:Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;

    return-object p0
.end method

.method static synthetic access$202(Lcom/autochips/bluetooth/BluetoothEventRedirector;Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;)Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector;->mHfAdapter:Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;

    return-object p1
.end method

.method static synthetic access$300(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector;->mAvrcpCtPlayerManage:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;

    return-object p0
.end method

.method static synthetic access$302(Lcom/autochips/bluetooth/BluetoothEventRedirector;Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;)Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector;->mAvrcpCtPlayerManage:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;

    return-object p1
.end method

.method static synthetic access$400(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector;->mAvrcpCtPLayerUtility:Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;

    return-object p0
.end method

.method static synthetic access$402(Lcom/autochips/bluetooth/BluetoothEventRedirector;Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;)Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector;->mAvrcpCtPLayerUtility:Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;

    return-object p1
.end method

.method static synthetic access$500(Lcom/autochips/bluetooth/BluetoothEventRedirector;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->persistDiscoveringTimestamp()V

    return-void
.end method

.method static synthetic access$600(Lcom/autochips/bluetooth/BluetoothEventRedirector;Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->getDockedDeviceAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Z
    .locals 0

    .line 70
    iget-boolean p0, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector;->mIsA2DPEnable:Z

    return p0
.end method

.method private getDockedDeviceAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 497
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const-string v2, "android.intent.extra.DOCK_STATE"

    .line 500
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.bluetooth.device.extra.DEVICE"

    .line 503
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_0

    .line 506
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v1
.end method

.method private persistDiscoveringTimestamp()V
    .locals 4

    .line 514
    iget-object v0, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector;->mManager:Lcom/autochips/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/LocalBluetoothManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 516
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "last_discovering_time"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 519
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public resetA2dpAudio(Z)V
    .locals 3

    .line 475
    iget-boolean v0, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector;->mIsA2DPEnable:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 477
    :cond_0
    iput-boolean p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector;->mIsA2DPEnable:Z

    const/16 v0, 0xf

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 480
    iget-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector;->mAvrcpCtPlayerManage:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->getA2dpSinkStateValue()I

    move-result p1

    if-ne p1, v0, :cond_2

    .line 482
    iget-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector;->mAvrcpCtPlayerManage:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;

    invoke-virtual {p1, v1, v2}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->resetAudio(II)I

    goto :goto_0

    .line 485
    :cond_1
    iget-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector;->mAvrcpCtPlayerManage:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->getA2dpAudioStatus()I

    move-result p1

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector;->mAvrcpCtPlayerManage:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;

    invoke-virtual {p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->getA2dpSinkStateValue()I

    move-result p1

    if-ne p1, v0, :cond_2

    .line 488
    iget-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector;->mAvrcpCtPlayerManage:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;

    invoke-virtual {p1, v2, v2}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->resetAudio(II)I

    :cond_2
    :goto_0
    return-void
.end method

.method public start()V
    .locals 3

    .line 421
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 424
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    .line 429
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    .line 430
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.DISAPPEARED"

    .line 431
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.FOUND"

    .line 432
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.NAME_CHANGED"

    .line 433
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    .line 436
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.PAIRING_CANCEL"

    .line 437
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.profilemanager.action.STATE_CHANGED"

    .line 442
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.CLASS_CHANGED"

    .line 443
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.UUID"

    .line 444
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.DOCK_EVENT"

    .line 448
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.profilemanager.action.PROFILE_CHANGED"

    .line 450
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.autochips.bluetooth.hf.BluetoothHfAtHandler.action.CALLSETUP_STATE_CHANGED"

    .line 451
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.autochips.bluetooth.hf.BluetoothHfAtHandler.action.CALL_STATE_CHANGED"

    .line 452
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.autochips.bluetooth.hf.BluetoothHfAtHandler.action.PHONE_NUMBER_CHANGED"

    .line 453
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.autochips.bluetooth.BtDialPadActivity.action.BLUETOOTH_HF_CONNECT_FINISH"

    .line 454
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.action.GET_ELEMENT_ATTRIBUTES"

    .line 458
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.action.GET_PLAYER_STATUS"

    .line 459
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.action.REG_NOTIFICATION_STATUS_CHANGED"

    .line 460
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.action.REG_NOTIFICATION_POS_CHANGED"

    .line 461
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.action.REG_NOTIFICATION_TRACK_CHANGED"

    .line 462
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.action.PASSTHROUGH_COMMAND_CNF"

    .line 463
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.action.REG_NOTIFICATION_ERROR"

    .line 464
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.action.GET_CAPABILITY_CNF"

    .line 465
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 467
    iget-object v1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector;->mManager:Lcom/autochips/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/autochips/bluetooth/LocalBluetoothManager;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public stop()V
    .locals 2

    .line 471
    iget-object v0, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector;->mManager:Lcom/autochips/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/LocalBluetoothManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
