.class public Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;
.super Ljava/lang/Object;
.source "BluetoothHfAdapter.java"


# static fields
.field private static DEBUG:Z = false

.field public static final HF_SERVICE_CLASS_NAME:Ljava/lang/String; = "com.autochips.bluetooth.BluetoothHfService"

.field private static final TAG:Ljava/lang/String; = "BluetoothHfAdapter"

.field private static mInstance:Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHfServerNotify:Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify;

.field private mHfServerNotifyConnection:Landroid/content/ServiceConnection;

.field private mHfUtility:Lcom/autochips/bluetooth/hf/BluetoothHfUtility;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    sget-boolean v0, Lcom/autochips/bluetooth/BtEmulatorDebug;->mDebugAll:Z

    sget-boolean v1, Lcom/autochips/bluetooth/BtEmulatorDebug;->mDebugHF:Z

    and-int/2addr v0, v1

    sput-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->DEBUG:Z

    const/4 v0, 0x0

    .line 48
    sput-object v0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->mInstance:Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->mHfServerNotify:Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify;

    .line 44
    iput-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->mHfUtility:Lcom/autochips/bluetooth/hf/BluetoothHfUtility;

    .line 111
    new-instance v0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter$1;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter$1;-><init>(Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->mHfServerNotifyConnection:Landroid/content/ServiceConnection;

    .line 94
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->DEBUG:Z

    const-string v1, "BluetoothHfAdapter"

    if-eqz v0, :cond_0

    const-string v0, "bindService "

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    iput-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->mContext:Landroid/content/Context;

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/autochips/bluetooth/hf/BluetoothHfService;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->mHfServerNotifyConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 101
    sget-boolean p1, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->DEBUG:Z

    if-eqz p1, :cond_2

    const-string p1, "cannot bindService !!! "

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 103
    :cond_1
    sget-boolean p1, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->DEBUG:Z

    if-eqz p1, :cond_2

    const-string p1, "bindService success"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_2
    :goto_0
    new-instance p1, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;

    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;-><init>(Landroid/content/Context;Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;)V

    iput-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->mHfUtility:Lcom/autochips/bluetooth/hf/BluetoothHfUtility;

    if-eqz p1, :cond_3

    .line 107
    invoke-virtual {p1}, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->reset()V

    :cond_3
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 32
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;)Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->mHfServerNotify:Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify;

    return-object p0
.end method

.method static synthetic access$102(Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify;)Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->mHfServerNotify:Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify;

    return-object p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;
    .locals 2

    .line 51
    const-class v0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;

    monitor-enter v0

    .line 52
    :try_start_0
    sget-object v1, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->mInstance:Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;

    if-nez v1, :cond_0

    .line 53
    new-instance v1, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;

    invoke-direct {v1, p0}, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->mInstance:Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;

    .line 56
    :cond_0
    sget-object p0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->mInstance:Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 57
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public Bluetooth_Hf_AcceptIncommingCall()V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->mHfServerNotify:Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify;

    const-string v1, "BluetoothHfAdapter"

    if-eqz v0, :cond_0

    .line 183
    :try_start_0
    invoke-interface {v0}, Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify;->AcceptIncommingCall()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 184
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 186
    :cond_0
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "mHfServerNotify is null"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_1
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public Bluetooth_Hf_DialNumber(Ljava/lang/String;)V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->mHfServerNotify:Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify;

    const-string v1, "BluetoothHfAdapter"

    if-eqz v0, :cond_0

    .line 154
    :try_start_0
    invoke-interface {v0, p1}, Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify;->DialNumber(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 155
    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 157
    :cond_0
    sget-boolean p1, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->DEBUG:Z

    if-eqz p1, :cond_1

    const-string p1, "mHfServerNotify is null"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_1
    sget-boolean p1, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->DEBUG:Z

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public Bluetooth_Hf_EnableVoiceRecognition(Z)V
    .locals 3

    .line 580
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->mHfServerNotify:Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify;

    const-string v1, "BluetoothHfAdapter"

    if-eqz v0, :cond_1

    .line 582
    :try_start_0
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bluetooth_Hf_EnableVoiceRecognition enable = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->mHfServerNotify:Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify;

    invoke-interface {v0, p1}, Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify;->enableVoiceRecognition(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 584
    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 586
    :cond_1
    sget-boolean p1, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->DEBUG:Z

    if-eqz p1, :cond_2

    const-string p1, "mHfServerNotify is null"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    :cond_2
    sget-boolean p1, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->DEBUG:Z

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method public Bluetooth_Hf_GetCallState()I
    .locals 2

    .line 478
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->mHfUtility:Lcom/autochips/bluetooth/hf/BluetoothHfUtility;

    if-eqz v0, :cond_0

    .line 479
    invoke-virtual {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->getCallState()I

    move-result v0

    return v0

    .line 481
    :cond_0
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "BluetoothHfAdapter"

    const-string v1, "mHfUtility is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public Bluetooth_Hf_GetCallValue()I
    .locals 4

    .line 336
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->mHfServerNotify:Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify;

    const-string v1, "BluetoothHfAdapter"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 338
    :try_start_0
    invoke-interface {v0}, Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify;->getHfCallValue()I

    move-result v2

    .line 339
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bluetooth_Hf_GetCallValue="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 340
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 342
    :cond_0
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "mHfServerNotify is null"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_1
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return v2
.end method

.method public Bluetooth_Hf_GetCallingNumber()Ljava/lang/String;
    .locals 2

    .line 466
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->mHfUtility:Lcom/autochips/bluetooth/hf/BluetoothHfUtility;

    if-eqz v0, :cond_0

    .line 467
    invoke-virtual {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->getCallingNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 469
    :cond_0
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "BluetoothHfAdapter"

    const-string v1, "mHfUtility is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public Bluetooth_Hf_GetCallsetupValue()I
    .locals 4

    .line 356
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->mHfServerNotify:Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify;

    const-string v1, "BluetoothHfAdapter"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 358
    :try_start_0
    invoke-interface {v0}, Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify;->getHfCallsetupValue()I

    move-result v2

    .line 359
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bluetooth_Hf_GetCallsetupValue="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 360
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 362
    :cond_0
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "mHfServerNotify is null"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_1
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return v2
.end method

.method public Bluetooth_Hf_GetClipNumber()Ljava/lang/String;
    .locals 4

    .line 377
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->mHfServerNotify:Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify;

    const-string v1, "BluetoothHfAdapter"

    const-string v2, ""

    if-eqz v0, :cond_0

    .line 379
    :try_start_0
    invoke-interface {v0}, Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify;->getCLIPPhoneNumber()Ljava/lang/String;

    move-result-object v2

    .line 380
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bluetooth_Hf_GetClipNumber="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 381
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 383
    :cond_0
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "mHfServerNotify is null"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_1
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-object v2
.end method

.method public Bluetooth_Hf_Hangup_WaitingCall()V
    .locals 3

    .line 233
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->mHfServerNotify:Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify;

    const-string v1, "BluetoothHfAdapter"

    if-eqz v0, :cond_0

    :try_start_0
    const-string v2, "0"

    .line 235
    invoke-interface {v0, v2}, Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify;->CallHold(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 236
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 238
    :cond_0
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "mHfServerNotify is null"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_1
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public Bluetooth_Hf_HoldCall()V
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->mHfServerNotify:Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify;

    const-string v1, "BluetoothHfAdapter"

    if-eqz v0, :cond_0

    .line 224
    :try_start_0
    invoke-interface {v0}, Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify;->CallWait()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 225
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 227
    :cond_0
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "mHfServerNotify is null"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_1
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public Bluetooth_Hf_IsAudioTransferTowardsAG()Z
    .locals 3

    .line 276
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->mHfServerNotify:Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify;

    const/4 v1, 0x1

    const-string v2, "BluetoothHfAdapter"

    if-eqz v0, :cond_0

    .line 278
    :try_start_0
    invoke-interface {v0}, Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify;->IsSCOConnected()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr v0, v1

    return v0

    :catch_0
    move-exception v0

    .line 279
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 281
    :cond_0
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "mHfServerNotify is null"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_1
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return v1
.end method

.method public Bluetooth_Hf_IsMESupportVoiceRecog()Z
    .locals 2

    .line 505
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->mHfServerNotify:Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify;

    const-string v1, "BluetoothHfAdapter"

    if-eqz v0, :cond_1

    .line 507
    :try_start_0
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Bluetooth_Hf_IsMESupportVoiceRecog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->mHfServerNotify:Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify;

    invoke-interface {v0}, Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify;->isRemoteDeviceSupportVoiceRecog()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 509
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 511
    :cond_1
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "mHfServerNotify is null"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :cond_2
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->DEBUG:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public Bluetooth_Hf_QueryCalllist()V
    .locals 2

    .line 396
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->mHfServerNotify:Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify;

    const-string v1, "BluetoothHfAdapter"

    if-eqz v0, :cond_1

    .line 398
    :try_start_0
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Bluetooth_Hf_QueryCalllist"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->mHfServerNotify:Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify;

    invoke-interface {v0}, Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify;->hfAtCmdQueryCalllist()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 400
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 402
    :cond_1
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "mHfServerNotify is null"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_2
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->DEBUG:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method public Bluetooth_Hf_QueryPhoneIdentification()V
    .locals 2

    .line 563
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->mHfServerNotify:Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify;

    const-string v1, "BluetoothHfAdapter"

    if-eqz v0, :cond_1

    .line 565
    :try_start_0
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Bluetooth_Hf_QueryPhoneIdentification"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->mHfServerNotify:Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify;

    invoke-interface {v0}, Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify;->hfAtCmdQueryPhoneIdentification()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 567
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 569
    :cond_1
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "mHfServerNotify is null"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_2
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->DEBUG:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method public Bluetooth_Hf_QueryPhoneIndicator()V
    .locals 2

    .line 547
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->mHfServerNotify:Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify;

    const-string v1, "BluetoothHfAdapter"

    if-eqz v0, :cond_1

    .line 549
    :try_start_0
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Bluetooth_Hf_QueryPhoneIndicator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->mHfServerNotify:Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify;

    invoke-interface {v0}, Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify;->hfAtCmdQueryPhoneIndicator()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 551
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 553
    :cond_1
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "mHfServerNotify is null"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    :cond_2
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->DEBUG:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method public Bluetooth_Hf_QuerySubcriberInfo()V
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->mHfServerNotify:Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify;

    const-string v1, "BluetoothHfAdapter"

    if-eqz v0, :cond_0

    .line 262
    :try_start_0
    invoke-interface {v0}, Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify;->QuerySubcriberInfo()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 263
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 265
    :cond_0
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "mHfServerNotify is null"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_1
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public Bluetooth_Hf_Redial()V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->mHfServerNotify:Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify;

    const-string v1, "BluetoothHfAdapter"

    if-eqz v0, :cond_0

    .line 169
    :try_start_0
    invoke-interface {v0}, Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify;->Redial()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 170
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 172
    :cond_0
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "mHfServerNotify is null"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_1
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public Bluetooth_Hf_RequestCallAudio(Z)V
    .locals 3

    .line 318
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->mHfServerNotify:Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify;

    const-string v1, "BluetoothHfAdapter"

    if-eqz v0, :cond_1

    .line 320
    :try_start_0
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bluetooth_Hf_RequestCallAudio enable = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->mHfServerNotify:Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify;

    invoke-interface {v0, p1}, Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify;->requestSCOSoundEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 322
    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 324
    :cond_1
    sget-boolean p1, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->DEBUG:Z

    if-eqz p1, :cond_2

    const-string p1, "mHfServerNotify is null"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_2
    sget-boolean p1, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->DEBUG:Z

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method public Bluetooth_Hf_ResetUtility()V
    .locals 2

    .line 490
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->mHfUtility:Lcom/autochips/bluetooth/hf/BluetoothHfUtility;

    if-eqz v0, :cond_0

    .line 491
    invoke-virtual {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->reset()V

    goto :goto_0

    .line 493
    :cond_0
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "BluetoothHfAdapter"

    const-string v1, "mHfUtility is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public Bluetooth_Hf_SendDTMFCode(Ljava/lang/String;)V
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->mHfServerNotify:Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify;

    const-string v1, "BluetoothHfAdapter"

    if-eqz v0, :cond_0

    .line 251
    :try_start_0
    invoke-interface {v0, p1}, Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify;->SendDTMFCode(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 252
    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 254
    :cond_0
    sget-boolean p1, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->DEBUG:Z

    if-eqz p1, :cond_1

    const-string p1, "mHfServerNotify is null"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_1
    sget-boolean p1, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->DEBUG:Z

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public Bluetooth_Hf_SwithAudioTransfer(Z)V
    .locals 2

    .line 296
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->mHfServerNotify:Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify;

    const-string v1, "BluetoothHfAdapter"

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    .line 299
    :try_start_0
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "Swith AudioTransfer ,btowards_AG "

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 301
    :cond_0
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "Swith AudioTransfer ,btowards_HF "

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->mHfServerNotify:Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify;

    invoke-interface {v0, p1}, Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify;->SwithAudioTransfer(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 304
    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 306
    :cond_2
    sget-boolean p1, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->DEBUG:Z

    if-eqz p1, :cond_3

    const-string p1, "mHfServerNotify is null"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_3
    sget-boolean p1, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->DEBUG:Z

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-void
.end method

.method public Bluetooth_Hf_TerminatePhoneCall()V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->mHfServerNotify:Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify;

    const-string v1, "BluetoothHfAdapter"

    if-eqz v0, :cond_0

    .line 202
    :try_start_0
    invoke-interface {v0}, Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify;->TerminatePhoneCall()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 203
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 205
    :cond_0
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "mHfServerNotify is null"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_1
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public Bluetooth_Hf_UpdateCallRelatedValues(III)V
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->mHfUtility:Lcom/autochips/bluetooth/hf/BluetoothHfUtility;

    if-eqz v0, :cond_0

    .line 412
    invoke-virtual {v0, p1, p2, p3}, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->updateCallRelatedValue(III)V

    goto :goto_0

    .line 414
    :cond_0
    sget-boolean p1, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->DEBUG:Z

    if-eqz p1, :cond_1

    const-string p1, "BluetoothHfAdapter"

    const-string p2, "mHfUtility is null"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public Bluetooth_Hf_UpdateCallValue(I)V
    .locals 1

    .line 422
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->mHfUtility:Lcom/autochips/bluetooth/hf/BluetoothHfUtility;

    if-eqz v0, :cond_0

    .line 423
    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->updateCallValue(I)V

    goto :goto_0

    .line 425
    :cond_0
    sget-boolean p1, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->DEBUG:Z

    if-eqz p1, :cond_1

    const-string p1, "BluetoothHfAdapter"

    const-string v0, "mHfUtility is null"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public Bluetooth_Hf_UpdateCallheldValue(I)V
    .locals 1

    .line 444
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->mHfUtility:Lcom/autochips/bluetooth/hf/BluetoothHfUtility;

    if-eqz v0, :cond_0

    .line 445
    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->updateCallheldValue(I)V

    goto :goto_0

    .line 447
    :cond_0
    sget-boolean p1, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->DEBUG:Z

    if-eqz p1, :cond_1

    const-string p1, "BluetoothHfAdapter"

    const-string v0, "mHfUtility is null"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public Bluetooth_Hf_UpdateCallingNumber(Ljava/lang/String;)V
    .locals 1

    .line 455
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->mHfUtility:Lcom/autochips/bluetooth/hf/BluetoothHfUtility;

    if-eqz v0, :cond_0

    .line 456
    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->setCallingNumber(Ljava/lang/String;)Z

    goto :goto_0

    .line 458
    :cond_0
    sget-boolean p1, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->DEBUG:Z

    if-eqz p1, :cond_1

    const-string p1, "BluetoothHfAdapter"

    const-string v0, "mHfUtility is null"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public Bluetooth_Hf_UpdateCallsetupValue(I)V
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->mHfUtility:Lcom/autochips/bluetooth/hf/BluetoothHfUtility;

    if-eqz v0, :cond_0

    .line 434
    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->updateCallsetupValue(I)V

    goto :goto_0

    .line 436
    :cond_0
    sget-boolean p1, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->DEBUG:Z

    if-eqz p1, :cond_1

    const-string p1, "BluetoothHfAdapter"

    const-string v0, "mHfUtility is null"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public Bluetooth_Hf_WaitCall()V
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->mHfServerNotify:Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify;

    const-string v1, "BluetoothHfAdapter"

    if-eqz v0, :cond_0

    .line 213
    :try_start_0
    invoke-interface {v0}, Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify;->CallWait()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 214
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 216
    :cond_0
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "mHfServerNotify is null"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_1
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public Bluetooth_Hf_isConnected()Z
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->mHfServerNotify:Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify;

    const-string v1, "BluetoothHfAdapter"

    if-eqz v0, :cond_0

    .line 136
    :try_start_0
    invoke-interface {v0}, Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify;->isHfPrfileConnected()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 137
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 139
    :cond_0
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "mHfServerNotify is null"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_1
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public Bluetooth_Hf_isReconnectNeeded()Z
    .locals 2

    .line 613
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->mHfServerNotify:Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify;

    const-string v1, "BluetoothHfAdapter"

    if-eqz v0, :cond_0

    .line 615
    :try_start_0
    invoke-interface {v0}, Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify;->getReconnectSuggestion()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 616
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 618
    :cond_0
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "mHfServerNotify is null"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :cond_1
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public Bluetooth_Hf_sendAtCmd(Ljava/lang/String;Z)Z
    .locals 3

    .line 526
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->mHfServerNotify:Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify;

    const/4 v1, 0x0

    const-string v2, "BluetoothHfAdapter"

    if-eqz v0, :cond_1

    .line 528
    :try_start_0
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Bluetooth_Hf_sendAtCmd"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->mHfServerNotify:Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify;

    invoke-interface {v0, p1, p2}, Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify;->sendATCommand(Ljava/lang/String;Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 530
    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 532
    :cond_1
    sget-boolean p1, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->DEBUG:Z

    if-eqz p1, :cond_2

    const-string p1, "mHfServerNotify is null"

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :cond_2
    sget-boolean p1, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->DEBUG:Z

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    move p1, v1

    .line 536
    :goto_1
    sget-boolean p2, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->DEBUG:Z

    if-eqz p2, :cond_4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bluetooth_Hf_sendAtCmd result:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 p2, 0x1

    if-ne p1, p2, :cond_5

    move v1, p2

    :cond_5
    return v1
.end method

.method public Bluetooth_Hf_updateHFConnectedState(I)V
    .locals 2

    .line 597
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->mHfUtility:Lcom/autochips/bluetooth/hf/BluetoothHfUtility;

    const-string v1, "BluetoothHfAdapter"

    if-eqz v0, :cond_0

    const-string v0, "Bluetooth_Hf_updateHFConnectedState"

    .line 598
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->mHfUtility:Lcom/autochips/bluetooth/hf/BluetoothHfUtility;

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->updateHFConnectedState(I)V

    goto :goto_0

    .line 601
    :cond_0
    sget-boolean p1, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->DEBUG:Z

    if-eqz p1, :cond_1

    const-string p1, "mHfUtility is null"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public declared-synchronized close()V
    .locals 3

    monitor-enter p0

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->mHfServerNotifyConnection:Landroid/content/ServiceConnection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->mHfServerNotifyConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 74
    iput-object v1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->mHfServerNotifyConnection:Landroid/content/ServiceConnection;

    .line 76
    :cond_0
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "BluetoothHfAdapter"

    const-string v2, "BluetoothHfAdapter close! "

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_1
    sget-object v0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->mInstance:Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;

    if-eqz v0, :cond_2

    .line 79
    sput-object v1, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->mInstance:Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;

    .line 81
    :cond_2
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->mHfUtility:Lcom/autochips/bluetooth/hf/BluetoothHfUtility;

    if-eqz v0, :cond_3

    .line 82
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->mHfUtility:Lcom/autochips/bluetooth/hf/BluetoothHfUtility;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->reset()V

    .line 83
    iput-object v1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->mHfUtility:Lcom/autochips/bluetooth/hf/BluetoothHfUtility;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 62
    :try_start_0
    sget-object v0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->mInstance:Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;

    if-eqz v0, :cond_1

    .line 63
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothHfAdapter"

    const-string v1, "BluetoothHfAdapter finalize "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 64
    sput-object v0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->mInstance:Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
