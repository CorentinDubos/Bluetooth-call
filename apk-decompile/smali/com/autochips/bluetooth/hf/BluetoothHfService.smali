.class public Lcom/autochips/bluetooth/hf/BluetoothHfService;
.super Landroid/app/Service;
.source "BluetoothHfService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autochips/bluetooth/hf/BluetoothHfService$HfClientDeathHandler;,
        Lcom/autochips/bluetooth/hf/BluetoothHfService$actionTimeoutThread;
    }
.end annotation


# static fields
.field public static final ACTION_BLUETOOTH_HF_CONNECT_FINISH:Ljava/lang/String; = "com.autochips.bluetooth.BtDialPadActivity.action.BLUETOOTH_HF_CONNECT_FINISH"

.field public static final ACTION_SCO_STATE_CHANGED:Ljava/lang/String; = "com.autochips.bluetooth.BluetoothHfService.action.SCO_STATE_CHANGED"

.field public static final ACTION_SRVICE_CREATED:Ljava/lang/String; = "com.autochips.bluetooth.BluetoothHfService.action.SRVICE_CREATED"

.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field public static final BT_HF_STATE_AUDIO_RESET:I = 0x100

.field private static DEBUG:Z = false

.field public static final DIRECTION_INCOMING:I = 0x1

.field public static final DIRECTION_OUTGOING:I = 0x2

.field public static final EVENT_HF_SINK_AUDIO_RELEASE:I = 0x4

.field public static final EVENT_HF_SINK_AUDIO_REQUEST:I = 0x3

.field public static final EVENT_HF_SINK_SHUTDOWN:I = 0x2

.field public static final EVENT_HF_SINK_STARTED:I = 0x1

.field public static final EXTRA_BLUETOOTH_HF_CONNECTING_RESULT:Ljava/lang/String; = "com.autochips.bluetooth.BtDialPadActivity.extra.EXTRA_BLUETOOTH_HF_CONNECTING_RESULT"

.field public static final EXTRA_NEW_SCO_STATE:Ljava/lang/String; = "com.autochips.bluetooth.BluetoothHfService.extra.EXTRA_NEW_SCO_STATE"

.field public static final HFP_CONTEXT:I = 0x1

.field static final HF_SCO_CONNECTED:I = 0x1

.field static final HF_SCO_DISCONNECTED:I = 0x0

.field public static final HSP_CONTEXT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BluetoothHfService"

.field private static final auto_accept_hf_connection:Z = true

.field private static sAtInputCount:I


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAtBuf:[Ljava/lang/String;

.field private mBufCount:I

.field private volatile mConnectInterrupted:Z

.field private mConnectTimeout:Lcom/autochips/bluetooth/hf/BluetoothHfService$actionTimeoutThread;

.field private mConnectType:I

.field private mCurrentRemoteDevice:Landroid/bluetooth/BluetoothDevice;

.field private mDirection:I

.field private mDisconnectTimeout:Lcom/autochips/bluetooth/hf/BluetoothHfService$actionTimeoutThread;

.field private mHandsfreeDevice:Landroid/bluetooth/BluetoothDevice;

.field private mHfAtHandler:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

.field protected mHfAtParser:Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;

.field private final mHfBinder:Landroid/bluetooth/IBluetoothHf$Stub;

.field private mHfConnectThead:Ljava/lang/Thread;

.field mHfConnect_finish_intent:Landroid/content/Intent;

.field private mHfListener:Ljava/lang/Thread;

.field private final mHfServerNotify:Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify$Stub;

.field private volatile mInterrupted:Z

.field private mIsAudioEnable:Z

.field private mIsConnected:Z

.field private mIsStartEvent:Z

.field private mNativeData:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSCOCBM:Landroid/cbm/CBManager;

.field private mSCOCBMActionListener:Landroid/cbm/CBManager$OnActionListener;

.field private mSCOConnected:Z

.field private mScoState:I

.field private mServerState:I

.field private mServiceHandler:Landroid/os/Handler;

.field private reconnectSuggestion:Z

.field sco_state_intent:Landroid/content/Intent;

.field stateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field update_state_intent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 67
    sget-boolean v0, Lcom/autochips/bluetooth/BtEmulatorDebug;->mDebugAll:Z

    sget-boolean v1, Lcom/autochips/bluetooth/BtEmulatorDebug;->mDebugHF:Z

    and-int/2addr v0, v1

    sput-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->DEBUG:Z

    const-string v0, "exthf_jni"

    .line 92
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 123
    sput v0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->sAtInputCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 64
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 108
    iput-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mAtBuf:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 120
    iput-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mSCOCBM:Landroid/cbm/CBManager;

    const/4 v1, 0x0

    .line 121
    iput-boolean v1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mIsAudioEnable:Z

    .line 129
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->stateMap:Ljava/util/Map;

    .line 133
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.bluetooth.profilemanager.action.PROFILE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->update_state_intent:Landroid/content/Intent;

    .line 134
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.autochips.bluetooth.BluetoothHfService.action.SCO_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->sco_state_intent:Landroid/content/Intent;

    .line 135
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.autochips.bluetooth.BtDialPadActivity.action.BLUETOOTH_HF_CONNECT_FINISH"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mHfConnect_finish_intent:Landroid/content/Intent;

    .line 140
    iput-boolean v1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->reconnectSuggestion:Z

    .line 142
    iput v1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mConnectType:I

    .line 232
    iput-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mConnectTimeout:Lcom/autochips/bluetooth/hf/BluetoothHfService$actionTimeoutThread;

    .line 233
    iput-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mDisconnectTimeout:Lcom/autochips/bluetooth/hf/BluetoothHfService$actionTimeoutThread;

    .line 294
    new-instance v0, Lcom/autochips/bluetooth/hf/BluetoothHfService$2;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/hf/BluetoothHfService$2;-><init>(Lcom/autochips/bluetooth/hf/BluetoothHfService;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mHfBinder:Landroid/bluetooth/IBluetoothHf$Stub;

    .line 518
    new-instance v0, Lcom/autochips/bluetooth/hf/BluetoothHfService$3;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/hf/BluetoothHfService$3;-><init>(Lcom/autochips/bluetooth/hf/BluetoothHfService;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mHfServerNotify:Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify$Stub;

    .line 736
    new-instance v0, Lcom/autochips/bluetooth/hf/BluetoothHfService$4;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/hf/BluetoothHfService$4;-><init>(Lcom/autochips/bluetooth/hf/BluetoothHfService;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mServiceHandler:Landroid/os/Handler;

    .line 827
    new-instance v0, Lcom/autochips/bluetooth/hf/BluetoothHfService$5;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/hf/BluetoothHfService$5;-><init>(Lcom/autochips/bluetooth/hf/BluetoothHfService;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 903
    new-instance v0, Lcom/autochips/bluetooth/hf/BluetoothHfService$6;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/hf/BluetoothHfService$6;-><init>(Lcom/autochips/bluetooth/hf/BluetoothHfService;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mSCOCBMActionListener:Landroid/cbm/CBManager$OnActionListener;

    return-void
.end method

.method private native acceptHandsfreeConnectionNative()I
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 64
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/autochips/bluetooth/hf/BluetoothHfService;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mInterrupted:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/autochips/bluetooth/hf/BluetoothHfService;)I
    .locals 0

    .line 64
    iget p0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mScoState:I

    return p0
.end method

.method static synthetic access$1002(Lcom/autochips/bluetooth/hf/BluetoothHfService;I)I
    .locals 0

    .line 64
    iput p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mScoState:I

    return p1
.end method

.method static synthetic access$102(Lcom/autochips/bluetooth/hf/BluetoothHfService;Z)Z
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mInterrupted:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/autochips/bluetooth/hf/BluetoothHfService;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->closeHandsfreeAudioNative()V

    return-void
.end method

.method static synthetic access$1200(Lcom/autochips/bluetooth/hf/BluetoothHfService;)Z
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->connectHandsfreeAudioNative()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/autochips/bluetooth/hf/BluetoothHfService;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->reconnectSuggestion:Z

    return p0
.end method

.method static synthetic access$1402(Lcom/autochips/bluetooth/hf/BluetoothHfService;I)I
    .locals 0

    .line 64
    iput p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mServerState:I

    return p1
.end method

.method static synthetic access$1500(Lcom/autochips/bluetooth/hf/BluetoothHfService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->updateDeviceState(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/autochips/bluetooth/hf/BluetoothHfService;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->killConnetTimeoutThread()V

    return-void
.end method

.method static synthetic access$1700(Lcom/autochips/bluetooth/hf/BluetoothHfService;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->killDisconnetTimeoutThread()V

    return-void
.end method

.method static synthetic access$1800(Lcom/autochips/bluetooth/hf/BluetoothHfService;Z)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->setEnableSCOAudioNative(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/autochips/bluetooth/hf/BluetoothHfService;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mIsAudioEnable:Z

    return p0
.end method

.method static synthetic access$200(Lcom/autochips/bluetooth/hf/BluetoothHfService;)Z
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->waitForHandsfreeSinkIndicationNative()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2000(Lcom/autochips/bluetooth/hf/BluetoothHfService;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mHandsfreeDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/autochips/bluetooth/hf/BluetoothHfService;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mConnectInterrupted:Z

    return p0
.end method

.method static synthetic access$2102(Lcom/autochips/bluetooth/hf/BluetoothHfService;Z)Z
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mConnectInterrupted:Z

    return p1
.end method

.method static synthetic access$300(Lcom/autochips/bluetooth/hf/BluetoothHfService;)Landroid/bluetooth/BluetoothAdapter;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object p0
.end method

.method static synthetic access$402(Lcom/autochips/bluetooth/hf/BluetoothHfService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mCurrentRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$500(Lcom/autochips/bluetooth/hf/BluetoothHfService;Ljava/lang/String;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->connectHfDevice(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/autochips/bluetooth/hf/BluetoothHfService;Ljava/lang/String;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->disconnectHfDevice(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/autochips/bluetooth/hf/BluetoothHfService;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mIsConnected:Z

    return p0
.end method

.method static synthetic access$800(Lcom/autochips/bluetooth/hf/BluetoothHfService;)I
    .locals 0

    .line 64
    iget p0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mConnectType:I

    return p0
.end method

.method static synthetic access$900(Lcom/autochips/bluetooth/hf/BluetoothHfService;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mSCOConnected:Z

    return p0
.end method

.method private native classInitHandsfreeNative()V
.end method

.method private native cleanupHandsfreeNativeDataNative()V
.end method

.method private native closeHandsfreeAudioNative()V
.end method

.method private native connectHandsfreeAudioNative()Z
.end method

.method private native connectHandsfreeNative(Ljava/lang/String;I)I
.end method

.method private connectHfDevice(Ljava/lang/String;)V
    .locals 3

    .line 264
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->DEBUG:Z

    const-string v1, "BluetoothHfService"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectHfDevice"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x2

    .line 265
    iput v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mDirection:I

    const/4 v0, 0x3

    .line 266
    iput v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mServerState:I

    const-string v0, "connecting"

    .line 267
    invoke-direct {p0, p1, v0}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->updateDeviceState(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->getBluetoothDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->updateSettingsState(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V

    const/4 v0, 0x1

    .line 269
    invoke-direct {p0, p1, v0}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->connectHandsfreeNative(Ljava/lang/String;I)I

    move-result p1

    if-gez p1, :cond_1

    .line 271
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectHandsfreeNative failure ,return value is"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private native disconnectHandsfreeNative()V
.end method

.method private disconnectHfDevice(Ljava/lang/String;)V
    .locals 3

    .line 276
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->stateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 277
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->DEBUG:Z

    const-string v1, "BluetoothHfService"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnectHfDevice address = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->stateMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->stateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "connected"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    .line 279
    iput v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mServerState:I

    const-string v0, "disconnecting"

    .line 280
    invoke-direct {p0, p1, v0}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->updateDeviceState(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->getBluetoothDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->updateSettingsState(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V

    .line 282
    invoke-direct {p0}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->disconnectHandsfreeNative()V

    goto :goto_0

    .line 284
    :cond_1
    sget-boolean p1, Lcom/autochips/bluetooth/hf/BluetoothHfService;->DEBUG:Z

    if-eqz p1, :cond_2

    const-string p1, "error state to disconnect"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method private getBluetoothDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 820
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    return-object p1
.end method

.method private getCurrentDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 824
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mCurrentRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method private getState(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 399
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->stateMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->stateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 402
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->stateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v1
.end method

.method private native initializeHandsfreeNativeDataNative()V
.end method

.method private killConnetTimeoutThread()V
    .locals 2

    const-string v0, "BluetoothHfService"

    .line 236
    iget-object v1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mConnectTimeout:Lcom/autochips/bluetooth/hf/BluetoothHfService$actionTimeoutThread;

    if-eqz v1, :cond_1

    .line 238
    :try_start_0
    sget-boolean v1, Lcom/autochips/bluetooth/hf/BluetoothHfService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "mConnectTimeout close."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_0
    iget-object v1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mConnectTimeout:Lcom/autochips/bluetooth/hf/BluetoothHfService$actionTimeoutThread;

    invoke-virtual {v1}, Lcom/autochips/bluetooth/hf/BluetoothHfService$actionTimeoutThread;->shutdown()V

    .line 240
    iget-object v1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mConnectTimeout:Lcom/autochips/bluetooth/hf/BluetoothHfService$actionTimeoutThread;

    invoke-virtual {v1}, Lcom/autochips/bluetooth/hf/BluetoothHfService$actionTimeoutThread;->join()V

    const/4 v1, 0x0

    .line 241
    iput-object v1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mConnectTimeout:Lcom/autochips/bluetooth/hf/BluetoothHfService$actionTimeoutThread;

    .line 242
    sget-boolean v1, Lcom/autochips/bluetooth/hf/BluetoothHfService;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "mConnectTimeout close OK."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 244
    :catch_0
    sget-boolean v1, Lcom/autochips/bluetooth/hf/BluetoothHfService;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "mConnectTimeout close error."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private killDisconnetTimeoutThread()V
    .locals 2

    const-string v0, "BluetoothHfService"

    .line 250
    iget-object v1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mDisconnectTimeout:Lcom/autochips/bluetooth/hf/BluetoothHfService$actionTimeoutThread;

    if-eqz v1, :cond_1

    .line 252
    :try_start_0
    sget-boolean v1, Lcom/autochips/bluetooth/hf/BluetoothHfService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "mDisconnectTimeout close."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_0
    iget-object v1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mDisconnectTimeout:Lcom/autochips/bluetooth/hf/BluetoothHfService$actionTimeoutThread;

    invoke-virtual {v1}, Lcom/autochips/bluetooth/hf/BluetoothHfService$actionTimeoutThread;->shutdown()V

    .line 254
    iget-object v1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mDisconnectTimeout:Lcom/autochips/bluetooth/hf/BluetoothHfService$actionTimeoutThread;

    invoke-virtual {v1}, Lcom/autochips/bluetooth/hf/BluetoothHfService$actionTimeoutThread;->join()V

    const/4 v1, 0x0

    .line 255
    iput-object v1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mDisconnectTimeout:Lcom/autochips/bluetooth/hf/BluetoothHfService$actionTimeoutThread;

    .line 256
    sget-boolean v1, Lcom/autochips/bluetooth/hf/BluetoothHfService;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "mDisconnectTimeout close OK."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 258
    :catch_0
    sget-boolean v1, Lcom/autochips/bluetooth/hf/BluetoothHfService;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "mDisconnectTimeout close error."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private declared-synchronized onHfConnectRequest(Ljava/lang/String;I)V
    .locals 3

    monitor-enter p0

    .line 1014
    :try_start_0
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothHfService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[API] onConnectRequest("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    .line 1015
    iput v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mDirection:I

    .line 1016
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mHandsfreeDevice:Landroid/bluetooth/BluetoothDevice;

    .line 1018
    iput p2, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mConnectType:I

    .line 1019
    invoke-direct {p0}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->acceptHandsfreeConnectionNative()I

    const-string p2, "connecting"

    .line 1023
    invoke-direct {p0, p1, p2}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->updateDeviceState(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1024
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized onHfConnected(Ljava/lang/String;I)V
    .locals 3

    monitor-enter p0

    .line 1029
    :try_start_0
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothHfService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[API] onConnected("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    :cond_0
    iput p2, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mConnectType:I

    .line 1033
    invoke-virtual {p0}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->startEventThread()V

    const/4 p2, 0x1

    .line 1034
    iput-boolean p2, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mIsConnected:Z

    .line 1035
    iget-object p2, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    iput-object p2, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mHandsfreeDevice:Landroid/bluetooth/BluetoothDevice;

    .line 1036
    iget-object p2, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mHfAtHandler:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-virtual {p2}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->initializeHfAtParser()V

    .line 1037
    invoke-direct {p0}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->startHfConnectThread()Z

    const-string p2, "connected"

    .line 1038
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->getBluetoothDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->updateSettingsState(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V

    const-string p2, "connected"

    .line 1039
    invoke-direct {p0, p1, p2}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->updateDeviceState(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1040
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized onHfDisconnected(Ljava/lang/String;I)V
    .locals 3

    monitor-enter p0

    .line 1043
    :try_start_0
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothHfService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[API] onDisconnected("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 1044
    iput v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mConnectType:I

    .line 1045
    iput v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mDirection:I

    .line 1046
    iput-boolean v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mIsStartEvent:Z

    .line 1047
    iput v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mBufCount:I

    const/4 v1, 0x0

    .line 1048
    iput-object v1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mHandsfreeDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    .line 1049
    :goto_0
    iput-boolean v1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->reconnectSuggestion:Z

    .line 1050
    iput-boolean v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mIsConnected:Z

    const-string p2, "disconnect"

    .line 1051
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->getBluetoothDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->updateSettingsState(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V

    const-string p2, "disconnect"

    .line 1052
    invoke-direct {p0, p1, p2}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->updateDeviceState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    iget-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mHfAtHandler:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-virtual {p1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->resetAtState()V

    .line 1054
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->IsHfRingTonePlaying()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1055
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->HfStopRingTone()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1058
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private onHfEvent(I)V
    .locals 2

    .line 1094
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[API] onEvent("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mBufCount"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mBufCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothHfService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    goto :goto_1

    .line 1098
    :cond_1
    iget p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mBufCount:I

    if-lez p1, :cond_2

    .line 1099
    :goto_0
    iget p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mBufCount:I

    if-lez p1, :cond_2

    .line 1100
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mAtBuf:[Ljava/lang/String;

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mBufCount:I

    aget-object p1, v0, p1

    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->handleInput(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private onHfPacketReceived(Ljava/lang/String;)V
    .locals 4

    .line 1080
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[API] onPacketReceived("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") : mIsStartEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mIsStartEvent:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothHfService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    iget-boolean v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mIsStartEvent:Z

    if-nez v0, :cond_1

    .line 1083
    iget v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mBufCount:I

    iget-object v2, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mAtBuf:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 1084
    iput v1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mBufCount:I

    aput-object p1, v2, v0

    goto :goto_0

    .line 1086
    :cond_0
    sget-boolean p1, Lcom/autochips/bluetooth/hf/BluetoothHfService;->DEBUG:Z

    if-eqz p1, :cond_2

    const-string p1, "[ERR] Run out of AtBuf capacity"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1089
    :cond_1
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->handleInput(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private declared-synchronized onHfSCOConnected()V
    .locals 3

    monitor-enter p0

    .line 1062
    :try_start_0
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothHfService"

    const-string v1, "[API] onSCOConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    .line 1063
    iput-boolean v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mSCOConnected:Z

    .line 1064
    iput v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mScoState:I

    .line 1065
    iget-object v1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->sco_state_intent:Landroid/content/Intent;

    const-string v2, "com.autochips.bluetooth.BluetoothHfService.extra.EXTRA_NEW_SCO_STATE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1066
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->sco_state_intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1068
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onHfSCODisconnected()V
    .locals 3

    monitor-enter p0

    .line 1071
    :try_start_0
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothHfService"

    const-string v1, "[API] onSCODisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 1072
    iput-boolean v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mSCOConnected:Z

    const/4 v1, 0x2

    .line 1073
    iput v1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mScoState:I

    .line 1074
    iget-object v1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->sco_state_intent:Landroid/content/Intent;

    const-string v2, "com.autochips.bluetooth.BluetoothHfService.extra.EXTRA_NEW_SCO_STATE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1075
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->sco_state_intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1076
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private printLog(Ljava/lang/String;)V
    .locals 1

    .line 714
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothHfService"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private native rejectHandsfreeConnectionNative()V
.end method

.method private resetScoAudio(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    const/16 v0, 0x100

    .line 957
    invoke-direct {p0, v0, p1}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->sendServiceMsg(ILjava/lang/String;)V

    return-void
.end method

.method private native sendHandsfreeURCNative(Ljava/lang/String;)Z
.end method

.method private sendServiceMsg(ILjava/lang/String;)V
    .locals 2

    .line 807
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 809
    iput p1, v0, Landroid/os/Message;->what:I

    .line 811
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "device_addr"

    .line 812
    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 815
    iget-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private native setEnableSCOAudioNative(Z)V
.end method

.method private native setHandsfreeEventNative(I)V
.end method

.method private native setUpHandsfreeListeningSocketsNative()Z
.end method

.method private declared-synchronized startHfConnectThread()Z
    .locals 2

    monitor-enter p0

    .line 983
    :try_start_0
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothHfService"

    const-string/jumbo v1, "startHfConnectThread start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    :cond_0
    new-instance v0, Lcom/autochips/bluetooth/hf/BluetoothHfService$7;

    const-string v1, "BluetoothHfService"

    invoke-direct {v0, p0, v1}, Lcom/autochips/bluetooth/hf/BluetoothHfService$7;-><init>(Lcom/autochips/bluetooth/hf/BluetoothHfService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mHfConnectThead:Ljava/lang/Thread;

    const/4 v0, 0x0

    .line 1003
    iput-boolean v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mConnectInterrupted:Z

    .line 1004
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mHfConnectThead:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 1005
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized startHfListenerThread()Z
    .locals 3

    monitor-enter p0

    .line 145
    :try_start_0
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothHfService"

    const-string v1, "[API] start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mHfListener:Ljava/lang/Thread;

    if-nez v0, :cond_3

    .line 148
    new-instance v0, Lcom/autochips/bluetooth/hf/BluetoothHfService$1;

    const-string v1, "BluetoothHfService"

    invoke-direct {v0, p0, v1}, Lcom/autochips/bluetooth/hf/BluetoothHfService$1;-><init>(Lcom/autochips/bluetooth/hf/BluetoothHfService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mHfListener:Ljava/lang/Thread;

    .line 170
    invoke-direct {p0}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->setUpHandsfreeListeningSocketsNative()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 171
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "BluetoothHfService"

    const-string v2, "Could not set up listening socket, exiting"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    :cond_1
    monitor-exit p0

    return v1

    .line 175
    :cond_2
    :try_start_1
    iput-boolean v1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mInterrupted:Z

    .line 176
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mHfListener:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    const/4 v0, 0x1

    .line 179
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private native tearDownHandsfreeListeningSocketsNative()V
.end method

.method private updateDeviceState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 718
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->stateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->stateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->stateMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_1

    return-void

    :cond_1
    const-string v0, "connected"

    .line 724
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p2, 0x1

    .line 725
    invoke-direct {p0, p2, p1}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->sendServiceMsg(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "disconnect"

    .line 726
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p2, 0x2

    .line 727
    invoke-direct {p0, p2, p1}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->sendServiceMsg(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "connecting"

    .line 728
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p2, 0x3

    .line 729
    invoke-direct {p0, p2, p1}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->sendServiceMsg(ILjava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "disconnecting"

    .line 730
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    const/4 p2, 0x4

    .line 731
    invoke-direct {p0, p2, p1}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->sendServiceMsg(ILjava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private updateSettingsState(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V
    .locals 7

    .line 373
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.profilemanager.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "connected"

    .line 374
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    const-string v3, "android.bluetooth.profilemanager.extra.EXTRA_NEW_STATE"

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    .line 375
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 376
    iget-object v1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1, p2, v4, v2, v4}, Landroid/bluetooth/BluetoothAdapter;->updateConnectionState(Landroid/bluetooth/BluetoothDevice;III)V

    goto :goto_0

    :cond_0
    const-string v1, "connecting"

    .line 378
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v5, 0x0

    const/4 v6, 0x3

    if-eqz v1, :cond_1

    .line 379
    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 380
    iget-object v1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1, p2, v4, v4, v5}, Landroid/bluetooth/BluetoothAdapter;->updateConnectionState(Landroid/bluetooth/BluetoothDevice;III)V

    goto :goto_0

    :cond_1
    const-string v1, "disconnect"

    .line 382
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 383
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 384
    iget-object v1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1, p2, v4, v5, v6}, Landroid/bluetooth/BluetoothAdapter;->updateConnectionState(Landroid/bluetooth/BluetoothDevice;III)V

    goto :goto_0

    :cond_2
    const-string v1, "disconnecting"

    .line 386
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    .line 387
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 388
    iget-object v1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1, p2, v4, v6, v2}, Landroid/bluetooth/BluetoothAdapter;->updateConnectionState(Landroid/bluetooth/BluetoothDevice;III)V

    :cond_3
    :goto_0
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    .line 390
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p2, -0x1

    const-string v1, "android.bluetooth.profilemanager.extra.EXTRA_PREVIOUS_STATE"

    .line 391
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 392
    sget-object p2, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_HF:Landroid/bluetooth/BluetoothProfileManager$Profile;

    const-string v1, "android.bluetooth.profilemanager.extra.PROFILE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 393
    sget-object p2, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;->Bluetooth_HF:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    const-string v1, "android.bluetooth.profilemanager.extra.ATCPROFILE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 394
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->sendBroadcast(Landroid/content/Intent;)V

    .line 395
    sget-boolean p2, Lcom/autochips/bluetooth/hf/BluetoothHfService;->DEBUG:Z

    if-eqz p2, :cond_4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "sendBroadcast:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BluetoothHfService"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method private native waitForHandsfreeAsyncConnectNative(Ljava/lang/String;II)I
.end method

.method private native waitForHandsfreeSinkIndicationNative()Z
.end method


# virtual methods
.method public getConnectType()I
    .locals 1

    .line 709
    iget v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mConnectType:I

    return v0
.end method

.method protected declared-synchronized handleInput(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 964
    :try_start_0
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothHfService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleInput: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    :cond_0
    sget v0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->sAtInputCount:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 969
    sput v0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->sAtInputCount:I

    goto :goto_0

    .line 971
    :cond_1
    sget v0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->sAtInputCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->sAtInputCount:I

    .line 975
    :goto_0
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mHfAtParser:Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->processHfAtCommands(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 977
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isHfConnected()Z
    .locals 1

    .line 705
    iget-boolean v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mIsConnected:Z

    return v0
.end method

.method localClearService()V
    .locals 3

    const/4 v0, 0x2

    .line 485
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->setHandsfreeEventNative(I)V

    .line 486
    invoke-direct {p0}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->killConnetTimeoutThread()V

    .line 487
    invoke-direct {p0}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->killDisconnetTimeoutThread()V

    .line 489
    iget-object v1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mHfListener:Ljava/lang/Thread;

    if-eqz v1, :cond_3

    .line 490
    sget-boolean v1, Lcom/autochips/bluetooth/hf/BluetoothHfService;->DEBUG:Z

    const-string v2, "BluetoothHfService"

    if-eqz v1, :cond_0

    const-string/jumbo v1, "stopping Connect Thread"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x1

    .line 491
    iput-boolean v1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mInterrupted:Z

    .line 493
    :try_start_0
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->setHandsfreeEventNative(I)V

    .line 494
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mHfListener:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 495
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "waiting for thread to terminate"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :cond_1
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mHfListener:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    const/4 v0, 0x0

    .line 497
    iput-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mHfListener:Ljava/lang/Thread;

    .line 501
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->IsHfRingTonePlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 502
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->HfStopRingTone()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 505
    :catch_0
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "Interrupted waiting for Connect Thread to join"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->update_state_intent:Landroid/content/Intent;

    const/16 v1, 0xd

    const-string v2, "android.bluetooth.profilemanager.extra.EXTRA_NEW_STATE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 510
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->update_state_intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v0, 0x6

    .line 511
    iput v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mServerState:I

    .line 514
    :cond_3
    invoke-direct {p0}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->tearDownHandsfreeListeningSocketsNative()V

    .line 515
    invoke-direct {p0}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->cleanupHandsfreeNativeDataNative()V

    return-void
.end method

.method localCreateService()V
    .locals 4

    .line 460
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->DEBUG:Z

    const-string v1, "BluetoothHfService"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "localCreateService mServerState = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mServerState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :cond_0
    iget v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mServerState:I

    if-eqz v0, :cond_2

    .line 463
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->update_state_intent:Landroid/content/Intent;

    sget-object v2, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_HF:Landroid/bluetooth/BluetoothProfileManager$Profile;

    const-string v3, "android.bluetooth.profilemanager.extra.PROFILE"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 464
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->update_state_intent:Landroid/content/Intent;

    sget-object v2, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;->Bluetooth_HF:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    const-string v3, "android.bluetooth.profilemanager.extra.ATCPROFILE"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 465
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->update_state_intent:Landroid/content/Intent;

    const/16 v2, 0xa

    const-string v3, "android.bluetooth.profilemanager.extra.EXTRA_NEW_STATE"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 466
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->update_state_intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->sendBroadcast(Landroid/content/Intent;)V

    .line 469
    invoke-direct {p0}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->classInitHandsfreeNative()V

    .line 470
    invoke-direct {p0}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->initializeHandsfreeNativeDataNative()V

    .line 472
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "start Hf Connect Thread"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :cond_1
    invoke-direct {p0}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->startHfListenerThread()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 475
    iput v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mServerState:I

    .line 476
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->update_state_intent:Landroid/content/Intent;

    const/16 v1, 0xb

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 477
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->update_state_intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .line 694
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 695
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enter onBind(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothHfService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    :cond_0
    const-class v0, Landroid/bluetooth/IBluetoothHf;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 698
    iget-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mHfBinder:Landroid/bluetooth/IBluetoothHf$Stub;

    return-object p1

    .line 700
    :cond_1
    iget-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mHfServerNotify:Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify$Stub;

    return-object p1
.end method

.method public onCreate()V
    .locals 3

    .line 411
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->DEBUG:Z

    const-string v1, "BluetoothHfService"

    if-eqz v0, :cond_0

    const-string v0, "Enter onCreate"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v0, 0x0

    .line 415
    iput-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mCurrentRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 416
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->stateMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x6

    .line 417
    iput v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mServerState:I

    const/4 v0, 0x0

    .line 418
    iput-boolean v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mSCOConnected:Z

    const/4 v0, 0x2

    .line 419
    iput v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mScoState:I

    .line 421
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    .line 422
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 423
    iget-object v2, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 425
    new-instance v0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-direct {v0, p0, p0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;-><init>(Landroid/content/Context;Lcom/autochips/bluetooth/hf/BluetoothHfService;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mHfAtHandler:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    .line 426
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->getAtParser()Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mHfAtParser:Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;

    .line 429
    new-instance v0, Landroid/cbm/CBManager;

    invoke-direct {v0}, Landroid/cbm/CBManager;-><init>()V

    iput-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mSCOCBM:Landroid/cbm/CBManager;

    if-eqz v0, :cond_1

    .line 431
    iget-object v2, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mSCOCBMActionListener:Landroid/cbm/CBManager$OnActionListener;

    invoke-virtual {v0, v2}, Landroid/cbm/CBManager;->setOnActionListener(Landroid/cbm/CBManager$OnActionListener;)V

    .line 435
    :cond_1
    invoke-virtual {p0}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->localCreateService()V

    .line 437
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 439
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "on create finish"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 445
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothHfService"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 447
    invoke-virtual {p0}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->localClearService()V

    const/4 v0, 0x0

    .line 448
    iput-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mCurrentRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 450
    iget-object v1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mSCOCBM:Landroid/cbm/CBManager;

    if-eqz v1, :cond_1

    .line 451
    invoke-virtual {v1}, Landroid/cbm/CBManager;->release()V

    .line 452
    iput-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mSCOCBM:Landroid/cbm/CBManager;

    const/4 v0, 0x0

    .line 453
    iput-boolean v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mIsAudioEnable:Z

    .line 456
    :cond_1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public requestCBMSCOEnable(Z)V
    .locals 5

    .line 863
    iget-boolean v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mIsAudioEnable:Z

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    if-ne p1, v1, :cond_0

    sget v0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mCall:I

    if-ne v0, v1, :cond_0

    .line 866
    invoke-direct {p0, v1}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->resetScoAudio(Z)V

    .line 868
    :cond_0
    iget-boolean v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mIsAudioEnable:Z

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_8

    .line 872
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p1

    .line 875
    :try_start_0
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mSCOCBM:Landroid/cbm/CBManager;

    const/4 v2, -0x1

    if-eqz v0, :cond_2

    .line 876
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mSCOCBM:Landroid/cbm/CBManager;

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1, p1}, Landroid/cbm/CBManager;->request(IILandroid/os/Parcel;)I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v2

    .line 878
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 880
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 882
    sget-boolean p1, Lcom/autochips/bluetooth/hf/BluetoothHfService;->DEBUG:Z

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSCOCBM.request return = "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v4, "BluetoothHfService"

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-ne v0, v2, :cond_4

    goto :goto_1

    :cond_4
    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    if-ne v3, v1, :cond_9

    .line 886
    sget p1, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mCall:I

    if-eq p1, v1, :cond_6

    sget p1, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mCallsetup:I

    if-eq p1, v1, :cond_7

    .line 889
    :cond_6
    invoke-direct {p0, v1}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->resetScoAudio(Z)V

    .line 892
    :cond_7
    iput-boolean v1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mIsAudioEnable:Z

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 880
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    throw v0

    :cond_8
    const/4 p1, 0x0

    .line 896
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->resetScoAudio(Z)V

    .line 897
    iput-boolean p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mIsAudioEnable:Z

    .line 898
    iget-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mSCOCBM:Landroid/cbm/CBManager;

    invoke-virtual {p1}, Landroid/cbm/CBManager;->release()V

    :cond_9
    :goto_1
    return-void
.end method

.method public declared-synchronized sendHfURC(Ljava/lang/String;)Z
    .locals 3

    monitor-enter p0

    .line 855
    :try_start_0
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothHfService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendURC: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 857
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->sendHandsfreeURCNative(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :cond_1
    const/4 p1, 0x0

    .line 859
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public startEventThread()V
    .locals 1

    const/4 v0, 0x1

    .line 849
    iput-boolean v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mIsStartEvent:Z

    .line 850
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->setHandsfreeEventNative(I)V

    return-void
.end method
