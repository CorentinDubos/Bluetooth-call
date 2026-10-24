.class public Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;
.super Landroid/app/Service;
.source "BluetoothDunDtService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$DunSocketListener;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final DUN_CONNECT_SUCCESS:I = 0x0

.field private static final DUN_DT_ABORT_CNF:I = 0x15f98

.field private static final DUN_DT_CONNECT_CNF:I = 0x15f92

.field private static final DUN_DT_DISABLE_CNF:I = 0x15f95

.field private static final DUN_DT_DISCONNECT_CNF:I = 0x15f93

.field private static final DUN_DT_DISCONNECT_IND:I = 0x15f94

.field private static final DUN_DT_ENABLE_CNF:I = 0x15f91

.field private static final DUN_DT_GET_DATA_CNF:I = 0x15f97

.field private static final DUN_DT_SEND_DATA_CNF:I = 0x15f96

.field private static final DUN_ENABLE_SUCCESS:I = 0x1

.field private static final DUN_STATE_DISCONNECT:I = -0x2

.field private static final DUN_STATUS_FAIL:I = -0x1

.field private static final TAG:Ljava/lang/String; = "BluetoothDunDtSevice"


# instance fields
.field mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field mAtCmd:Ljava/lang/String;

.field private mCallbacks:Landroid/os/RemoteCallbackList;

.field private final mDunDtCtrl:Landroid/bluetooth/IBluetoothDunDt$Stub;

.field private mDunDtState:I

.field private mDunListener:Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$DunSocketListener;

.field private mDunServiceHandler:Landroid/os/Handler;

.field private mNativeData:I

.field mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

.field response:Ljava/lang/StringBuilder;

.field sb:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 60
    sget-boolean v0, Lcom/autochips/bluetooth/BtEmulatorDebug;->mDebugAll:Z

    sget-boolean v1, Lcom/autochips/bluetooth/BtEmulatorDebug;->mDebugSMS:Z

    and-int/2addr v0, v1

    sput-boolean v0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->DEBUG:Z

    const-string v0, "extdundt_jni"

    .line 98
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 99
    invoke-static {}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->classInitNative()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, -0x2

    .line 78
    iput v0, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->mDunDtState:I

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 84
    iput-object v0, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 86
    iput-object v0, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->mAtCmd:Ljava/lang/String;

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->sb:Ljava/lang/StringBuilder;

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->response:Ljava/lang/StringBuilder;

    .line 93
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 116
    new-instance v0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$1;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$1;-><init>(Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->mDunServiceHandler:Landroid/os/Handler;

    .line 271
    new-instance v0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$2;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$2;-><init>(Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->mDunDtCtrl:Landroid/bluetooth/IBluetoothDunDt$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;Ljava/lang/String;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->printLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;Z)Z
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->listenIndicationNative(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;I)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->broadcastDunState(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;Ljava/lang/String;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->errorLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;Z)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->notifyConnect(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;Ljava/lang/String;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->notifyGetData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;Z)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->notifyDisConnect(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;)Landroid/os/RemoteCallbackList;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->mCallbacks:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method static synthetic access$800(Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;)I
    .locals 0

    .line 58
    iget p0, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->mDunDtState:I

    return p0
.end method

.method private broadcastDunState(I)V
    .locals 3

    .line 188
    iput p1, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->mDunDtState:I

    .line 190
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.profilemanager.action.PROFILE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 191
    sget-object v1, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_DUN_DT:Landroid/bluetooth/BluetoothProfileManager$Profile;

    const-string v2, "android.bluetooth.profilemanager.extra.PROFILE"

    .line 192
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 193
    invoke-static {}, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;->values()[Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    move-result-object v2

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothProfileManager$Profile;->ordinal()I

    move-result v1

    aget-object v1, v2, v1

    const-string v2, "android.bluetooth.profilemanager.extra.ATCPROFILE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "android.bluetooth.profilemanager.extra.EXTRA_NEW_STATE"

    .line 194
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "android.permission.BLUETOOTH"

    .line 195
    invoke-virtual {p0, v0, p1}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNativeDataNative()V
.end method

.method private native dunConnectNative(Ljava/lang/String;)Z
.end method

.method private static native dunDialupRspNative(Ljava/lang/String;I)V
.end method

.method private native dunDisableNative()V
.end method

.method private native dunDisconnectNative()V
.end method

.method private native dunEnableNative()Z
.end method

.method private errorLog(Ljava/lang/String;)V
    .locals 1

    .line 453
    sget-boolean v0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothDunDtSevice"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private native initializeNativeDataNative()V
.end method

.method private native listenIndicationNative(Z)Z
.end method

.method private notifyConnect(Z)V
    .locals 3

    .line 231
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 234
    :try_start_0
    iget-object v2, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/IDunCallback;

    invoke-interface {v2, p1}, Landroid/bluetooth/IDunCallback;->notifyConnect(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothDunDtSevice"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_0
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method private notifyDisConnect(Z)V
    .locals 3

    .line 246
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 249
    :try_start_0
    iget-object v2, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/IDunCallback;

    invoke-interface {v2, p1}, Landroid/bluetooth/IDunCallback;->notifyDisConnect(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothDunDtSevice"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_0
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method private notifyGetData(Ljava/lang/String;)V
    .locals 3

    .line 259
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 262
    :try_start_0
    iget-object v2, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/IDunCallback;

    invoke-interface {v2, p1}, Landroid/bluetooth/IDunCallback;->notifyGetData(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothDunDtSevice"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_0
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method private onDunConnectCnf(I)V
    .locals 1

    .line 407
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const v0, 0x15f92

    invoke-direct {p0, v0, p1}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->sendDunServiceMsg(ILjava/lang/Object;)V

    return-void
.end method

.method private onDunDisableCnf(I)V
    .locals 1

    .line 429
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const v0, 0x15f95

    invoke-direct {p0, v0, p1}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->sendDunServiceMsg(ILjava/lang/Object;)V

    return-void
.end method

.method private onDunDisconnectCnf(I)V
    .locals 1

    .line 421
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const v0, 0x15f93

    invoke-direct {p0, v0, p1}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->sendDunServiceMsg(ILjava/lang/Object;)V

    return-void
.end method

.method private onDunDisconnectInd()V
    .locals 2

    const v0, 0x15f94

    const/4 v1, 0x0

    .line 425
    invoke-direct {p0, v0, v1}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->sendDunServiceMsg(ILjava/lang/Object;)V

    return-void
.end method

.method private onDunEnableCnf(II)V
    .locals 0

    .line 403
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const p2, 0x15f91

    invoke-direct {p0, p2, p1}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->sendDunServiceMsg(ILjava/lang/Object;)V

    return-void
.end method

.method private onDunGetDataCnf(Ljava/lang/String;)V
    .locals 1

    const-string v0, "+onDunGetDataCnf"

    .line 415
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->printLog(Ljava/lang/String;)V

    const v0, 0x15f97

    .line 416
    invoke-direct {p0, v0, p1}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->sendDunServiceMsg(ILjava/lang/Object;)V

    const-string p1, "-onDunGetDataCnf"

    .line 417
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->printLog(Ljava/lang/String;)V

    return-void
.end method

.method private onDunSendDataCnf(I)V
    .locals 1

    .line 411
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const v0, 0x15f96

    invoke-direct {p0, v0, p1}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->sendDunServiceMsg(ILjava/lang/Object;)V

    return-void
.end method

.method private printLog(Ljava/lang/String;)V
    .locals 1

    .line 449
    sget-boolean v0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothDunDtSevice"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private sendDunServiceMsg(ILjava/lang/Object;)V
    .locals 2

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[API] sendDunServiceMsg("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->printLog(Ljava/lang/String;)V

    .line 460
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->mDunServiceHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 461
    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 462
    iput p1, v0, Landroid/os/Message;->what:I

    .line 463
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 464
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->mDunServiceHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    const-string p1, "mDunServiceHandler is null"

    .line 467
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->printLog(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private native wakeupListenerNative()V
.end method


# virtual methods
.method public bluetoothDunDtDisable()Z
    .locals 4

    const-string v0, "[API] bluetoothDunDtDisable"

    .line 376
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->printLog(Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->mDunListener:Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$DunSocketListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 378
    iput-boolean v1, v0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$DunSocketListener;->mDunStopListen:Z

    .line 379
    invoke-direct {p0}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->wakeupListenerNative()V

    .line 381
    :try_start_0
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->mDunListener:Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$DunSocketListener;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$DunSocketListener;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 383
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mListener colose error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->errorLog(Ljava/lang/String;)V

    .line 385
    :goto_0
    invoke-direct {p0}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->dunDisableNative()V

    :cond_0
    const-string v0, "DUN client is not enabled yet"

    .line 387
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->printLog(Ljava/lang/String;)V

    return v1
.end method

.method public bluetoothDunDtEnable()Z
    .locals 3

    const-string v0, "[API] bluetoothDunDtEnable"

    .line 352
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->printLog(Ljava/lang/String;)V

    .line 354
    new-instance v0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$DunSocketListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$DunSocketListener;-><init>(Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$1;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->mDunListener:Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$DunSocketListener;

    .line 356
    invoke-direct {p0}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->dunEnableNative()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->mDunListener:Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$DunSocketListener;

    iput-boolean v2, v0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$DunSocketListener;->mDunStopListen:Z

    .line 358
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->mDunListener:Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$DunSocketListener;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$DunSocketListener;->start()V

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "bluetoothDunDtEnable failed"

    .line 361
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->errorLog(Ljava/lang/String;)V

    .line 362
    iput-object v1, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->mDunListener:Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$DunSocketListener;

    :goto_0
    return v2
.end method

.method connectDunDevice(Ljava/lang/String;)Z
    .locals 2

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[API] connectDunDevice ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->printLog(Ljava/lang/String;)V

    .line 393
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->dunConnectNative(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method disconnectDunDevice()V
    .locals 1

    const-string v0, "[API] disconnectDunDevice"

    .line 397
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->printLog(Ljava/lang/String;)V

    .line 398
    invoke-direct {p0}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->dunDisconnectNative()V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .line 337
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBind() action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->printLog(Ljava/lang/String;)V

    .line 339
    const-class v0, Landroid/bluetooth/IBluetoothDunDt;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "onBind() mDunDtCtrl "

    .line 340
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->printLog(Ljava/lang/String;)V

    .line 341
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->mDunDtCtrl:Landroid/bluetooth/IBluetoothDunDt$Stub;

    return-object p1

    :cond_0
    const-string p1, "onBind return null "

    .line 344
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->printLog(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    const-string v0, "onCreate"

    .line 201
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->printLog(Ljava/lang/String;)V

    const/16 v0, 0xa

    .line 203
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->broadcastDunState(I)V

    .line 205
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 207
    invoke-direct {p0}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->initializeNativeDataNative()V

    .line 209
    invoke-virtual {p0}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->bluetoothDunDtEnable()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "[ERR] DUN Enable fail"

    .line 211
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->errorLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 212
    iput-object v0, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 213
    invoke-virtual {p0}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->stopSelf()V

    const/16 v0, 0xe

    .line 214
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->broadcastDunState(I)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    const-string v0, "onDestroy"

    .line 221
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->printLog(Ljava/lang/String;)V

    const/16 v0, 0xc

    .line 222
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->broadcastDunState(I)V

    .line 223
    invoke-virtual {p0}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->bluetoothDunDtDisable()Z

    .line 224
    invoke-direct {p0}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->cleanupNativeDataNative()V

    const/16 v0, 0xd

    .line 225
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->broadcastDunState(I)V

    return-void
.end method

.method public sentAtCmd(Ljava/lang/String;)V
    .locals 2

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "before sendAtCmd"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->printLog(Ljava/lang/String;)V

    .line 369
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 370
    invoke-static {p1, v0}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->dunDialupRspNative(Ljava/lang/String;I)V

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "after sendAtCmd"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->printLog(Ljava/lang/String;)V

    return-void
.end method
