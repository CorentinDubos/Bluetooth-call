.class public Lcom/autochips/bluetooth/CachedBluetoothDevice;
.super Ljava/lang/Object;
.source "CachedBluetoothDevice.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autochips/bluetooth/CachedBluetoothDevice$Callback;,
        Lcom/autochips/bluetooth/CachedBluetoothDevice$waitUuidThread;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/autochips/bluetooth/CachedBluetoothDevice;",
        ">;"
    }
.end annotation


# static fields
.field public static final ACTION_DISAPPEARED:Ljava/lang/String; = "android.bluetooth.device.action.DISAPPEARED"

.field public static final ACTION_PAIRING_CANCEL:Ljava/lang/String; = "android.bluetooth.device.action.PAIRING_CANCEL"

.field private static final BLUETOOTH_NAME_MAX_LENGTH:I = 0x3b

.field private static final CONTEXT_ITEM_CONNECT_ADVANCED:I = 0x5

.field private static final CONTEXT_ITEM_DISCONNECT:I = 0x3

.field private static final CONTEXT_ITEM_PAIR:I = 0x2

.field private static final CONTEXT_ITEM_RENAME:I = 0x6

.field private static final CONTEXT_ITEM_UNPAIR:I = 0x4

.field private static final DEBUG:Z

.field public static final EXTRA_REASON:Ljava/lang/String; = "android.bluetooth.device.extra.REASON"

.field private static final MAX_UUID_DELAY_FOR_AUTO_CONNECT:J = 0x1388L

.field public static final PAIRING_VARIANT_CONSENT:I = 0x3

.field public static final PAIRING_VARIANT_DISPLAY_PASSKEY:I = 0x4

.field public static final PAIRING_VARIANT_DISPLAY_PIN:I = 0x5

.field public static final PAIRING_VARIANT_OOB_CONSENT:I = 0x6

.field public static final PAIRING_VARIANT_PASSKEY:I = 0x1

.field public static final PAIRING_VARIANT_PASSKEY_CONFIRMATION:I = 0x2

.field public static final PAIRING_VARIANT_PIN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CachedBluetoothDevice"

.field public static mCachedDevice:Lcom/autochips/bluetooth/CachedBluetoothDevice;


# instance fields
.field private mBtClass:Landroid/bluetooth/BluetoothClass;

.field private mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autochips/bluetooth/CachedBluetoothDevice$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectAfterPairing:Z

.field private mConnectAttempted:J

.field private final mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mIsConnectingErrorPossible:Z

.field private final mLocalManager:Lcom/autochips/bluetooth/LocalBluetoothManager;

.field private mName:Ljava/lang/String;

.field private mProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothProfileManager$Profile;",
            ">;"
        }
    .end annotation
.end field

.field private mRssi:S

.field private mVisible:Z

.field private mWaitUuidThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 73
    sget-boolean v0, Lcom/autochips/bluetooth/BtEmulatorDebug;->mDebugAll:Z

    sget-boolean v1, Lcom/autochips/bluetooth/BtEmulatorDebug;->mDebugSettings:Z

    and-int/2addr v0, v1

    sput-boolean v0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->DEBUG:Z

    const/4 v0, 0x0

    .line 87
    sput-object v0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mCachedDevice:Lcom/autochips/bluetooth/CachedBluetoothDevice;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/List;

    const-string v0, "CachedBluetoothDevice"

    const-string v1, "CachedBluetoothDevice device 111"

    .line 173
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-static {p1}, Lcom/autochips/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/autochips/bluetooth/LocalBluetoothManager;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/autochips/bluetooth/LocalBluetoothManager;

    if-eqz p1, :cond_0

    .line 180
    iput-object p2, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 182
    invoke-direct {p0}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->fillData()V

    return-void

    .line 176
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot use CachedBluetoothDevice without Bluetooth hardware"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$100(Lcom/autochips/bluetooth/CachedBluetoothDevice;)Z
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->updateProfiles()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 71
    sget-boolean v0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->DEBUG:Z

    return v0
.end method

.method static synthetic access$302(Lcom/autochips/bluetooth/CachedBluetoothDevice;Z)Z
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mIsConnectingErrorPossible:Z

    return p1
.end method

.method static synthetic access$400(Lcom/autochips/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->connectAllProfiles()V

    return-void
.end method

.method private connectAllProfiles()V
    .locals 6

    .line 450
    invoke-direct {p0}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->ensurePaired()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 452
    :cond_0
    sget-boolean v0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->DEBUG:Z

    const-string v1, "CachedBluetoothDevice"

    if-eqz v0, :cond_1

    const-string v0, "connectAllProfiles..."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x1

    .line 455
    iput-boolean v0, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mIsConnectingErrorPossible:Z

    .line 457
    iget-object v0, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothProfileManager$Profile;

    .line 458
    sget-boolean v3, Lcom/autochips/bluetooth/CachedBluetoothDevice;->DEBUG:Z

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "check profile connectable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothProfileManager$Profile;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_3
    invoke-direct {p0, v2}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->isConnectableProfile(Landroid/bluetooth/BluetoothProfileManager$Profile;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_PBAP_Client:Landroid/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothProfileManager$Profile;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_A2DP_SINK:Landroid/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothProfileManager$Profile;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_AVRCP_CT:Landroid/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothProfileManager$Profile;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_DUN_DT:Landroid/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothProfileManager$Profile;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_HID:Landroid/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothProfileManager$Profile;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 465
    sget-boolean v3, Lcom/autochips/bluetooth/CachedBluetoothDevice;->DEBUG:Z

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connect profile : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothProfileManager$Profile;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_4
    iget-object v3, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/autochips/bluetooth/LocalBluetoothManager;

    invoke-static {v3}, Lcom/autochips/bluetooth/LocalBluetoothProfileManager;->getProfileManager(Lcom/autochips/bluetooth/LocalBluetoothManager;)Lcom/autochips/bluetooth/LocalBluetoothProfileManager;

    move-result-object v3

    if-nez v3, :cond_5

    return-void

    .line 470
    :cond_5
    iget-object v4, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Lcom/autochips/bluetooth/LocalBluetoothProfileManager;->setPreferred(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothProfileManager$Profile;Z)V

    .line 471
    invoke-direct {p0, p0, v2}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->disconnectConnected(Lcom/autochips/bluetooth/CachedBluetoothDevice;Landroid/bluetooth/BluetoothProfileManager$Profile;)V

    .line 472
    invoke-direct {p0, p0, v2}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->connectInt(Lcom/autochips/bluetooth/CachedBluetoothDevice;Landroid/bluetooth/BluetoothProfileManager$Profile;)Z

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method private connectInt(Lcom/autochips/bluetooth/CachedBluetoothDevice;Landroid/bluetooth/BluetoothProfileManager$Profile;)Z
    .locals 5

    .line 538
    invoke-direct {p1}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->ensurePaired()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 540
    :cond_0
    sget-boolean v0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->DEBUG:Z

    const-string v2, " to "

    const-string v3, "CachedBluetoothDevice"

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connectInt "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothProfileManager$Profile;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :cond_1
    iget-object v0, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/autochips/bluetooth/LocalBluetoothManager;

    invoke-static {v0}, Lcom/autochips/bluetooth/LocalBluetoothProfileManager;->getProfileManager(Lcom/autochips/bluetooth/LocalBluetoothManager;)Lcom/autochips/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    .line 547
    :cond_2
    iget-object v4, p1, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v4, p2}, Lcom/autochips/bluetooth/LocalBluetoothProfileManager;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothProfileManager$Profile;)I

    move-result v4

    .line 549
    invoke-static {v4}, Lcom/autochips/bluetooth/SettingsBtStatus;->isConnectionStatusConnected(I)Z

    move-result v4

    if-nez v4, :cond_5

    .line 550
    iget-object v4, p1, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v4, p2}, Lcom/autochips/bluetooth/LocalBluetoothProfileManager;->connect(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothProfileManager$Profile;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 551
    sget-boolean p1, Lcom/autochips/bluetooth/CachedBluetoothDevice;->DEBUG:Z

    if-eqz p1, :cond_3

    .line 552
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Command sent successfully:CONNECT "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->describe(Landroid/bluetooth/BluetoothProfileManager$Profile;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 p1, 0x1

    return p1

    .line 557
    :cond_4
    sget-boolean v0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->DEBUG:Z

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to connect "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothProfileManager$Profile;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 560
    :cond_5
    sget-boolean p1, Lcom/autochips/bluetooth/CachedBluetoothDevice;->DEBUG:Z

    if-eqz p1, :cond_6

    const-string p1, "Already connected"

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_0
    return v1
.end method

.method private connectWithoutResettingTimer()V
    .locals 2

    .line 370
    sget-boolean v0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CachedBluetoothDevice"

    const-string v1, "connectWithoutResettingTimer..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 373
    new-instance v0, Lcom/autochips/bluetooth/CachedBluetoothDevice$waitUuidThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/autochips/bluetooth/CachedBluetoothDevice$waitUuidThread;-><init>(Lcom/autochips/bluetooth/CachedBluetoothDevice;Lcom/autochips/bluetooth/CachedBluetoothDevice$1;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mWaitUuidThread:Ljava/lang/Thread;

    .line 374
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 378
    iput-boolean v0, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mIsConnectingErrorPossible:Z

    .line 397
    invoke-direct {p0}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->connectAllProfiles()V

    :goto_0
    return-void
.end method

.method public static convertPinToBytes(Ljava/lang/String;)[B
    .locals 0

    .line 200
    invoke-static {p0}, Landroid/bluetooth/BluetoothDevice;->convertPinToBytes(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method private describe(Landroid/bluetooth/BluetoothProfileManager$Profile;)Ljava/lang/String;
    .locals 0

    .line 148
    invoke-direct {p0, p0, p1}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->describe(Lcom/autochips/bluetooth/CachedBluetoothDevice;Landroid/bluetooth/BluetoothProfileManager$Profile;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private describe(Lcom/autochips/bluetooth/CachedBluetoothDevice;Landroid/bluetooth/BluetoothProfileManager$Profile;)Ljava/lang/String;
    .locals 2

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Address:"

    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string p1, " Profile:"

    .line 141
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothProfileManager$Profile;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private disconnectConnected(Lcom/autochips/bluetooth/CachedBluetoothDevice;Landroid/bluetooth/BluetoothProfileManager$Profile;)V
    .locals 4

    .line 515
    sget-boolean v0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CachedBluetoothDevice"

    const-string v1, "disconnectConnected(profile)..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/autochips/bluetooth/LocalBluetoothManager;

    invoke-static {v0}, Lcom/autochips/bluetooth/LocalBluetoothProfileManager;->getProfileManager(Lcom/autochips/bluetooth/LocalBluetoothManager;)Lcom/autochips/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 520
    :cond_1
    iget-object v1, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/autochips/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/autochips/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v1

    .line 522
    invoke-virtual {v0, p2}, Lcom/autochips/bluetooth/LocalBluetoothProfileManager;->getConnectedDevices(Landroid/bluetooth/BluetoothProfileManager$Profile;)Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 526
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 527
    invoke-virtual {v1, v2}, Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/autochips/bluetooth/CachedBluetoothDevice;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 530
    invoke-virtual {v2, p1}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 531
    invoke-direct {p0, v2, p2}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->disconnectInt(Lcom/autochips/bluetooth/CachedBluetoothDevice;Landroid/bluetooth/BluetoothProfileManager$Profile;)Z

    goto :goto_0

    :cond_4
    return-void
.end method

.method private disconnectInt(Lcom/autochips/bluetooth/CachedBluetoothDevice;Landroid/bluetooth/BluetoothProfileManager$Profile;)Z
    .locals 4

    .line 296
    iget-object v0, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/autochips/bluetooth/LocalBluetoothManager;

    invoke-static {v0}, Lcom/autochips/bluetooth/LocalBluetoothProfileManager;->getProfileManager(Lcom/autochips/bluetooth/LocalBluetoothManager;)Lcom/autochips/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 300
    :cond_0
    sget-boolean v2, Lcom/autochips/bluetooth/CachedBluetoothDevice;->DEBUG:Z

    const-string v3, "CachedBluetoothDevice"

    if-eqz v2, :cond_1

    const-string v2, "disconnectInt..."

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_1
    iget-object v2, p1, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2, p2}, Lcom/autochips/bluetooth/LocalBluetoothProfileManager;->isConnected(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothProfileManager$Profile;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 302
    iget-object p1, p1, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1, p2}, Lcom/autochips/bluetooth/LocalBluetoothProfileManager;->disconnect(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothProfileManager$Profile;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 303
    sget-boolean p1, Lcom/autochips/bluetooth/CachedBluetoothDevice;->DEBUG:Z

    if-eqz p1, :cond_2

    .line 304
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Command sent successfully:DISCONNECT "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->describe(Landroid/bluetooth/BluetoothProfileManager$Profile;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method

.method private dispatchAttributesChanged()V
    .locals 3

    .line 1255
    iget-object v0, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 1256
    :try_start_0
    iget-object v1, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autochips/bluetooth/CachedBluetoothDevice$Callback;

    .line 1257
    invoke-interface {v2, p0}, Lcom/autochips/bluetooth/CachedBluetoothDevice$Callback;->onDeviceAttributesChanged(Lcom/autochips/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0

    .line 1259
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

.method private ensurePaired()Z
    .locals 2

    .line 576
    invoke-virtual {p0}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 577
    invoke-virtual {p0}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->pair()V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private fetchBtClass()V
    .locals 1

    .line 834
    iget-object v0, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    return-void
.end method

.method private fetchName()V
    .locals 2

    .line 669
    iget-object v0, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 671
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 672
    iget-object v0, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 673
    sget-boolean v0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Default to address. Device has no name (yet) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CachedBluetoothDevice"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private fillData()V
    .locals 1

    .line 635
    invoke-direct {p0}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->fetchName()V

    .line 636
    invoke-direct {p0}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->fetchBtClass()V

    .line 637
    invoke-direct {p0}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->updateProfiles()Z

    const/4 v0, 0x0

    .line 639
    iput-boolean v0, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mVisible:Z

    .line 641
    invoke-direct {p0}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    return-void
.end method

.method public static getCachedDevice(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)Lcom/autochips/bluetooth/CachedBluetoothDevice;
    .locals 1

    .line 194
    new-instance v0, Lcom/autochips/bluetooth/CachedBluetoothDevice;

    invoke-direct {v0, p0, p1}, Lcom/autochips/bluetooth/CachedBluetoothDevice;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V

    sput-object v0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mCachedDevice:Lcom/autochips/bluetooth/CachedBluetoothDevice;

    return-object v0
.end method

.method public static isBluetoothDock(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    .line 222
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result p0

    return p0
.end method

.method private isConnectableProfile(Landroid/bluetooth/BluetoothProfileManager$Profile;)Z
    .locals 1

    .line 1043
    sget-object v0, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_HEADSET:Landroid/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothProfileManager$Profile;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_FTP_Client:Landroid/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothProfileManager$Profile;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_DUN:Landroid/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothProfileManager$Profile;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_HID:Landroid/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothProfileManager$Profile;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_PBAP:Landroid/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothProfileManager$Profile;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_PAN_NAP:Landroid/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothProfileManager$Profile;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_PAN_GN:Landroid/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothProfileManager$Profile;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_PRXM:Landroid/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothProfileManager$Profile;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_HF:Landroid/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothProfileManager$Profile;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_OPP_Client:Landroid/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothProfileManager$Profile;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_PBAP_Client:Landroid/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothProfileManager$Profile;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_A2DP_SINK:Landroid/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothProfileManager$Profile;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_AVRCP_CT:Landroid/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothProfileManager$Profile;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_DUN_DT:Landroid/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothProfileManager$Profile;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isConnectableToMultiDevices(Landroid/bluetooth/BluetoothProfileManager$Profile;)Z
    .locals 2

    .line 1071
    sget-boolean v0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1072
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isConnectableToMultiDevices:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothProfileManager$Profile;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CachedBluetoothDevice"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    :cond_0
    sget-object v0, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_HID:Landroid/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothProfileManager$Profile;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_PAN_GN:Landroid/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothProfileManager$Profile;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_PAN_NAP:Landroid/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothProfileManager$Profile;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isPreferredConnectableProfile(Landroid/bluetooth/BluetoothProfileManager$Profile;)Z
    .locals 1

    .line 1066
    sget-object v0, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_HEADSET:Landroid/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothProfileManager$Profile;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public static removeBond(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    .line 218
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    move-result p0

    return p0
.end method

.method public static setPasskey(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 0

    .line 204
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDevice;->setPasskey(I)Z

    move-result p0

    return p0
.end method

.method public static setRemoteOutOfBandData(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    .line 208
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->setRemoteOutOfBandData()Z

    move-result p0

    return p0
.end method

.method private showRenameDialog()V
    .locals 0

    return-void
.end method

.method private updateProfiles()Z
    .locals 9

    .line 838
    iget-object v0, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    const-string v1, "CachedBluetoothDevice"

    if-nez v0, :cond_1

    .line 841
    sget-object v0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager;->HF_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

    .line 843
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "uudis = null?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "yes"

    goto :goto_0

    :cond_0
    const-string v2, "no"

    :goto_0
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    :cond_1
    iget-object v2, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/autochips/bluetooth/LocalBluetoothProfileManager;->updateProfiles([Landroid/os/ParcelUuid;Ljava/util/List;)V

    .line 849
    sget-boolean v2, Lcom/autochips/bluetooth/CachedBluetoothDevice;->DEBUG:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_7

    .line 850
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updating profiles for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    iget-object v2, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v2, :cond_5

    .line 856
    invoke-virtual {v2, v4}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v5

    iget-object v6, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    sget-object v7, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_HEADSET:Landroid/bluetooth/BluetoothProfileManager$Profile;

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eq v5, v6, :cond_2

    const-string v5, "headset classbits != uuid"

    .line 859
    invoke-static {v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    :cond_2
    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v5

    iget-object v6, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    sget-object v7, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_A2DP:Landroid/bluetooth/BluetoothProfileManager$Profile;

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eq v5, v6, :cond_3

    const-string v5, "a2dp classbits != uuid"

    .line 865
    invoke-static {v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v5, 0x2

    .line 869
    invoke-virtual {v2, v5}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v6

    iget-object v7, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    sget-object v8, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_OPP_Server:Landroid/bluetooth/BluetoothProfileManager$Profile;

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-ne v6, v7, :cond_4

    invoke-virtual {v2, v5}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v5

    iget-object v6, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    sget-object v7, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_OPP_Client:Landroid/bluetooth/BluetoothProfileManager$Profile;

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eq v5, v6, :cond_5

    :cond_4
    const-string v5, "opp classbits != uuid"

    .line 874
    invoke-static {v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-eqz v2, :cond_6

    .line 881
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Class: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const-string v2, "UUID:"

    .line 882
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    :goto_1
    array-length v2, v0

    if-ge v4, v2, :cond_7

    .line 884
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_7
    return v3
.end method


# virtual methods
.method public askDisconnect()V
    .locals 4

    .line 314
    iget-object v0, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/autochips/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/LocalBluetoothManager;->getForegroundActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 317
    invoke-virtual {p0}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->disconnect()V

    return-void

    .line 323
    :cond_0
    invoke-virtual {p0}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    .line 324
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "handsfree/headset"

    .line 330
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " will be disconnected"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 332
    new-instance v2, Lcom/autochips/bluetooth/CachedBluetoothDevice$1;

    invoke-direct {v2, p0}, Lcom/autochips/bluetooth/CachedBluetoothDevice$1;-><init>(Lcom/autochips/bluetooth/CachedBluetoothDevice;)V

    .line 337
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "ok"

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "cancel"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public compareTo(Lcom/autochips/bluetooth/CachedBluetoothDevice;)I
    .locals 5

    .line 1285
    invoke-virtual {p1}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v0

    invoke-virtual {p0}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v0

    .line 1290
    :cond_0
    invoke-virtual {p1}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0xc

    if-ne v0, v3, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    invoke-virtual {p0}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v4

    if-ne v4, v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    sub-int/2addr v0, v1

    if-eqz v0, :cond_3

    return v0

    .line 1296
    :cond_3
    iget-boolean v0, p1, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mVisible:Z

    iget-boolean v1, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mVisible:Z

    sub-int/2addr v0, v1

    if-eqz v0, :cond_4

    return v0

    .line 1301
    :cond_4
    iget-short v0, p1, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mRssi:S

    iget-short v1, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mRssi:S

    sub-int/2addr v0, v1

    if-eqz v0, :cond_5

    return v0

    .line 1306
    :cond_5
    invoke-virtual {p0}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 71
    check-cast p1, Lcom/autochips/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->compareTo(Lcom/autochips/bluetooth/CachedBluetoothDevice;)I

    move-result p1

    return p1
.end method

.method public connect()V
    .locals 2

    .line 349
    invoke-direct {p0}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->ensurePaired()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 351
    :cond_0
    sget-boolean v0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "CachedBluetoothDevice"

    const-string v1, "CacheBluetoothDevice Connect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_1
    iget-object v0, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/autochips/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 354
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 355
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 358
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mConnectAttempted:J

    .line 360
    invoke-direct {p0}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->connectWithoutResettingTimer()V

    return-void
.end method

.method public connect(Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;)V
    .locals 2

    .line 496
    invoke-static {}, Landroid/bluetooth/BluetoothProfileManager$Profile;->values()[Landroid/bluetooth/BluetoothProfileManager$Profile;

    move-result-object v0

    invoke-virtual {p1}, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    .line 497
    iget-object v0, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/autochips/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 498
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 499
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 501
    :cond_0
    sget-boolean v0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "CachedBluetoothDevice"

    const-string v1, "connect(profile)..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mConnectAttempted:J

    const/4 v0, 0x1

    .line 505
    iput-boolean v0, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mIsConnectingErrorPossible:Z

    .line 506
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->isConnectableToMultiDevices(Landroid/bluetooth/BluetoothProfileManager$Profile;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 507
    invoke-direct {p0, p0, p1}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->disconnectConnected(Lcom/autochips/bluetooth/CachedBluetoothDevice;Landroid/bluetooth/BluetoothProfileManager$Profile;)V

    .line 509
    :cond_2
    invoke-direct {p0, p0, p1}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->connectInt(Lcom/autochips/bluetooth/CachedBluetoothDevice;Landroid/bluetooth/BluetoothProfileManager$Profile;)Z

    return-void
.end method

.method public disconnect()V
    .locals 2

    .line 268
    iget-object v0, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/autochips/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 269
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 270
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 272
    :cond_0
    sget-boolean v0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "CachedBluetoothDevice"

    const-string v1, "disconnect()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothProfileManager$Profile;

    .line 276
    invoke-direct {p0, p0, v1}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->disconnectInt(Lcom/autochips/bluetooth/CachedBluetoothDevice;Landroid/bluetooth/BluetoothProfileManager$Profile;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public disconnect(Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;)V
    .locals 1

    .line 290
    invoke-static {}, Landroid/bluetooth/BluetoothProfileManager$Profile;->values()[Landroid/bluetooth/BluetoothProfileManager$Profile;

    move-result-object v0

    invoke-virtual {p1}, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    .line 291
    invoke-direct {p0, p0, p1}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->disconnectInt(Lcom/autochips/bluetooth/CachedBluetoothDevice;Landroid/bluetooth/BluetoothProfileManager$Profile;)Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 1269
    instance-of v0, p1, Lcom/autochips/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_0

    .line 1273
    iget-object v0, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    check-cast p1, Lcom/autochips/bluetooth/CachedBluetoothDevice;

    iget-object p1, p1, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 1270
    :cond_0
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1
.end method

.method public getBondState()I
    .locals 1

    .line 695
    iget-object v0, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    return v0
.end method

.method public getBtClassDrawable()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getConnectableProfiles()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothProfileManager$Profile;",
            ">;"
        }
    .end annotation

    .line 1033
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1034
    iget-object v1, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothProfileManager$Profile;

    .line 1035
    invoke-direct {p0, v2}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->isConnectableProfile(Landroid/bluetooth/BluetoothProfileManager$Profile;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1036
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 645
    iget-object v0, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 649
    iget-object v0, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1278
    iget-object v0, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAutoConnected()Z
    .locals 5

    .line 732
    iget-object v0, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothProfileManager$Profile;

    .line 733
    sget-boolean v2, Lcom/autochips/bluetooth/CachedBluetoothDevice;->DEBUG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAutoConnected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CachedBluetoothDevice"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 736
    :cond_1
    iget-object v0, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/autochips/bluetooth/LocalBluetoothManager;

    invoke-static {v0}, Lcom/autochips/bluetooth/LocalBluetoothProfileManager;->getProfileManager(Lcom/autochips/bluetooth/LocalBluetoothManager;)Lcom/autochips/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    return v1

    .line 741
    :cond_2
    iget-object v2, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    sget-object v3, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_A2DP:Landroid/bluetooth/BluetoothProfileManager$Profile;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 742
    iget-object v2, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    sget-object v4, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_A2DP:Landroid/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {v0, v2, v4}, Lcom/autochips/bluetooth/LocalBluetoothProfileManager;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothProfileManager$Profile;)I

    move-result v2

    .line 744
    invoke-static {v2}, Lcom/autochips/bluetooth/SettingsBtStatus;->isConnectionStatusConnected(I)Z

    move-result v2

    if-eqz v2, :cond_3

    return v3

    .line 751
    :cond_3
    iget-object v2, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    sget-object v4, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_SIMAP:Landroid/bluetooth/BluetoothProfileManager$Profile;

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 752
    iget-object v2, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    sget-object v4, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_SIMAP:Landroid/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {v0, v2, v4}, Lcom/autochips/bluetooth/LocalBluetoothProfileManager;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothProfileManager$Profile;)I

    move-result v2

    .line 754
    invoke-static {v2}, Lcom/autochips/bluetooth/SettingsBtStatus;->isConnectionStatusConnected(I)Z

    move-result v2

    if-eqz v2, :cond_4

    return v3

    .line 759
    :cond_4
    iget-object v2, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    sget-object v4, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_HEADSET:Landroid/bluetooth/BluetoothProfileManager$Profile;

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 760
    iget-object v2, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    sget-object v4, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_HEADSET:Landroid/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {v0, v2, v4}, Lcom/autochips/bluetooth/LocalBluetoothProfileManager;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothProfileManager$Profile;)I

    move-result v0

    .line 762
    invoke-static {v0}, Lcom/autochips/bluetooth/SettingsBtStatus;->isConnectionStatusConnected(I)Z

    move-result v0

    if-eqz v0, :cond_5

    return v3

    :cond_5
    return v1
.end method

.method public isBusy()Z
    .locals 5

    .line 780
    iget-object v0, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothProfileManager$Profile;

    .line 781
    iget-object v4, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/autochips/bluetooth/LocalBluetoothManager;

    invoke-static {v4}, Lcom/autochips/bluetooth/LocalBluetoothProfileManager;->getProfileManager(Lcom/autochips/bluetooth/LocalBluetoothManager;)Lcom/autochips/bluetooth/LocalBluetoothProfileManager;

    move-result-object v4

    if-nez v4, :cond_1

    return v3

    .line 785
    :cond_1
    iget-object v3, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, v3, v1}, Lcom/autochips/bluetooth/LocalBluetoothProfileManager;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothProfileManager$Profile;)I

    move-result v1

    .line 786
    invoke-static {v1}, Lcom/autochips/bluetooth/SettingsBtStatus;->isConnectionStatusBusy(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    .line 791
    :cond_2
    invoke-virtual {p0}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_3

    return v2

    :cond_3
    return v3
.end method

.method public isConnected()Z
    .locals 4

    .line 711
    iget-object v0, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothProfileManager$Profile;

    .line 712
    iget-object v3, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/autochips/bluetooth/LocalBluetoothManager;

    invoke-static {v3}, Lcom/autochips/bluetooth/LocalBluetoothProfileManager;->getProfileManager(Lcom/autochips/bluetooth/LocalBluetoothManager;)Lcom/autochips/bluetooth/LocalBluetoothProfileManager;

    move-result-object v3

    if-nez v3, :cond_1

    return v2

    .line 716
    :cond_1
    iget-object v2, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v2, v1}, Lcom/autochips/bluetooth/LocalBluetoothProfileManager;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothProfileManager$Profile;)I

    move-result v1

    .line 717
    invoke-static {v1}, Lcom/autochips/bluetooth/SettingsBtStatus;->isConnectionStatusConnected(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_2
    return v2
.end method

.method public isSupportConnectedProfile()Z
    .locals 3

    .line 770
    iget-object v0, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothProfileManager$Profile;

    .line 771
    sget-object v2, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_HF:Landroid/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothProfileManager$Profile;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 684
    iget-boolean v0, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mVisible:Z

    return v0
.end method

.method onBondingDockConnect()V
    .locals 0

    .line 366
    invoke-virtual {p0}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->connect()V

    return-void
.end method

.method public onBondingStateChanged(I)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xa

    if-ne p1, v1, :cond_0

    .line 926
    iget-object v1, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 927
    iput-boolean v0, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mConnectAfterPairing:Z

    .line 930
    :cond_0
    invoke-virtual {p0}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->refresh()V

    const/16 v1, 0xc

    if-ne p1, v1, :cond_3

    .line 933
    iget-object p1, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 934
    invoke-virtual {p0}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->onBondingDockConnect()V

    goto :goto_0

    .line 935
    :cond_1
    iget-boolean p1, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mConnectAfterPairing:Z

    if-eqz p1, :cond_2

    .line 936
    invoke-virtual {p0}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->connect()V

    .line 938
    :cond_2
    :goto_0
    iput-boolean v0, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mConnectAfterPairing:Z

    .line 939
    invoke-direct {p0}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->updateProfiles()Z

    :cond_3
    return-void
.end method

.method public onClicked()V
    .locals 3

    .line 231
    invoke-virtual {p0}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    .line 232
    sget-boolean v1, Lcom/autochips/bluetooth/CachedBluetoothDevice;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClicked bondState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CachedBluetoothDevice"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_0
    invoke-virtual {p0}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 237
    invoke-virtual {p0}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->askDisconnect()V

    goto :goto_0

    :cond_1
    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    .line 239
    invoke-virtual {p0}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->connect()V

    goto :goto_0

    :cond_2
    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    .line 241
    invoke-virtual {p0}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->pair()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)V
    .locals 0

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 1

    .line 1082
    iget-object p1, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/autochips/bluetooth/LocalBluetoothManager;

    invoke-virtual {p1}, Lcom/autochips/bluetooth/LocalBluetoothManager;->getBluetoothState()I

    move-result p1

    const/16 v0, 0xc

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1087
    :cond_0
    invoke-virtual {p0}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->getBondState()I

    .line 1088
    invoke-virtual {p0}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->isConnected()Z

    .line 1091
    iget-object p1, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothProfileManager$Profile;

    .line 1092
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->isConnectableProfile(Landroid/bluetooth/BluetoothProfileManager$Profile;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_2
    :goto_0
    return-void
.end method

.method public onProfileStateChanged(Landroid/bluetooth/BluetoothProfileManager$Profile;I)V
    .locals 2

    .line 152
    sget-boolean v0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onProfileStateChanged: profile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothProfileManager$Profile;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " newProfileState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CachedBluetoothDevice"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/autochips/bluetooth/LocalBluetoothManager;

    invoke-static {v0}, Lcom/autochips/bluetooth/LocalBluetoothProfileManager;->getProfileManager(Lcom/autochips/bluetooth/LocalBluetoothManager;)Lcom/autochips/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 162
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/autochips/bluetooth/LocalBluetoothProfileManager;->convertState(Landroid/bluetooth/BluetoothProfileManager$Profile;I)I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 166
    iget-object p2, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 167
    iget-object p2, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public onUuidChanged()V
    .locals 5

    .line 904
    invoke-direct {p0}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->updateProfiles()Z

    .line 906
    sget-boolean v0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 907
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUuidChanged: Time since last connect"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mConnectAttempted:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CachedBluetoothDevice"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-wide v0, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mConnectAttempted:J

    const-wide/16 v2, 0x1388

    add-long/2addr v0, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 919
    invoke-direct {p0}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->connectWithoutResettingTimer()V

    .line 921
    :cond_1
    invoke-direct {p0}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    return-void
.end method

.method public pair()V
    .locals 2

    .line 585
    iget-object v0, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/autochips/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 588
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 589
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    :cond_0
    const/4 v0, 0x1

    .line 598
    iput-boolean v0, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mConnectAfterPairing:Z

    return-void
.end method

.method public refresh()V
    .locals 0

    .line 680
    invoke-direct {p0}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    return-void
.end method

.method public refreshBtClass()V
    .locals 0

    .line 896
    invoke-direct {p0}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->fetchBtClass()V

    .line 897
    invoke-direct {p0}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    return-void
.end method

.method public refreshName()V
    .locals 0

    .line 664
    invoke-direct {p0}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->fetchName()V

    .line 665
    invoke-direct {p0}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    return-void
.end method

.method public registerCallback(Lcom/autochips/bluetooth/CachedBluetoothDevice$Callback;)V
    .locals 2

    .line 1243
    iget-object v0, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 1244
    :try_start_0
    iget-object v1, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1245
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public renameRemoteDevice(Ljava/lang/String;)Z
    .locals 1

    .line 1235
    iget-object v0, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->setName(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setBtClass(Landroid/bluetooth/BluetoothClass;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 944
    iget-object v0, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    if-eq v0, p1, :cond_0

    .line 945
    iput-object p1, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    .line 946
    invoke-direct {p0}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    :cond_0
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    .line 653
    iget-object v0, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 654
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 655
    iget-object p1, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    goto :goto_0

    .line 657
    :cond_0
    iput-object p1, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 659
    :goto_0
    invoke-direct {p0}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    :cond_1
    return-void
.end method

.method setRssi(S)V
    .locals 1

    .line 699
    iget-short v0, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mRssi:S

    if-eq v0, p1, :cond_0

    .line 700
    iput-short p1, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mRssi:S

    .line 701
    invoke-direct {p0}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    :cond_0
    return-void
.end method

.method setVisible(Z)V
    .locals 1

    .line 688
    iget-boolean v0, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mVisible:Z

    if-eq v0, p1, :cond_0

    .line 689
    iput-boolean p1, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mVisible:Z

    .line 690
    invoke-direct {p0}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    :cond_0
    return-void
.end method

.method public showConnectingError()V
    .locals 1

    .line 566
    iget-boolean v0, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mIsConnectingErrorPossible:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 568
    iput-boolean v0, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mIsConnectingErrorPossible:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1264
    iget-object v0, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unpair()V
    .locals 4

    .line 603
    iget-object v0, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/autochips/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 604
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 605
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 608
    :cond_0
    invoke-virtual {p0}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->disconnect()V

    .line 610
    invoke-virtual {p0}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    .line 613
    iget-object v1, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->cancelBondProcess()Z

    :cond_1
    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    .line 617
    invoke-virtual {p0}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 619
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "CachedBluetoothDevice"

    if-eqz v0, :cond_2

    .line 621
    sget-boolean v0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 622
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Command sent successfully:REMOVE_BOND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->describe(Landroid/bluetooth/BluetoothProfileManager$Profile;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 625
    :cond_2
    sget-boolean v0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Framework rejected command immediately:REMOVE_BOND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->describe(Landroid/bluetooth/BluetoothProfileManager$Profile;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method public unregisterCallback(Lcom/autochips/bluetooth/CachedBluetoothDevice$Callback;)V
    .locals 2

    .line 1249
    iget-object v0, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 1250
    :try_start_0
    iget-object v1, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1251
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
