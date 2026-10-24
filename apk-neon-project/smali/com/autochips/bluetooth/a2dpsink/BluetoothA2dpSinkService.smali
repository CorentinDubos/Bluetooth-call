.class public Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;
.super Landroid/app/Service;
.source "BluetoothA2dpSinkService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService$A2dpSinkListener;
    }
.end annotation


# static fields
.field public static final ACTION_SERVICE_CREATED:Ljava/lang/String; = "com.autochips.bluetooth.a2dpsink.BluetoothA2dpSinkService.action.SERVICE_CREATED"

.field private static DEBUG:Z = false

.field private static final PROPERTY_STATE:Ljava/lang/String; = "State"

.field private static final TAG:Ljava/lang/String; = "BluetoothA2dpSinkService"

.field public static mA2dpSinkState:I

.field public static mA2dpSourceAddr:Ljava/lang/String;


# instance fields
.field private final mA2dpSinkCtrl:Landroid/bluetooth/IBluetoothA2dpSink$Stub;

.field private mA2dpSourceDevice:Landroid/bluetooth/BluetoothDevice;

.field private mListener:Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService$A2dpSinkListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mServiceHandler:Landroid/os/Handler;

.field service_create_intent:Landroid/content/Intent;

.field update_state_intent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 73
    sget-boolean v0, Lcom/autochips/bluetooth/BtEmulatorDebug;->mDebugAll:Z

    sget-boolean v1, Lcom/autochips/bluetooth/BtEmulatorDebug;->mDebugMusic:Z

    and-int/2addr v0, v1

    sput-boolean v0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->DEBUG:Z

    const/16 v0, 0xd

    .line 78
    sput v0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->mA2dpSinkState:I

    const/4 v0, 0x0

    .line 80
    sput-object v0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->mA2dpSourceAddr:Ljava/lang/String;

    const-string v0, "exta2dpsink_jni"

    .line 96
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 97
    invoke-static {}, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->classInitNative()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 70
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->mA2dpSourceDevice:Landroid/bluetooth/BluetoothDevice;

    .line 83
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.profilemanager.action.PROFILE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->update_state_intent:Landroid/content/Intent;

    .line 84
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.autochips.bluetooth.a2dpsink.BluetoothA2dpSinkService.action.SERVICE_CREATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->service_create_intent:Landroid/content/Intent;

    .line 115
    new-instance v0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService$1;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService$1;-><init>(Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 157
    new-instance v0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService$2;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService$2;-><init>(Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->mServiceHandler:Landroid/os/Handler;

    .line 227
    new-instance v0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService$3;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService$3;-><init>(Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->mA2dpSinkCtrl:Landroid/bluetooth/IBluetoothA2dpSink$Stub;

    return-void
.end method

.method private BluetoothA2dpSinkDisable()V
    .locals 1

    const-string v0, "BluetoothA2dpSinkDisable()"

    .line 418
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->printLog(Ljava/lang/String;)V

    .line 433
    invoke-direct {p0}, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->wakeupListenerNative()V

    .line 434
    invoke-direct {p0}, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->disableNative()V

    return-void
.end method

.method private BluetoothA2dpSinkEnable()Z
    .locals 1

    const-string v0, "BluetoothA2dpSinkEnable()"

    .line 405
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->printLog(Ljava/lang/String;)V

    .line 407
    invoke-direct {p0}, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->enableNative()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "enableNative send failed"

    .line 411
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->errorLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic access$000(Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;Ljava/lang/String;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->printLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;Z)Z
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->listenIndicationNative(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;Ljava/lang/String;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->errorLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->mA2dpSourceDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method static synthetic access$302(Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->mA2dpSourceDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$400(Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;)Landroid/bluetooth/IBluetoothA2dpSink$Stub;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->mA2dpSinkCtrl:Landroid/bluetooth/IBluetoothA2dpSink$Stub;

    return-object p0
.end method

.method static synthetic access$500(Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->getBluetoothDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    return-object p0
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNativeDataNative()V
.end method

.method private native connectNative(Ljava/lang/String;)Z
.end method

.method private convertBluezSinkStringtoState(Ljava/lang/String;)I
    .locals 1

    const-string v0, "disconnected"

    .line 512
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x2

    return p1

    :cond_0
    const-string v0, "connecting"

    .line 514
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x3

    return p1

    :cond_1
    const-string v0, "connected"

    .line 516
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const-string v0, "playing"

    .line 518
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 p1, 0xf

    return p1

    :cond_3
    const-string/jumbo v0, "suspend"

    .line 520
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 p1, 0x10

    return p1

    :cond_4
    const-string/jumbo v0, "standstill"

    .line 522
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/16 p1, 0x13

    return p1

    :cond_5
    const/4 p1, -0x1

    return p1
.end method

.method private native disableNative()V
.end method

.method private native disconnectNative(Ljava/lang/String;)V
.end method

.method private native enableNative()Z
.end method

.method private errorLog(Ljava/lang/String;)V
    .locals 1

    const-string v0, "BluetoothA2dpSinkService"

    .line 503
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getBluetoothDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 508
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    return-object p1
.end method

.method private native initializeNativeDataNative()V
.end method

.method private native listenIndicationNative(Z)Z
.end method

.method private onPropertyChanged(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 473
    aget-object v0, p2, v0

    .line 474
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "###"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->printLog(Ljava/lang/String;)V

    .line 475
    sput-object p1, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->mA2dpSourceAddr:Ljava/lang/String;

    .line 477
    iget-object v1, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->mA2dpSourceDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v1, :cond_0

    .line 478
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->getBluetoothDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iput-object v1, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->mA2dpSourceDevice:Landroid/bluetooth/BluetoothDevice;

    :cond_0
    const-string v1, "State"

    .line 481
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 482
    aget-object p2, p2, v0

    invoke-direct {p0, p2}, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->convertBluezSinkStringtoState(Ljava/lang/String;)I

    move-result p2

    .line 483
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 484
    iput p2, v0, Landroid/os/Message;->what:I

    .line 486
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v1, "device_addr"

    .line 487
    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 490
    iget-object p1, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method private printLog(Ljava/lang/String;)V
    .locals 1

    .line 499
    sget-boolean v0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothA2dpSinkService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private native setAudioStateNative(IZ)V
.end method

.method private native wakeupListenerNative()V
.end method


# virtual methods
.method public connectSource(Ljava/lang/String;)Z
    .locals 2

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectA2dpSource:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->printLog(Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 442
    sput v0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->mA2dpSinkState:I

    .line 443
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->connectNative(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "a2dpsinkservice:connectSource failure ,return value is"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->errorLog(Ljava/lang/String;)V

    :cond_0
    return p1
.end method

.method public disconnectSource(Ljava/lang/String;)V
    .locals 2

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disconnectA2dpSource:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->printLog(Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 452
    sput v0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->mA2dpSinkState:I

    .line 453
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->disconnectNative(Ljava/lang/String;)V

    return-void
.end method

.method localCreateService()V
    .locals 7

    .line 356
    sget v0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->mA2dpSinkState:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    .line 357
    iget-object v0, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->update_state_intent:Landroid/content/Intent;

    sget-object v2, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_A2DP_SINK:Landroid/bluetooth/BluetoothProfileManager$Profile;

    const-string v3, "android.bluetooth.profilemanager.extra.PROFILE"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 358
    iget-object v0, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->update_state_intent:Landroid/content/Intent;

    sget-object v2, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;->Bluetooth_A2DP_SINK:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    const-string v4, "android.bluetooth.profilemanager.extra.ATCPROFILE"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 359
    iget-object v0, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->update_state_intent:Landroid/content/Intent;

    const-string v2, "android.bluetooth.profilemanager.extra.EXTRA_NEW_STATE"

    const/16 v5, 0xa

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 360
    iget-object v0, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->update_state_intent:Landroid/content/Intent;

    const-string v6, "android.permission.BLUETOOTH"

    invoke-virtual {p0, v0, v6}, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 362
    invoke-direct {p0}, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->initializeNativeDataNative()V

    const-string v0, " start SocketListener"

    .line 364
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->printLog(Ljava/lang/String;)V

    .line 367
    sput v5, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->mA2dpSinkState:I

    .line 368
    invoke-direct {p0}, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->BluetoothA2dpSinkEnable()Z

    move-result v0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_0

    .line 369
    iget-object v0, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->update_state_intent:Landroid/content/Intent;

    sget-object v5, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_A2DP_SINK:Landroid/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 370
    iget-object v0, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->update_state_intent:Landroid/content/Intent;

    sget-object v3, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;->Bluetooth_A2DP_SINK:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 371
    iget-object v0, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->update_state_intent:Landroid/content/Intent;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 372
    iget-object v0, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->update_state_intent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v6}, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 373
    sput v1, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->mA2dpSinkState:I

    goto :goto_0

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->update_state_intent:Landroid/content/Intent;

    sget-object v1, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_A2DP_SINK:Landroid/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 376
    iget-object v0, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->update_state_intent:Landroid/content/Intent;

    sget-object v1, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;->Bluetooth_A2DP_SINK:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 377
    iget-object v0, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->update_state_intent:Landroid/content/Intent;

    const/16 v1, 0xe

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 378
    iget-object v0, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->update_state_intent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v6}, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const/16 v0, 0xd

    .line 379
    sput v0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->mA2dpSinkState:I

    :cond_1
    :goto_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .line 306
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enter onBind() action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->printLog(Ljava/lang/String;)V

    .line 308
    const-class v0, Landroid/bluetooth/IBluetoothA2dpSink;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Enter onBind() mA2dpSinkCtrl "

    .line 309
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->printLog(Ljava/lang/String;)V

    .line 310
    iget-object p1, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->mA2dpSinkCtrl:Landroid/bluetooth/IBluetoothA2dpSink$Stub;

    return-object p1

    :cond_0
    const-string p1, "Enter onBind return null "

    .line 313
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->printLog(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    const-string v0, "Enter bluetooth a2dpsink service onCreate()"

    .line 321
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->printLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 323
    iput-object v0, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->mA2dpSourceDevice:Landroid/bluetooth/BluetoothDevice;

    .line 325
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    .line 326
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.profilemanager.action.DISABLE_PROFILES"

    .line 327
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.action.ACTION_BTMUSIC_ACTION_MANAGE"

    .line 328
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 329
    iget-object v1, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v0, "call localCreateService"

    .line 331
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->printLog(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p0}, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->localCreateService()V

    .line 334
    iget-object v0, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->service_create_intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const-string v0, "onDestroy()"

    .line 339
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->printLog(Ljava/lang/String;)V

    .line 341
    invoke-direct {p0}, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->BluetoothA2dpSinkDisable()V

    .line 343
    iget-object v0, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->update_state_intent:Landroid/content/Intent;

    sget-object v1, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_A2DP_SINK:Landroid/bluetooth/BluetoothProfileManager$Profile;

    const-string v2, "android.bluetooth.profilemanager.extra.PROFILE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 344
    iget-object v0, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->update_state_intent:Landroid/content/Intent;

    sget-object v1, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;->Bluetooth_A2DP_SINK:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    const-string v2, "android.bluetooth.profilemanager.extra.ATCPROFILE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 345
    iget-object v0, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->update_state_intent:Landroid/content/Intent;

    const-string v1, "android.bluetooth.profilemanager.extra.EXTRA_NEW_STATE"

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 346
    iget-object v0, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->update_state_intent:Landroid/content/Intent;

    const-string v1, "android.permission.BLUETOOTH"

    invoke-virtual {p0, v0, v1}, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 347
    sput v2, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->mA2dpSinkState:I

    .line 349
    iget-object v0, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 350
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method
