.class public Lcom/autochips/bluetooth/LocalBluetoothManager;
.super Ljava/lang/Object;
.source "LocalBluetoothManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autochips/bluetooth/LocalBluetoothManager$Callback;
    }
.end annotation


# static fields
.field public static final ACTION_ATC_BT_UP:Ljava/lang/String; = "com.autochips.bluetooth.action.BT_UP"

.field public static final ACTION_ATC_SHOWERROR:Ljava/lang/String; = "com.autochips.bluetooth.action.SHOWERROR"

.field private static DEBUG:Z = false

.field private static GRACE_PERIOD_TO_SHOW_DIALOGS_IN_FOREGROUND:J = 0x0L

.field public static final HFAG:Landroid/os/ParcelUuid;

.field public static final HSAG:Landroid/os/ParcelUuid;

.field private static INSTANCE:Lcom/autochips/bluetooth/LocalBluetoothManager; = null

.field private static final SCAN_EXPIRATION_MS:I = 0x1d4c0

.field public static final SHARED_PREFERENCES_KEY_DISCOVERING_TIMESTAMP:Ljava/lang/String; = "last_discovering_time"

.field private static final SHARED_PREFERENCES_KEY_DOCK_AUTO_CONNECT:Ljava/lang/String; = "auto_connect_to_dock"

.field private static final SHARED_PREFERENCES_KEY_LAST_SELECTED_DEVICE:Ljava/lang/String; = "last_selected_device"

.field private static final SHARED_PREFERENCES_KEY_LAST_SELECTED_DEVICE_TIME:Ljava/lang/String; = "last_selected_device_time"

.field private static final SHARED_PREFERENCES_NAME:Ljava/lang/String; = "bluetooth_settings"

.field private static final TAG:Ljava/lang/String; = "LocalBluetoothManager"


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

.field private mCachedDeviceManager:Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;

.field private mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autochips/bluetooth/LocalBluetoothManager$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mErrorDialog:Landroid/app/AlertDialog;

.field private mEventRedirector:Lcom/autochips/bluetooth/BluetoothEventRedirector;

.field private mForegroundActivity:Landroid/app/Activity;

.field private mInitialized:Z

.field private mLastScan:J

.field private mPclFile:Ljava/io/InputStream;

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 70
    sget-boolean v0, Lcom/autochips/bluetooth/BtEmulatorDebug;->mDebugAll:Z

    sget-boolean v1, Lcom/autochips/bluetooth/BtEmulatorDebug;->mDebugSettings:Z

    and-int/2addr v0, v1

    sput-boolean v0, Lcom/autochips/bluetooth/LocalBluetoothManager;->DEBUG:Z

    const-string v0, "00001112-0000-1000-8000-00805F9B34FB"

    .line 74
    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/autochips/bluetooth/LocalBluetoothManager;->HSAG:Landroid/os/ParcelUuid;

    const-string v0, "0000111F-0000-1000-8000-00805F9B34FB"

    .line 75
    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/autochips/bluetooth/LocalBluetoothManager;->HFAG:Landroid/os/ParcelUuid;

    const-wide/32 v0, 0xea60

    .line 101
    sput-wide v0, Lcom/autochips/bluetooth/LocalBluetoothManager;->GRACE_PERIOD_TO_SHOW_DIALOGS_IN_FOREGROUND:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lcom/autochips/bluetooth/LocalBluetoothManager;->mErrorDialog:Landroid/app/AlertDialog;

    const/high16 v0, -0x80000000

    .line 92
    iput v0, p0, Lcom/autochips/bluetooth/LocalBluetoothManager;->mState:I

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autochips/bluetooth/LocalBluetoothManager;->mCallbacks:Ljava/util/List;

    return-void
.end method

.method private dispatchScanningStateChanged(Z)V
    .locals 3

    .line 373
    iget-object v0, p0, Lcom/autochips/bluetooth/LocalBluetoothManager;->mCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 374
    :try_start_0
    iget-object v1, p0, Lcom/autochips/bluetooth/LocalBluetoothManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autochips/bluetooth/LocalBluetoothManager$Callback;

    .line 375
    invoke-interface {v2, p1}, Lcom/autochips/bluetooth/LocalBluetoothManager$Callback;->onScanningStateChanged(Z)V

    goto :goto_0

    .line 377
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

.method public static getInstance(Landroid/content/Context;)Lcom/autochips/bluetooth/LocalBluetoothManager;
    .locals 2

    .line 141
    const-class v0, Lcom/autochips/bluetooth/LocalBluetoothManager;

    monitor-enter v0

    .line 142
    :try_start_0
    sget-object v1, Lcom/autochips/bluetooth/LocalBluetoothManager;->INSTANCE:Lcom/autochips/bluetooth/LocalBluetoothManager;

    if-nez v1, :cond_0

    .line 143
    new-instance v1, Lcom/autochips/bluetooth/LocalBluetoothManager;

    invoke-direct {v1}, Lcom/autochips/bluetooth/LocalBluetoothManager;-><init>()V

    sput-object v1, Lcom/autochips/bluetooth/LocalBluetoothManager;->INSTANCE:Lcom/autochips/bluetooth/LocalBluetoothManager;

    .line 146
    :cond_0
    sget-object v1, Lcom/autochips/bluetooth/LocalBluetoothManager;->INSTANCE:Lcom/autochips/bluetooth/LocalBluetoothManager;

    invoke-direct {v1, p0}, Lcom/autochips/bluetooth/LocalBluetoothManager;->init(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 147
    monitor-exit v0

    return-object p0

    .line 152
    :cond_1
    sget-object p0, Lcom/autochips/bluetooth/LocalBluetoothManager;->INSTANCE:Lcom/autochips/bluetooth/LocalBluetoothManager;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 153
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private init(Landroid/content/Context;)Z
    .locals 2

    .line 157
    iget-boolean v0, p0, Lcom/autochips/bluetooth/LocalBluetoothManager;->mInitialized:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 158
    :cond_0
    iput-boolean v1, p0, Lcom/autochips/bluetooth/LocalBluetoothManager;->mInitialized:Z

    .line 161
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/bluetooth/LocalBluetoothManager;->mContext:Landroid/content/Context;

    .line 163
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/bluetooth/LocalBluetoothManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 169
    :cond_1
    new-instance p1, Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {p1, p0}, Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;-><init>(Lcom/autochips/bluetooth/LocalBluetoothManager;)V

    iput-object p1, p0, Lcom/autochips/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;

    .line 176
    new-instance p1, Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-direct {p1, p0}, Lcom/autochips/bluetooth/BluetoothEventRedirector;-><init>(Lcom/autochips/bluetooth/LocalBluetoothManager;)V

    iput-object p1, p0, Lcom/autochips/bluetooth/LocalBluetoothManager;->mEventRedirector:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    .line 177
    invoke-virtual {p1}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->start()V

    return v1
.end method

.method private syncBluetoothState()V
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/autochips/bluetooth/LocalBluetoothManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_1

    .line 317
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    goto :goto_0

    :cond_1
    const/high16 v0, -0x80000000

    .line 324
    :goto_0
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/LocalBluetoothManager;->setBluetoothStateInt(I)V

    return-void
.end method


# virtual methods
.method public getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/autochips/bluetooth/LocalBluetoothManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method public getBluetoothState()I
    .locals 2

    .line 297
    iget v0, p0, Lcom/autochips/bluetooth/LocalBluetoothManager;->mState:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 298
    invoke-direct {p0}, Lcom/autochips/bluetooth/LocalBluetoothManager;->syncBluetoothState()V

    .line 301
    :cond_0
    iget v0, p0, Lcom/autochips/bluetooth/LocalBluetoothManager;->mState:I

    return v0
.end method

.method public getCachedDeviceManager()Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/autochips/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;

    return-object v0
.end method

.method getCallbacks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/autochips/bluetooth/LocalBluetoothManager$Callback;",
            ">;"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/autochips/bluetooth/LocalBluetoothManager;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/autochips/bluetooth/LocalBluetoothManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDockAutoConnectSetting(Ljava/lang/String;)Z
    .locals 3

    .line 471
    invoke-virtual {p0}, Lcom/autochips/bluetooth/LocalBluetoothManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "auto_connect_to_dock"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getForegroundActivity()Landroid/app/Activity;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/autochips/bluetooth/LocalBluetoothManager;->mForegroundActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getPclFile()Ljava/io/InputStream;
    .locals 2

    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPclFile, mPclFile ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/autochips/bluetooth/LocalBluetoothManager;->mPclFile:Ljava/io/InputStream;

    if-nez v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    const-string v1, "not null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocalBluetoothManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    iget-object v0, p0, Lcom/autochips/bluetooth/LocalBluetoothManager;->mPclFile:Ljava/io/InputStream;

    return-object v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .line 219
    iget-object v0, p0, Lcom/autochips/bluetooth/LocalBluetoothManager;->mContext:Landroid/content/Context;

    const-string v1, "bluetooth_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public hasDockAutoConnectSetting(Ljava/lang/String;)Z
    .locals 3

    .line 467
    invoke-virtual {p0}, Lcom/autochips/bluetooth/LocalBluetoothManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "auto_connect_to_dock"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method onScanningStateChanged(Z)V
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/autochips/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;->onScanningStateChanged(Z)V

    .line 369
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/LocalBluetoothManager;->dispatchScanningStateChanged(Z)V

    return-void
.end method

.method persistSelectedDeviceInPicker(Ljava/lang/String;)V
    .locals 3

    .line 458
    invoke-virtual {p0}, Lcom/autochips/bluetooth/LocalBluetoothManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_selected_device"

    .line 459
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 461
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string p1, "last_selected_device_time"

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 463
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public registerCallback(Lcom/autochips/bluetooth/LocalBluetoothManager$Callback;)V
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/autochips/bluetooth/LocalBluetoothManager;->mCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 237
    :try_start_0
    iget-object v1, p0, Lcom/autochips/bluetooth/LocalBluetoothManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeDockAutoConnectSetting(Ljava/lang/String;)V
    .locals 3

    .line 482
    invoke-virtual {p0}, Lcom/autochips/bluetooth/LocalBluetoothManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 483
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "auto_connect_to_dock"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 484
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveDockAutoConnectSetting(Ljava/lang/String;Z)V
    .locals 3

    .line 476
    invoke-virtual {p0}, Lcom/autochips/bluetooth/LocalBluetoothManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 477
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "auto_connect_to_dock"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 478
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setA2DPActive(Z)V
    .locals 2

    .line 503
    sget-boolean v0, Lcom/autochips/bluetooth/LocalBluetoothManager;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setA2DPActive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocalBluetoothManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/LocalBluetoothManager;->mEventRedirector:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    if-eqz v0, :cond_1

    .line 505
    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->resetA2dpAudio(Z)V

    :cond_1
    return-void
.end method

.method public setBluetoothEnabled(Z)V
    .locals 2

    .line 333
    iget-object v0, p0, Lcom/autochips/bluetooth/LocalBluetoothManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const/16 p1, 0xb

    goto :goto_1

    :cond_1
    const/16 p1, 0xd

    .line 338
    :goto_1
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/LocalBluetoothManager;->setBluetoothStateInt(I)V

    goto :goto_2

    .line 342
    :cond_2
    sget-boolean v0, Lcom/autochips/bluetooth/LocalBluetoothManager;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setBluetoothEnabled call, manager didn\'t return success for enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LocalBluetoothManager"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_3
    invoke-direct {p0}, Lcom/autochips/bluetooth/LocalBluetoothManager;->syncBluetoothState()V

    :goto_2
    return-void
.end method

.method public setBluetoothPower(I)V
    .locals 2

    .line 359
    sget-boolean v0, Lcom/autochips/bluetooth/LocalBluetoothManager;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setBluetoothPower: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocalBluetoothManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/LocalBluetoothManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->setPower(I)V

    return-void
.end method

.method setBluetoothStateInt(I)V
    .locals 2

    .line 305
    iput p1, p0, Lcom/autochips/bluetooth/LocalBluetoothManager;->mState:I

    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    const/16 v1, 0xa

    if-ne p1, v1, :cond_2

    .line 308
    :cond_0
    iget-object v1, p0, Lcom/autochips/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v1, p1}, Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;->onBluetoothStateChanged(Z)V

    :cond_2
    return-void
.end method

.method public setForegroundActivity(Landroid/app/Activity;)V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/autochips/bluetooth/LocalBluetoothManager;->mErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 213
    iput-object v0, p0, Lcom/autochips/bluetooth/LocalBluetoothManager;->mErrorDialog:Landroid/app/AlertDialog;

    .line 215
    :cond_0
    iput-object p1, p0, Lcom/autochips/bluetooth/LocalBluetoothManager;->mForegroundActivity:Landroid/app/Activity;

    return-void
.end method

.method public setPclFile(Ljava/io/InputStream;)V
    .locals 2

    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPclFile, fis ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    const-string v1, "not null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocalBluetoothManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iput-object p1, p0, Lcom/autochips/bluetooth/LocalBluetoothManager;->mPclFile:Ljava/io/InputStream;

    return-void
.end method

.method public setScanMode(I)Z
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/autochips/bluetooth/LocalBluetoothManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    move-result p1

    return p1
.end method

.method public setScanMode(II)Z
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/autochips/bluetooth/LocalBluetoothManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(II)Z

    move-result p1

    return p1
.end method

.method public shouldShowDialogInForeground(Ljava/lang/String;)Z
    .locals 0

    .line 418
    iget-object p1, p0, Lcom/autochips/bluetooth/LocalBluetoothManager;->mForegroundActivity:Landroid/app/Activity;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public showError(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0

    .line 382
    iget-object p2, p0, Lcom/autochips/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {p2, p1}, Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/autochips/bluetooth/CachedBluetoothDevice;

    move-result-object p2

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    .line 385
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    .line 391
    :cond_1
    invoke-virtual {p2}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    .line 406
    :goto_0
    iget-object p1, p0, Lcom/autochips/bluetooth/LocalBluetoothManager;->mContext:Landroid/content/Context;

    const/4 p2, 0x1

    const-string p3, " "

    invoke-static {p1, p3, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public startScanning(Z)V
    .locals 4

    .line 248
    iget-object v0, p0, Lcom/autochips/bluetooth/LocalBluetoothManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 255
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/LocalBluetoothManager;->dispatchScanningStateChanged(Z)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 260
    iget-wide v0, p0, Lcom/autochips/bluetooth/LocalBluetoothManager;->mLastScan:J

    const-wide/32 v2, 0x1d4c0

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    return-void

    .line 277
    :cond_1
    iget-object p1, p0, Lcom/autochips/bluetooth/LocalBluetoothManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 278
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/autochips/bluetooth/LocalBluetoothManager;->mLastScan:J

    :cond_2
    :goto_0
    return-void
.end method

.method public stopScanning()V
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/autochips/bluetooth/LocalBluetoothManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/autochips/bluetooth/LocalBluetoothManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    :cond_0
    return-void
.end method

.method public unregisterCallback(Lcom/autochips/bluetooth/LocalBluetoothManager$Callback;)V
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/autochips/bluetooth/LocalBluetoothManager;->mCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 243
    :try_start_0
    iget-object v1, p0, Lcom/autochips/bluetooth/LocalBluetoothManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 244
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
