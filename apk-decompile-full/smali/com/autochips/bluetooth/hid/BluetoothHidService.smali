.class public Lcom/autochips/bluetooth/hid/BluetoothHidService;
.super Landroid/app/Service;
.source "BluetoothHidService.java"


# static fields
.field private static DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothHidService"


# instance fields
.field private addrConnected:Ljava/lang/String;

.field intent_hid_state:Landroid/content/Intent;

.field private final mHidBinder:Landroid/bluetooth/IBluetoothHid$Stub;

.field private mHidListener:Ljava/lang/Thread;

.field private final mHidUtilBinder:Lcom/autochips/bluetooth/hid/IBluetoothHidDeviceUtility$Stub;

.field private volatile mInterrupted:Z

.field private mNativeData:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "exthid_jni"

    .line 49
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-string v0, ""

    .line 42
    iput-object v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidService;->addrConnected:Ljava/lang/String;

    .line 46
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.profilemanager.action.PROFILE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidService;->intent_hid_state:Landroid/content/Intent;

    .line 129
    new-instance v0, Lcom/autochips/bluetooth/hid/BluetoothHidService$2;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/hid/BluetoothHidService$2;-><init>(Lcom/autochips/bluetooth/hid/BluetoothHidService;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidService;->mHidBinder:Landroid/bluetooth/IBluetoothHid$Stub;

    .line 195
    new-instance v0, Lcom/autochips/bluetooth/hid/BluetoothHidService$3;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/hid/BluetoothHidService$3;-><init>(Lcom/autochips/bluetooth/hid/BluetoothHidService;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidService;->mHidUtilBinder:Lcom/autochips/bluetooth/hid/IBluetoothHidDeviceUtility$Stub;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 36
    sget-boolean v0, Lcom/autochips/bluetooth/hid/BluetoothHidService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/autochips/bluetooth/hid/BluetoothHidService;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidService;->mInterrupted:Z

    return p0
.end method

.method static synthetic access$102(Lcom/autochips/bluetooth/hid/BluetoothHidService;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/autochips/bluetooth/hid/BluetoothHidService;->mInterrupted:Z

    return p1
.end method

.method static synthetic access$200(Lcom/autochips/bluetooth/hid/BluetoothHidService;)Z
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/autochips/bluetooth/hid/BluetoothHidService;->listentoSocketNative()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/autochips/bluetooth/hid/BluetoothHidService;)Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidService;->addrConnected:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/autochips/bluetooth/hid/BluetoothHidService;Ljava/lang/String;)Z
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/hid/BluetoothHidService;->deviceConnectReqNative(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/autochips/bluetooth/hid/BluetoothHidService;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/autochips/bluetooth/hid/BluetoothHidService;->deviceDisconnectReqNative()V

    return-void
.end method

.method static synthetic access$600(Lcom/autochips/bluetooth/hid/BluetoothHidService;I[B)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/autochips/bluetooth/hid/BluetoothHidService;->deviceSendInputReportNative(I[B)V

    return-void
.end method

.method private native cleanServiceNative()V
.end method

.method private native deviceActivateReqNative()V
.end method

.method private native deviceConnectReqNative(Ljava/lang/String;)Z
.end method

.method private native deviceDeactivateReqNative()V
.end method

.method private native deviceDisconnectReqNative()V
.end method

.method private native deviceSendInputReportNative(I[B)V
.end method

.method private native forceClearServerNative()V
.end method

.method private native initServiceNative()Z
.end method

.method private native listentoSocketNative()Z
.end method

.method private declared-synchronized onUpdateDeviceConnected(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 258
    :try_start_0
    sget-boolean v0, Lcom/autochips/bluetooth/hid/BluetoothHidService;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "BluetoothHidService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdateDeviceConnected. new address is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v2, "null"

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_1
    sget-boolean v0, Lcom/autochips/bluetooth/hid/BluetoothHidService;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "BluetoothHidService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdateDeviceConnected. old addrConnected is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/autochips/bluetooth/hid/BluetoothHidService;->addrConnected:Ljava/lang/String;

    if-nez v2, :cond_2

    const-string v2, "null"

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/autochips/bluetooth/hid/BluetoothHidService;->addrConnected:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz p1, :cond_6

    .line 260
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    .line 264
    :cond_4
    sget-boolean v0, Lcom/autochips/bluetooth/hid/BluetoothHidService;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "BluetoothHidService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connected  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_5
    iput-object p1, p0, Lcom/autochips/bluetooth/hid/BluetoothHidService;->addrConnected:Ljava/lang/String;

    goto :goto_3

    .line 261
    :cond_6
    :goto_2
    sget-boolean p1, Lcom/autochips/bluetooth/hid/BluetoothHidService;->DEBUG:Z

    if-eqz p1, :cond_7

    const-string p1, "BluetoothHidService"

    const-string v0, "disconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const-string p1, ""

    .line 262
    iput-object p1, p0, Lcom/autochips/bluetooth/hid/BluetoothHidService;->addrConnected:Ljava/lang/String;

    .line 267
    :goto_3
    iget-object p1, p0, Lcom/autochips/bluetooth/hid/BluetoothHidService;->intent_hid_state:Landroid/content/Intent;

    const-string v0, "android.bluetooth.profilemanager.extra.EXTRA_NEW_STATE"

    iget-object v1, p0, Lcom/autochips/bluetooth/hid/BluetoothHidService;->addrConnected:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x2

    goto :goto_4

    :cond_8
    const/4 v1, 0x1

    :goto_4
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 269
    iget-object p1, p0, Lcom/autochips/bluetooth/hid/BluetoothHidService;->intent_hid_state:Landroid/content/Intent;

    const-string v0, "android.bluetooth.profilemanager.extra.PROFILE"

    sget-object v1, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_HID:Landroid/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 270
    iget-object p1, p0, Lcom/autochips/bluetooth/hid/BluetoothHidService;->intent_hid_state:Landroid/content/Intent;

    const-string v0, "android.bluetooth.profilemanager.extra.ATCPROFILE"

    sget-object v1, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;->Bluetooth_HID:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 271
    iget-object p1, p0, Lcom/autochips/bluetooth/hid/BluetoothHidService;->intent_hid_state:Landroid/content/Intent;

    const-string v0, "android.permission.BLUETOOTH"

    invoke-virtual {p0, p1, v0}, Lcom/autochips/bluetooth/hid/BluetoothHidService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized startHidListenerThread()Z
    .locals 2

    monitor-enter p0

    .line 105
    :try_start_0
    sget-boolean v0, Lcom/autochips/bluetooth/hid/BluetoothHidService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothHidService"

    const-string v1, "[API] start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidService;->mHidListener:Ljava/lang/Thread;

    if-nez v0, :cond_1

    .line 108
    new-instance v0, Lcom/autochips/bluetooth/hid/BluetoothHidService$1;

    const-string v1, "BluetoothHidService"

    invoke-direct {v0, p0, v1}, Lcom/autochips/bluetooth/hid/BluetoothHidService$1;-><init>(Lcom/autochips/bluetooth/hid/BluetoothHidService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidService;->mHidListener:Ljava/lang/Thread;

    const/4 v0, 0x0

    .line 121
    iput-boolean v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidService;->mInterrupted:Z

    .line 122
    iget-object v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidService;->mHidListener:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    const/4 v0, 0x1

    .line 125
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private native stopListentoSocketNative()V
.end method

.method private native wakeupListenerNative()V
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .line 69
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 70
    sget-boolean v0, Lcom/autochips/bluetooth/hid/BluetoothHidService;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enter onBind(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothHidService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_0
    const-class v0, Landroid/bluetooth/IBluetoothHid;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 73
    iget-object p1, p0, Lcom/autochips/bluetooth/hid/BluetoothHidService;->mHidBinder:Landroid/bluetooth/IBluetoothHid$Stub;

    return-object p1

    .line 75
    :cond_1
    iget-object p1, p0, Lcom/autochips/bluetooth/hid/BluetoothHidService;->mHidUtilBinder:Lcom/autochips/bluetooth/hid/IBluetoothHidDeviceUtility$Stub;

    return-object p1
.end method

.method public onCreate()V
    .locals 3

    const-string v0, "BluetoothHidService"

    const-string v1, "Enter onCreate"

    .line 56
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-direct {p0}, Lcom/autochips/bluetooth/hid/BluetoothHidService;->initServiceNative()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/autochips/bluetooth/hid/BluetoothHidService;->startHidListenerThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidService;->intent_hid_state:Landroid/content/Intent;

    sget-object v1, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_HID:Landroid/bluetooth/BluetoothProfileManager$Profile;

    const-string v2, "android.bluetooth.profilemanager.extra.PROFILE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 59
    iget-object v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidService;->intent_hid_state:Landroid/content/Intent;

    sget-object v1, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;->Bluetooth_HID:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    const-string v2, "android.bluetooth.profilemanager.extra.ATCPROFILE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 60
    iget-object v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidService;->intent_hid_state:Landroid/content/Intent;

    const/16 v1, 0xb

    const-string v2, "android.bluetooth.profilemanager.extra.EXTRA_NEW_STATE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 61
    iget-object v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidService;->intent_hid_state:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/hid/BluetoothHidService;->sendBroadcast(Landroid/content/Intent;)V

    .line 63
    :cond_0
    invoke-direct {p0}, Lcom/autochips/bluetooth/hid/BluetoothHidService;->deviceActivateReqNative()V

    .line 64
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 81
    sget-boolean v0, Lcom/autochips/bluetooth/hid/BluetoothHidService;->DEBUG:Z

    const-string v1, "BluetoothHidService"

    if-eqz v0, :cond_0

    const-string v0, "onDestroy()"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidService;->mHidListener:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 83
    iput-boolean v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidService;->mInterrupted:Z

    .line 84
    invoke-direct {p0}, Lcom/autochips/bluetooth/hid/BluetoothHidService;->wakeupListenerNative()V

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidService;->mHidListener:Ljava/lang/Thread;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mHidListener exit error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/autochips/bluetooth/hid/BluetoothHidService;->stopListentoSocketNative()V

    .line 92
    invoke-direct {p0}, Lcom/autochips/bluetooth/hid/BluetoothHidService;->cleanServiceNative()V

    .line 93
    invoke-direct {p0}, Lcom/autochips/bluetooth/hid/BluetoothHidService;->forceClearServerNative()V

    .line 96
    iget-object v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidService;->intent_hid_state:Landroid/content/Intent;

    sget-object v1, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_HID:Landroid/bluetooth/BluetoothProfileManager$Profile;

    const-string v2, "android.bluetooth.profilemanager.extra.PROFILE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 97
    iget-object v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidService;->intent_hid_state:Landroid/content/Intent;

    sget-object v1, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;->Bluetooth_HID:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    const-string v2, "android.bluetooth.profilemanager.extra.ATCPROFILE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 98
    iget-object v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidService;->intent_hid_state:Landroid/content/Intent;

    const/16 v1, 0xd

    const-string v2, "android.bluetooth.profilemanager.extra.EXTRA_NEW_STATE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 99
    iget-object v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidService;->intent_hid_state:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/hid/BluetoothHidService;->sendBroadcast(Landroid/content/Intent;)V

    .line 101
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method
