.class public Lcom/autochips/bluetooth/LocalBluetoothProfileManager;
.super Ljava/lang/Object;
.source "LocalBluetoothProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;
    }
.end annotation


# static fields
.field public static final A2DPSink_DEVICE_ADDR:Ljava/lang/String; = "device_addr"

.field public static final A2DP_ACTION_SINK_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

.field public static final A2DP_EXTRA_PREVIOUS_SINK_STATE:Ljava/lang/String; = "android.bluetooth.a2dp.extra.PREVIOUS_SINK_STATE"

.field public static final A2DP_EXTRA_SINK_STATE:Ljava/lang/String; = "android.bluetooth.a2dp.extra.SINK_STATE"

.field static final A2DP_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

.field public static final A2DP_SINK_UUIDS:[Landroid/os/ParcelUuid;

.field public static final ACTION_ALL_PROFILES_DISABLED:Ljava/lang/String; = "android.bluetooth.profilemanager.action.ALL_PROFILES_DISABLED"

.field public static final ACTION_DISABLE_PROFILES:Ljava/lang/String; = "android.bluetooth.profilemanager.action.DISABLE_PROFILES"

.field public static final ACTION_PROFILE_STATE_UPDATE:Ljava/lang/String; = "android.bluetooth.profilemanager.action.PROFILE_CHANGED"

.field public static final ACTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.profilemanager.action.STATE_CHANGED"

.field public static final ACTION_TIMEOUT:Ljava/lang/String; = "android.bluetooth.profilemanager.action.TIMEOUT"

.field public static final ACTION_UPDATE_NOTIFICATION:Ljava/lang/String; = "android.bluetooth.profilemanager.action.UPDATE_ NOTIFICATION"

.field public static final AVRCP_CT_UUIDS:[Landroid/os/ParcelUuid;

.field static final BIP_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field static final BPP_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

.field private static DEBUG:Z = false

.field static final DUN_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

.field public static final EXTRA_NEW_STATE:Ljava/lang/String; = "android.bluetooth.profilemanager.extra.EXTRA_NEW_STATE"

.field public static final EXTRA_PREVIOUS_STATE:Ljava/lang/String; = "android.bluetooth.profilemanager.extra.EXTRA_PREVIOUS_STATE"

.field public static final EXTRA_PROFILE:Ljava/lang/String; = "android.bluetooth.profilemanager.extra.ATCPROFILE"

.field static final FTP_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

.field static final HEADSET_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

.field public static final HF_DEVICE_ADDR:Ljava/lang/String; = "device_addr"

.field static final HF_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

.field static final HID_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

.field private static INSTANCE_LOCK:Ljava/lang/Object; = null

.field static final OPP_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

.field static final PAN_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

.field static final PBAP_SERVER_UUIDS:[Landroid/os/ParcelUuid;

.field static final PRX_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

.field public static final STATE_ABNORMAL:I = 0xe

.field public static final STATE_ACTIVE:I = 0x0

.field public static final STATE_BROWSE_CONNECTED:I = 0x11

.field public static final STATE_BROWSE_DISCONNECTED:I = 0x12

.field public static final STATE_CONNECTED:I = 0x1

.field public static final STATE_CONNECTING:I = 0x3

.field public static final STATE_DISABLED:I = 0xd

.field public static final STATE_DISABLING:I = 0xc

.field public static final STATE_DISCONNECTED:I = 0x2

.field public static final STATE_DISCONNECTING:I = 0x4

.field public static final STATE_ENABLED:I = 0xb

.field public static final STATE_ENABLING:I = 0xa

.field public static final STATE_PLAYING:I = 0xf

.field public static final STATE_STANDSTILL:I = 0x13

.field public static final STATE_UNKNOWN:I = 0x5

.field private static final TAG:Ljava/lang/String; = "LocalBluetoothProfileManager"

.field private static mAdapter:Lcom/autochips/bluetooth/LocalBluetoothManager;

.field private static mContext:Landroid/content/Context;

.field private static mLocalManager:Lcom/autochips/bluetooth/LocalBluetoothManager;

.field private static mLocalProfileMananger:Lcom/autochips/bluetooth/LocalBluetoothProfileManager;

.field private static mService:Landroid/bluetooth/BluetoothProfileManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 64
    sget-boolean v0, Lcom/autochips/bluetooth/BtEmulatorDebug;->mDebugAll:Z

    sget-boolean v1, Lcom/autochips/bluetooth/BtEmulatorDebug;->mDebugSettings:Z

    and-int/2addr v0, v1

    sput-boolean v0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager;->DEBUG:Z

    const/4 v0, 0x2

    new-array v1, v0, [Landroid/os/ParcelUuid;

    .line 71
    sget-object v2, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sput-object v1, Lcom/autochips/bluetooth/LocalBluetoothProfileManager;->HEADSET_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

    new-array v1, v0, [Landroid/os/ParcelUuid;

    .line 78
    sget-object v2, Landroid/bluetooth/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    aput-object v2, v1, v3

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->AdvAudioDist:Landroid/os/ParcelUuid;

    aput-object v2, v1, v4

    sput-object v1, Lcom/autochips/bluetooth/LocalBluetoothProfileManager;->A2DP_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

    new-array v1, v4, [Landroid/os/ParcelUuid;

    .line 81
    sget-object v2, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    aput-object v2, v1, v3

    sput-object v1, Lcom/autochips/bluetooth/LocalBluetoothProfileManager;->OPP_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

    new-array v1, v4, [Landroid/os/ParcelUuid;

    .line 85
    sget-object v2, Landroid/bluetooth/BluetoothUuid;->BppReceiver:Landroid/os/ParcelUuid;

    aput-object v2, v1, v3

    sput-object v1, Lcom/autochips/bluetooth/LocalBluetoothProfileManager;->BPP_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

    new-array v1, v4, [Landroid/os/ParcelUuid;

    .line 86
    sget-object v2, Landroid/bluetooth/BluetoothUuid;->BipResponder:Landroid/os/ParcelUuid;

    aput-object v2, v1, v3

    sput-object v1, Lcom/autochips/bluetooth/LocalBluetoothProfileManager;->BIP_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

    new-array v1, v4, [Landroid/os/ParcelUuid;

    .line 89
    sget-object v2, Landroid/bluetooth/BluetoothUuid;->Hid:Landroid/os/ParcelUuid;

    aput-object v2, v1, v3

    sput-object v1, Lcom/autochips/bluetooth/LocalBluetoothProfileManager;->HID_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

    new-array v1, v4, [Landroid/os/ParcelUuid;

    .line 91
    sget-object v2, Landroid/bluetooth/BluetoothUuid;->PANU:Landroid/os/ParcelUuid;

    aput-object v2, v1, v3

    sput-object v1, Lcom/autochips/bluetooth/LocalBluetoothProfileManager;->PAN_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

    new-array v1, v4, [Landroid/os/ParcelUuid;

    .line 178
    sget-object v2, Landroid/bluetooth/BluetoothUuid;->ObexFileTransfer:Landroid/os/ParcelUuid;

    aput-object v2, v1, v3

    sput-object v1, Lcom/autochips/bluetooth/LocalBluetoothProfileManager;->FTP_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

    new-array v1, v4, [Landroid/os/ParcelUuid;

    .line 180
    sget-object v2, Landroid/bluetooth/BluetoothUuid;->Proximity:Landroid/os/ParcelUuid;

    aput-object v2, v1, v3

    sput-object v1, Lcom/autochips/bluetooth/LocalBluetoothProfileManager;->PRX_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

    new-array v1, v0, [Landroid/os/ParcelUuid;

    .line 181
    sget-object v2, Landroid/bluetooth/BluetoothUuid;->HandsfreeAudioGateway:Landroid/os/ParcelUuid;

    aput-object v2, v1, v3

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->HeadsetAudioGateway:Landroid/os/ParcelUuid;

    aput-object v2, v1, v4

    sput-object v1, Lcom/autochips/bluetooth/LocalBluetoothProfileManager;->HF_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

    new-array v1, v4, [Landroid/os/ParcelUuid;

    .line 183
    sget-object v2, Landroid/bluetooth/BluetoothUuid;->PBAP_PSE:Landroid/os/ParcelUuid;

    aput-object v2, v1, v3

    sput-object v1, Lcom/autochips/bluetooth/LocalBluetoothProfileManager;->PBAP_SERVER_UUIDS:[Landroid/os/ParcelUuid;

    new-array v0, v0, [Landroid/os/ParcelUuid;

    .line 184
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->AudioSource:Landroid/os/ParcelUuid;

    aput-object v1, v0, v3

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->AdvAudioDist:Landroid/os/ParcelUuid;

    aput-object v1, v0, v4

    sput-object v0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager;->A2DP_SINK_UUIDS:[Landroid/os/ParcelUuid;

    new-array v0, v4, [Landroid/os/ParcelUuid;

    .line 186
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->AvrcpTarget:Landroid/os/ParcelUuid;

    aput-object v1, v0, v3

    sput-object v0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager;->AVRCP_CT_UUIDS:[Landroid/os/ParcelUuid;

    new-array v0, v4, [Landroid/os/ParcelUuid;

    .line 188
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->DUN:Landroid/os/ParcelUuid;

    aput-object v1, v0, v3

    sput-object v0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager;->DUN_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

    .line 201
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager;->INSTANCE_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z
    .locals 0

    .line 243
    invoke-static {p0, p1}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result p0

    return p0
.end method

.method public static getProfileManager(Lcom/autochips/bluetooth/LocalBluetoothManager;)Lcom/autochips/bluetooth/LocalBluetoothProfileManager;
    .locals 2

    .line 228
    sget-object v0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 229
    :try_start_0
    sget-object v1, Lcom/autochips/bluetooth/LocalBluetoothProfileManager;->mLocalProfileMananger:Lcom/autochips/bluetooth/LocalBluetoothProfileManager;

    if-nez v1, :cond_0

    .line 230
    new-instance v1, Lcom/autochips/bluetooth/LocalBluetoothProfileManager;

    invoke-direct {v1}, Lcom/autochips/bluetooth/LocalBluetoothProfileManager;-><init>()V

    sput-object v1, Lcom/autochips/bluetooth/LocalBluetoothProfileManager;->mLocalProfileMananger:Lcom/autochips/bluetooth/LocalBluetoothProfileManager;

    .line 233
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    invoke-static {p0}, Lcom/autochips/bluetooth/LocalBluetoothProfileManager;->init(Lcom/autochips/bluetooth/LocalBluetoothManager;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 236
    sget-object p0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager;->mLocalProfileMananger:Lcom/autochips/bluetooth/LocalBluetoothProfileManager;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    .line 233
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static init(Lcom/autochips/bluetooth/LocalBluetoothManager;)Z
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 210
    :cond_0
    sget-object v0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager;->mService:Landroid/bluetooth/BluetoothProfileManager;

    if-nez v0, :cond_1

    .line 211
    new-instance v0, Landroid/bluetooth/BluetoothProfileManager;

    invoke-virtual {p0}, Lcom/autochips/bluetooth/LocalBluetoothManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/bluetooth/BluetoothProfileManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager;->mService:Landroid/bluetooth/BluetoothProfileManager;

    .line 213
    :cond_1
    sput-object p0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager;->mAdapter:Lcom/autochips/bluetooth/LocalBluetoothManager;

    .line 214
    invoke-virtual {p0}, Lcom/autochips/bluetooth/LocalBluetoothManager;->getContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    const/4 p0, 0x1

    return p0
.end method

.method private log(Ljava/lang/String;)V
    .locals 2

    .line 613
    sget-boolean v0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[BT][profile manager]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LocalBluetoothProfileManager"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static updateProfiles([Landroid/os/ParcelUuid;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/ParcelUuid;",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothProfileManager$Profile;",
            ">;)V"
        }
    .end annotation

    .line 259
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 261
    sget-object v0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager;->HEADSET_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {p0, v0}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    .line 265
    sget-object v0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager;->A2DP_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {p0, v0}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    sget-object v0, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_A2DP:Landroid/bluetooth/BluetoothProfileManager$Profile;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    :cond_0
    sget-object v0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager;->HF_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {p0, v0}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    sget-object v0, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_HF:Landroid/bluetooth/BluetoothProfileManager$Profile;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    sget-object v0, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_HID:Landroid/bluetooth/BluetoothProfileManager$Profile;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    :cond_1
    sget-object v0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager;->PBAP_SERVER_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {p0, v0}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 275
    sget-object v0, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_PBAP_Client:Landroid/bluetooth/BluetoothProfileManager$Profile;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    :cond_2
    sget-object v0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager;->A2DP_SINK_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {p0, v0}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 279
    sget-object v0, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_A2DP_SINK:Landroid/bluetooth/BluetoothProfileManager$Profile;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    :cond_3
    sget-object v0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager;->AVRCP_CT_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {p0, v0}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 283
    sget-object v0, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_AVRCP_CT:Landroid/bluetooth/BluetoothProfileManager$Profile;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    :cond_4
    sget-object v0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager;->DUN_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {p0, v0}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 286
    sget-object p0, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_DUN_DT:Landroid/bluetooth/BluetoothProfileManager$Profile;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothProfileManager$Profile;)Z
    .locals 1

    .line 369
    sget-object v0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager;->mService:Landroid/bluetooth/BluetoothProfileManager;

    invoke-virtual {v0, p2, p1}, Landroid/bluetooth/BluetoothProfileManager;->connect(Landroid/bluetooth/BluetoothProfileManager$Profile;Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    return p1
.end method

.method public convertState(Landroid/bluetooth/BluetoothProfileManager$Profile;I)I
    .locals 7

    .line 419
    sget-object v0, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_HEADSET:Landroid/bluetooth/BluetoothProfileManager$Profile;

    const/4 v1, 0x5

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne p1, v0, :cond_3

    if-eqz p2, :cond_2

    if-eq p2, v4, :cond_1

    if-eq p2, v3, :cond_0

    return v1

    :cond_0
    return v4

    :cond_1
    return v2

    :cond_2
    return v3

    .line 430
    :cond_3
    sget-object v0, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_A2DP:Landroid/bluetooth/BluetoothProfileManager$Profile;

    const/4 v5, 0x0

    const/4 v6, 0x4

    if-ne p1, v0, :cond_9

    if-eqz p2, :cond_8

    if-eq p2, v4, :cond_7

    if-eq p2, v3, :cond_6

    if-eq p2, v2, :cond_5

    const/16 p1, 0xa

    if-eq p2, p1, :cond_4

    return v1

    :cond_4
    return v5

    :cond_5
    return v6

    :cond_6
    return v4

    :cond_7
    return v2

    :cond_8
    return v3

    .line 445
    :cond_9
    sget-object v0, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_PBAP:Landroid/bluetooth/BluetoothProfileManager$Profile;

    if-ne p1, v0, :cond_d

    if-eqz p2, :cond_c

    if-eq p2, v4, :cond_b

    if-eq p2, v3, :cond_a

    return v1

    :cond_a
    return v4

    :cond_b
    return v2

    :cond_c
    return v3

    .line 456
    :cond_d
    sget-object v0, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_A2DP_SINK:Landroid/bluetooth/BluetoothProfileManager$Profile;

    if-eq p1, v0, :cond_16

    sget-object v0, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_AVRCP_CT:Landroid/bluetooth/BluetoothProfileManager$Profile;

    if-ne p1, v0, :cond_e

    goto :goto_1

    .line 479
    :cond_e
    sget-object v0, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_HF:Landroid/bluetooth/BluetoothProfileManager$Profile;

    if-eq p1, v0, :cond_12

    sget-object v0, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_HID:Landroid/bluetooth/BluetoothProfileManager$Profile;

    if-ne p1, v0, :cond_f

    goto :goto_0

    :cond_f
    if-ltz p2, :cond_10

    if-le p2, v1, :cond_11

    :cond_10
    move p2, v1

    :cond_11
    return p2

    :cond_12
    :goto_0
    if-eq p2, v4, :cond_15

    if-eq p2, v3, :cond_14

    if-eq p2, v2, :cond_13

    return v1

    :cond_13
    return v2

    :cond_14
    return v3

    :cond_15
    return v4

    :cond_16
    :goto_1
    if-eqz p2, :cond_1c

    if-eq p2, v4, :cond_1b

    if-eq p2, v3, :cond_1a

    if-eq p2, v2, :cond_19

    if-eq p2, v6, :cond_18

    const/16 p1, 0xb

    if-eq p2, p1, :cond_17

    const/16 p1, 0x13

    if-eq p2, p1, :cond_1b

    packed-switch p2, :pswitch_data_0

    return v1

    :pswitch_0
    const/16 p1, 0xe

    return p1

    :pswitch_1
    const/16 p1, 0xd

    :cond_17
    return p1

    :cond_18
    return v6

    :cond_19
    return v2

    :cond_1a
    return v3

    :cond_1b
    :pswitch_2
    return v4

    :cond_1c
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothProfileManager$Profile;)Z
    .locals 2

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disconnect"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothProfileManager$Profile;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " device name is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/LocalBluetoothProfileManager;->log(Ljava/lang/String;)V

    .line 383
    sget-object v0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager;->mService:Landroid/bluetooth/BluetoothProfileManager;

    invoke-virtual {v0, p2, p1}, Landroid/bluetooth/BluetoothProfileManager;->disconnect(Landroid/bluetooth/BluetoothProfileManager$Profile;Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    return p1
.end method

.method public getConnectedDevices(Landroid/bluetooth/BluetoothProfileManager$Profile;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothProfileManager$Profile;",
            ")",
            "Ljava/util/Set<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 357
    sget-object v0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager;->mService:Landroid/bluetooth/BluetoothProfileManager;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothProfileManager;->getConnectedDevices(Landroid/bluetooth/BluetoothProfileManager$Profile;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothProfileManager$Profile;)I
    .locals 2

    .line 413
    sget-object v0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager;->mService:Landroid/bluetooth/BluetoothProfileManager;

    invoke-virtual {v0, p2, p1}, Landroid/bluetooth/BluetoothProfileManager;->getState(Landroid/bluetooth/BluetoothProfileManager$Profile;Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getConnectionStatus:profile->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",state->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/LocalBluetoothProfileManager;->log(Ljava/lang/String;)V

    .line 415
    invoke-virtual {p0, p2, p1}, Lcom/autochips/bluetooth/LocalBluetoothProfileManager;->convertState(Landroid/bluetooth/BluetoothProfileManager$Profile;I)I

    move-result p1

    return p1
.end method

.method public getPreferred(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothProfileManager$Profile;)I
    .locals 1

    .line 391
    sget-object v0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager;->mService:Landroid/bluetooth/BluetoothProfileManager;

    if-nez v0, :cond_0

    const-string p1, "getPreferred: mService is null"

    .line 392
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/LocalBluetoothProfileManager;->log(Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1

    .line 395
    :cond_0
    invoke-virtual {v0, p2, p1}, Landroid/bluetooth/BluetoothProfileManager;->getPreferred(Landroid/bluetooth/BluetoothProfileManager$Profile;Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    return p1
.end method

.method public isConnected(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothProfileManager$Profile;)Z
    .locals 0

    .line 607
    invoke-virtual {p0, p1, p2}, Lcom/autochips/bluetooth/LocalBluetoothProfileManager;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothProfileManager$Profile;)I

    move-result p1

    invoke-static {p1}, Lcom/autochips/bluetooth/SettingsBtStatus;->isConnectionStatusConnected(I)Z

    move-result p1

    return p1
.end method

.method public isPreferred(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothProfileManager$Profile;)Z
    .locals 1

    .line 387
    sget-object v0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager;->mService:Landroid/bluetooth/BluetoothProfileManager;

    invoke-virtual {v0, p2, p1}, Landroid/bluetooth/BluetoothProfileManager;->isPreferred(Landroid/bluetooth/BluetoothProfileManager$Profile;Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    return p1
.end method

.method public setPreferred(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothProfileManager$Profile;Z)V
    .locals 1

    .line 401
    sget-object v0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager;->mService:Landroid/bluetooth/BluetoothProfileManager;

    invoke-virtual {v0, p2, p1, p3}, Landroid/bluetooth/BluetoothProfileManager;->setPreferred(Landroid/bluetooth/BluetoothProfileManager$Profile;Landroid/bluetooth/BluetoothDevice;Z)Z

    return-void
.end method
