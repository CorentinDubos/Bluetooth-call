.class public Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;
.super Ljava/lang/Object;
.source "CachedBluetoothDeviceManager.java"


# static fields
.field private static DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "CachedBluetoothDeviceManager"


# instance fields
.field final mCachedDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autochips/bluetooth/CachedBluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field final mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autochips/bluetooth/LocalBluetoothManager$Callback;",
            ">;"
        }
    .end annotation
.end field

.field final mLocalManager:Lcom/autochips/bluetooth/LocalBluetoothManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 60
    sget-boolean v0, Lcom/autochips/bluetooth/BtEmulatorDebug;->mDebugAll:Z

    sget-boolean v1, Lcom/autochips/bluetooth/BtEmulatorDebug;->mDebugSettings:Z

    and-int/2addr v0, v1

    sput-boolean v0, Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/autochips/bluetooth/LocalBluetoothManager;)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    .line 68
    iput-object p1, p0, Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;->mLocalManager:Lcom/autochips/bluetooth/LocalBluetoothManager;

    .line 69
    invoke-virtual {p1}, Lcom/autochips/bluetooth/LocalBluetoothManager;->getCallbacks()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;->mCallbacks:Ljava/util/List;

    .line 72
    invoke-direct {p0}, Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;->readPairedDevices()Z

    return-void
.end method

.method private checkForDeviceRemoval(Lcom/autochips/bluetooth/CachedBluetoothDevice;)V
    .locals 2

    .line 139
    invoke-virtual {p1}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 143
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;->dispatchDeviceDeleted(Lcom/autochips/bluetooth/CachedBluetoothDevice;)V

    :cond_0
    return-void
.end method

.method private dispatchDeviceAdded(Lcom/autochips/bluetooth/CachedBluetoothDevice;)V
    .locals 3

    .line 184
    iget-object v0, p0, Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;->mCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 185
    :try_start_0
    iget-object v1, p0, Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autochips/bluetooth/LocalBluetoothManager$Callback;

    .line 186
    invoke-interface {v2, p1}, Lcom/autochips/bluetooth/LocalBluetoothManager$Callback;->onDeviceAdded(Lcom/autochips/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0

    .line 188
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

.method private dispatchDeviceDeleted(Lcom/autochips/bluetooth/CachedBluetoothDevice;)V
    .locals 3

    .line 194
    iget-object v0, p0, Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;->mCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 195
    :try_start_0
    iget-object v1, p0, Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autochips/bluetooth/LocalBluetoothManager$Callback;

    .line 196
    invoke-interface {v2, p1}, Lcom/autochips/bluetooth/LocalBluetoothManager$Callback;->onDeviceDeleted(Lcom/autochips/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0

    .line 198
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

.method private declared-synchronized readPairedDevices()Z
    .locals 4

    monitor-enter p0

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;->mLocalManager:Lcom/autochips/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 81
    monitor-exit p0

    return v1

    .line 86
    :cond_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 87
    invoke-virtual {p0, v2}, Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/autochips/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    if-nez v3, :cond_1

    .line 89
    new-instance v1, Lcom/autochips/bluetooth/CachedBluetoothDevice;

    iget-object v3, p0, Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;->mLocalManager:Lcom/autochips/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/autochips/bluetooth/LocalBluetoothManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lcom/autochips/bluetooth/CachedBluetoothDevice;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V

    .line 90
    iget-object v2, p0, Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-direct {p0, v1}, Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;->dispatchDeviceAdded(Lcom/autochips/bluetooth/CachedBluetoothDevice;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    goto :goto_0

    .line 97
    :cond_2
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/autochips/bluetooth/CachedBluetoothDevice;
    .locals 3

    monitor-enter p0

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 157
    iget-object v1, p0, Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autochips/bluetooth/CachedBluetoothDevice;

    .line 159
    invoke-virtual {v1}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 160
    monitor-exit p0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 164
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getCachedDevicesCopy()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/autochips/bluetooth/CachedBluetoothDevice;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 101
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 1

    .line 174
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/autochips/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {v0}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 177
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 180
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method onBluetoothStateChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 106
    invoke-direct {p0}, Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;->readPairedDevices()Z

    :cond_0
    return-void
.end method

.method public declared-synchronized onBondingStateChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2

    monitor-enter p0

    .line 202
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/autochips/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_3

    .line 204
    invoke-direct {p0}, Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;->readPairedDevices()Z

    move-result v0

    if-nez v0, :cond_1

    .line 205
    sget-boolean p2, Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;->DEBUG:Z

    if-eqz p2, :cond_0

    const-string p2, "CachedBluetoothDeviceManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got bonding state changed for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", but we have no record of that device."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    :cond_0
    monitor-exit p0

    return-void

    .line 209
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/autochips/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_3

    .line 211
    sget-boolean p2, Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;->DEBUG:Z

    if-eqz p2, :cond_2

    const-string p2, "CachedBluetoothDeviceManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got bonding state changed for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "but device not added in cache"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 213
    :cond_2
    monitor-exit p0

    return-void

    .line 217
    :cond_3
    :try_start_2
    invoke-virtual {v0, p2}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->onBondingStateChanged(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 218
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onBtClassChanged(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    monitor-enter p0

    .line 292
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/autochips/bluetooth/CachedBluetoothDevice;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 294
    invoke-virtual {p1}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->refreshBtClass()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onConnectingError(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    monitor-enter p0

    .line 269
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/autochips/bluetooth/CachedBluetoothDevice;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 270
    monitor-exit p0

    return-void

    .line 277
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->showConnectingError()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 278
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onDeviceAppeared(Landroid/bluetooth/BluetoothDevice;SLandroid/bluetooth/BluetoothClass;Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 114
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/autochips/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 116
    new-instance v1, Lcom/autochips/bluetooth/CachedBluetoothDevice;

    iget-object v0, p0, Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;->mLocalManager:Lcom/autochips/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/LocalBluetoothManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lcom/autochips/bluetooth/CachedBluetoothDevice;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V

    .line 117
    iget-object p1, p0, Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v2

    .line 120
    :cond_0
    invoke-virtual {v1, p2}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->setRssi(S)V

    .line 121
    invoke-virtual {v1, p3}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->setBtClass(Landroid/bluetooth/BluetoothClass;)V

    .line 122
    invoke-virtual {v1, p4}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->setName(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v1, v2}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->setVisible(Z)V

    if-eqz v0, :cond_1

    .line 126
    invoke-direct {p0, v1}, Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;->dispatchDeviceAdded(Lcom/autochips/bluetooth/CachedBluetoothDevice;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onDeviceDisappeared(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    monitor-enter p0

    .line 131
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/autochips/bluetooth/CachedBluetoothDevice;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 132
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 134
    :try_start_1
    invoke-virtual {p1, v0}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->setVisible(Z)V

    .line 135
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;->checkForDeviceRemoval(Lcom/autochips/bluetooth/CachedBluetoothDevice;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onDeviceNameUpdated(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    monitor-enter p0

    .line 148
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/autochips/bluetooth/CachedBluetoothDevice;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 150
    invoke-virtual {p1}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->refreshName()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onProfileStateChanged(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothProfileManager$Profile;I)V
    .locals 0

    monitor-enter p0

    .line 258
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/autochips/bluetooth/CachedBluetoothDevice;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 259
    monitor-exit p0

    return-void

    .line 262
    :cond_0
    :try_start_1
    invoke-virtual {p1, p2, p3}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->onProfileStateChanged(Landroid/bluetooth/BluetoothProfileManager$Profile;I)V

    .line 263
    invoke-virtual {p1}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->refresh()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 264
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onScanningStateChanged(Z)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    .line 281
    monitor-exit p0

    return-void

    .line 284
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_1

    .line 285
    iget-object v0, p0, Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autochips/bluetooth/CachedBluetoothDevice;

    const/4 v1, 0x0

    .line 286
    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->setVisible(Z)V

    .line 287
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;->checkForDeviceRemoval(Lcom/autochips/bluetooth/CachedBluetoothDevice;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 289
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onUuidChanged(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    monitor-enter p0

    .line 299
    :try_start_0
    sget-boolean v0, Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CachedBluetoothDeviceManager"

    const-string v1, "onUuidChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_0
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/autochips/bluetooth/CachedBluetoothDevice;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 302
    invoke-virtual {p1}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->onUuidChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized showUnbondMessage(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    monitor-enter p0

    .line 254
    monitor-exit p0

    return-void
.end method
