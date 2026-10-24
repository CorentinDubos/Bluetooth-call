.class public Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;
.super Landroid/app/Service;
.source "BluetoothPbapClientService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$PulldataResult;,
        Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$PbapSocketListener;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field public static final PBAP_AUTHENTICATE_CANCEL_ACTION:Ljava/lang/String; = "com.android.bluetooth.pbap.authenticate.cancel"

.field public static final PBAP_AUTHENTICATE_RETURN_ACTION:Ljava/lang/String; = "com.android.bluetooth.pbap.authenticate.return"

.field public static final PBAP_AUTHENTICATE_TIMEOUT:I = 0x7530

.field public static final PBAP_AUTH_CHALL_IND:I = 0x271b

.field public static final PBAP_AUTH_TIMEOUT_IND:I = 0x3e9

.field public static final PBAP_CLIENT_ABORT_CNF:I = 0x271a

.field public static final PBAP_CLIENT_CONNECT_CNF:I = 0x2713

.field public static final PBAP_CLIENT_DISCONNECT_CNF:I = 0x2714

.field public static final PBAP_CLIENT_DISCONNECT_IND:I = 0x2715

.field public static final PBAP_CLIENT_ENABLE_CNF:I = 0x2711

.field public static final PBAP_CLIENT_PULLPHONEBOOK_CNF:I = 0x2719

.field public static final PBAP_CLIENT_PULLVCARDENTRY_CNF:I = 0x2718

.field public static final PBAP_CLIENT_PULLVCARDLISTING_CNF:I = 0x2717

.field public static final PBAP_CLIENT_SETPATH_CNF:I = 0x2716

.field public static final PBAP_NOTIFICATION_AUTH_CHALL:I = 0x1

.field public static final PB_STATUS_FAILED:I = 0x1

.field public static final PB_STATUS_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BluetoothPbapClientService"

.field private static final mDefaultVcardFilter:J = 0x10000084L


# instance fields
.field mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mCallbacks:Landroid/os/RemoteCallbackList;

.field mClientPath:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mIsGetVcardEntry:Z

.field private mJniListInfo:Ljava/lang/String;

.field private mJniVcard:Ljava/lang/String;

.field private mListener:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$PbapSocketListener;

.field private mNM:Landroid/app/NotificationManager;

.field private mNativeData:I

.field private mPbClientState:I

.field private final mPbapClientCall:Landroid/bluetooth/IBluetoothPbapCall$Stub;

.field private final mPbapClientCtrl:Landroid/bluetooth/IBluetoothPbapClient$Stub;

.field private mPid:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

.field private mServiceHandler:Landroid/os/Handler;

.field private mVcardEntryObjectIndex:I

.field private mVcardEntryObjectName:Ljava/lang/String;

.field private mVcardHandleName:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVcardListCount:I

.field private m_curDownloadPath:I

.field private mlocalListInfo:Ljava/lang/String;

.field private mlocalVcard:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 81
    sget-boolean v0, Lcom/autochips/bluetooth/BtEmulatorDebug;->mDebugAll:Z

    sget-boolean v1, Lcom/autochips/bluetooth/BtEmulatorDebug;->mDebugPB:Z

    and-int/2addr v0, v1

    sput-boolean v0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->DEBUG:Z

    const-string v0, "extpbapclient_jni"

    .line 185
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 186
    invoke-static {}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->classInitNative()V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 210
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mNM:Landroid/app/NotificationManager;

    const/4 v1, -0x1

    .line 90
    iput v1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mPid:I

    .line 129
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 135
    iput-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 138
    iput-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 141
    new-instance v1, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;

    invoke-direct {v1}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;-><init>()V

    iput-object v1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mClientPath:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;

    const/4 v1, 0x0

    .line 144
    iput v1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mPbClientState:I

    .line 147
    iput v1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->m_curDownloadPath:I

    const-string v2, "PBListInfo.log"

    .line 150
    iput-object v2, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mlocalListInfo:Ljava/lang/String;

    .line 156
    iput-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mlocalVcard:Ljava/lang/String;

    .line 159
    iput-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mJniVcard:Ljava/lang/String;

    .line 162
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mVcardHandleName:Ljava/util/List;

    .line 163
    iput v1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mVcardListCount:I

    .line 174
    iput-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mIntentFilter:Landroid/content/IntentFilter;

    .line 177
    iput-boolean v1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mIsGetVcardEntry:Z

    .line 216
    new-instance v0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$1;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$1;-><init>(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 239
    new-instance v0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$2;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$2;-><init>(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mServiceHandler:Landroid/os/Handler;

    .line 460
    new-instance v0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$3;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$3;-><init>(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mPbapClientCtrl:Landroid/bluetooth/IBluetoothPbapClient$Stub;

    .line 505
    new-instance v0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$4;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$4;-><init>(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mPbapClientCall:Landroid/bluetooth/IBluetoothPbapCall$Stub;

    return-void
.end method

.method private native abortReqNative()Z
.end method

.method static synthetic access$000(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;Ljava/lang/String;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->printLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;Z)Z
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->listenIndicationNative(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;)Ljava/lang/String;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mVcardEntryObjectName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mVcardEntryObjectName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;Z)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->notifySetPath(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;)I
    .locals 0

    .line 76
    iget p0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mVcardListCount:I

    return p0
.end method

.method static synthetic access$1202(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;I)I
    .locals 0

    .line 76
    iput p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mVcardListCount:I

    return p1
.end method

.method static synthetic access$1300(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;IIIZ)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->notifyGetList(IIIZ)V

    return-void
.end method

.method static synthetic access$1400(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;Z)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->notifyGetVcardEntry(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;Z)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->notifyGetPhonebook(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;I)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->setServerNotification(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;)I
    .locals 0

    .line 76
    iget p0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mPid:I

    return p0
.end method

.method static synthetic access$1800(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;)I
    .locals 0

    .line 76
    iget p0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mPbClientState:I

    return p0
.end method

.method static synthetic access$1900(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;)Landroid/os/RemoteCallbackList;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mCallbacks:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;Ljava/lang/String;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->errorLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;)Ljava/lang/String;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mJniListInfo:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;)Ljava/lang/String;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mlocalListInfo:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;)I
    .locals 0

    .line 76
    iget p0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->m_curDownloadPath:I

    return p0
.end method

.method static synthetic access$300(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;I)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->broadcastPbapState(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;Z)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->notifyConnect(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;Z)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->notifyDisConnect(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->cancelServerNotification()V

    return-void
.end method

.method static synthetic access$700(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;)Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mIsGetVcardEntry:Z

    return p0
.end method

.method static synthetic access$702(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;Z)Z
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mIsGetVcardEntry:Z

    return p1
.end method

.method static synthetic access$800(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;)I
    .locals 0

    .line 76
    iget p0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mVcardEntryObjectIndex:I

    return p0
.end method

.method static synthetic access$802(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;I)I
    .locals 0

    .line 76
    iput p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mVcardEntryObjectIndex:I

    return p1
.end method

.method static synthetic access$900(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;)Ljava/util/List;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mVcardHandleName:Ljava/util/List;

    return-object p0
.end method

.method private native authChallengeRspNative(ZLjava/lang/String;Ljava/lang/String;)Z
.end method

.method private broadcastPbapState(I)V
    .locals 4

    .line 693
    iput p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mPbClientState:I

    .line 695
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.profilemanager.action.PROFILE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 696
    sget-object v1, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_PBAP_Client:Landroid/bluetooth/BluetoothProfileManager$Profile;

    const-string v2, "android.bluetooth.profilemanager.extra.PROFILE"

    .line 697
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 698
    invoke-static {}, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;->values()[Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    move-result-object v2

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothProfileManager$Profile;->ordinal()I

    move-result v1

    aget-object v1, v2, v1

    const-string v2, "android.bluetooth.profilemanager.extra.ATCPROFILE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "android.bluetooth.profilemanager.extra.EXTRA_NEW_STATE"

    .line 699
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "android.permission.BLUETOOTH"

    .line 700
    invoke-virtual {p0, v0, v1}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 703
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    .line 705
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->updateConnectionState(Landroid/bluetooth/BluetoothDevice;III)V

    goto :goto_0

    :cond_0
    if-ne p1, v2, :cond_1

    .line 708
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->updateConnectionState(Landroid/bluetooth/BluetoothDevice;III)V

    :cond_1
    :goto_0
    return-void
.end method

.method private cancelServerNotification()V
    .locals 3

    .line 1022
    iget-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mServiceHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1024
    iget v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mPid:I

    if-lez v0, :cond_1

    const-string/jumbo v0, "unregisterReceiver"

    .line 1026
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->printLog(Ljava/lang/String;)V

    .line 1027
    iget-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1029
    iget v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mPid:I

    const/16 v1, 0xc

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/autochips/bluetooth/util/NotificationFactory;->getProfileNotificationId(II)I

    move-result v1

    if-ne v0, v1, :cond_0

    const-string v0, "Send authenticate cancel intent"

    .line 1030
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->printLog(Ljava/lang/String;)V

    .line 1031
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.bluetooth.pbap.authenticate.cancel"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1032
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 1034
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ERR] invalid pid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->errorLog(Ljava/lang/String;)V

    .line 1036
    :goto_0
    iget-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mNM:Landroid/app/NotificationManager;

    iget v1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mPid:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    const/4 v0, -0x1

    .line 1037
    iput v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mPid:I

    :cond_1
    return-void
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNativeDataNative()V
.end method

.method private native connectNative(Ljava/lang/String;)Z
.end method

.method private native disableNative()V
.end method

.method private native disconnectNative()V
.end method

.method private native enableNative()Z
.end method

.method private errorLog(Ljava/lang/String;)V
    .locals 1

    const-string v0, "BluetoothPbapClientService"

    .line 945
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private native initializeNativeDataNative()V
.end method

.method private native listenIndicationNative(Z)Z
.end method

.method private notifyConnect(Z)V
    .locals 3

    .line 602
    iget-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 605
    :try_start_0
    iget-object v2, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/IPBCallback;

    invoke-interface {v2, p1}, Landroid/bluetooth/IPBCallback;->notifyConnect(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothPbapClientService"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :cond_0
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method private notifyDisConnect(Z)V
    .locals 3

    .line 617
    iget-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 620
    :try_start_0
    iget-object v2, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/IPBCallback;

    invoke-interface {v2, p1}, Landroid/bluetooth/IPBCallback;->notifyDisConnect(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothPbapClientService"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :cond_0
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method private notifyGetList(IIIZ)V
    .locals 3

    .line 643
    iget-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 646
    :try_start_0
    iget-object v2, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/IPBCallback;

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/bluetooth/IPBCallback;->notifyGetList(IIIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 649
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BluetoothPbapClientService"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    :cond_0
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method private notifyGetPhonebook(Z)V
    .locals 3

    .line 656
    iget-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 659
    :try_start_0
    iget-object v2, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/IPBCallback;

    invoke-interface {v2, p1}, Landroid/bluetooth/IPBCallback;->notifyGetPhonebook(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothPbapClientService"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    :cond_0
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method private notifyGetVcardEntry(Z)V
    .locals 3

    .line 669
    iget-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 672
    :try_start_0
    iget-object v2, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/IPBCallback;

    invoke-interface {v2, p1}, Landroid/bluetooth/IPBCallback;->notifyGetVcardEntry(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 675
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothPbapClientService"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :cond_0
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method private notifySetPath(Z)V
    .locals 3

    .line 630
    iget-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 633
    :try_start_0
    iget-object v2, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/IPBCallback;

    invoke-interface {v2, p1}, Landroid/bluetooth/IPBCallback;->notifySetPath(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothPbapClientService"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    :cond_0
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method private onAbortCnf(I)V
    .locals 1

    .line 911
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v0, 0x271a

    invoke-direct {p0, v0, p1}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->sendServiceMsg(ILjava/lang/Object;)V

    return-void
.end method

.method private onAbortInd(I)V
    .locals 0

    return-void
.end method

.method private onAuthChallInd(Ljava/lang/String;ZZ)V
    .locals 2

    .line 879
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAuthChallInd: name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", isUserIdRequired="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", isFullAccess="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->printLog(Ljava/lang/String;)V

    const/16 p1, 0x271b

    const/4 p2, 0x0

    .line 882
    invoke-direct {p0, p1, p2}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->sendServiceMsg(ILjava/lang/Object;)V

    return-void
.end method

.method private onConnectCnf(I)V
    .locals 1

    .line 866
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v0, 0x2713

    invoke-direct {p0, v0, p1}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->sendServiceMsg(ILjava/lang/Object;)V

    return-void
.end method

.method private onDisconnectCnf(I)V
    .locals 1

    .line 870
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v0, 0x2714

    invoke-direct {p0, v0, p1}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->sendServiceMsg(ILjava/lang/Object;)V

    return-void
.end method

.method private onDisconnectInd()V
    .locals 2

    const/16 v0, 0x2715

    const/4 v1, 0x0

    .line 874
    invoke-direct {p0, v0, v1}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->sendServiceMsg(ILjava/lang/Object;)V

    return-void
.end method

.method private onEnableCnf(I)V
    .locals 3

    if-eqz p1, :cond_1

    const-string v0, "enableNative failed"

    .line 849
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->errorLog(Ljava/lang/String;)V

    .line 850
    iget-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mListener:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$PbapSocketListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 851
    iput-boolean v1, v0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$PbapSocketListener;->mStopListen:Z

    .line 852
    invoke-direct {p0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->wakeupListenerNative()V

    .line 854
    :try_start_0
    iget-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mListener:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$PbapSocketListener;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$PbapSocketListener;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 856
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mListener close error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->errorLog(Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 859
    iput-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mListener:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$PbapSocketListener;

    :cond_1
    const/16 v0, 0x2711

    .line 862
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->sendServiceMsg(ILjava/lang/Object;)V

    return-void
.end method

.method private onPullPhonebookCnf(ISS)V
    .locals 1

    .line 894
    new-instance v0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$PulldataResult;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$PulldataResult;-><init>(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;)V

    .line 895
    iput p1, v0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$PulldataResult;->cnf_code:I

    .line 896
    iput-short p2, v0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$PulldataResult;->phonebookSize:S

    .line 897
    iput-short p3, v0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$PulldataResult;->newMissedCalls:S

    const/16 p1, 0x2719

    .line 898
    invoke-direct {p0, p1, v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->sendServiceMsg(ILjava/lang/Object;)V

    return-void
.end method

.method private onPullVcardEntryCnf(I)V
    .locals 1

    .line 890
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v0, 0x2718

    invoke-direct {p0, v0, p1}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->sendServiceMsg(ILjava/lang/Object;)V

    return-void
.end method

.method private onPullVcardListingCnf(ISS)V
    .locals 1

    .line 902
    new-instance v0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$PulldataResult;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$PulldataResult;-><init>(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;)V

    .line 903
    iput p1, v0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$PulldataResult;->cnf_code:I

    .line 904
    iput-short p2, v0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$PulldataResult;->phonebookSize:S

    .line 905
    iput-short p3, v0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$PulldataResult;->newMissedCalls:S

    const/16 p1, 0x2717

    .line 906
    invoke-direct {p0, p1, v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->sendServiceMsg(ILjava/lang/Object;)V

    return-void
.end method

.method private onSetPathCnf(I)V
    .locals 1

    .line 886
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v0, 0x2716

    invoke-direct {p0, v0, p1}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->sendServiceMsg(ILjava/lang/Object;)V

    return-void
.end method

.method private parseVcardList()Z
    .locals 11

    const-string v0, "\""

    const-string v1, "BluetoothPbapClientService"

    const-string v2, "card handle"

    .line 404
    :try_start_0
    iget-object v3, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mlocalListInfo:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 410
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :cond_0
    :goto_0
    const/4 v5, 0x1

    .line 412
    :try_start_1
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    const/4 v7, -0x1

    move v8, v7

    :cond_1
    :goto_1
    add-int/2addr v8, v5

    .line 414
    invoke-virtual {v6, v2, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    if-ltz v8, :cond_0

    .line 415
    invoke-virtual {v6, v0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v9

    if-ne v7, v9, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 v9, v9, 0x1

    .line 419
    invoke-virtual {v6, v0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v10

    if-ne v7, v10, :cond_3

    goto :goto_0

    .line 424
    :cond_3
    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v8, v8, 0xb

    const-string v10, "0.vcf"

    .line 426
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 427
    iget-object v10, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mVcardHandleName:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    iget v9, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mVcardListCount:I

    add-int/2addr v9, v5

    iput v9, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mVcardListCount:I

    goto :goto_1

    .line 432
    :cond_4
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V

    .line 433
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v2, "PBListInfo.log read exception"

    .line 435
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 438
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pbap vcardlist "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mVcardHandleName:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->printLog(Ljava/lang/String;)V

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pbap vcardlist count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mVcardListCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->printLog(Ljava/lang/String;)V

    return v5

    :catch_1
    move-exception v0

    const-string v2, "PBListInfo.log not found"

    .line 406
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method private printLog(Ljava/lang/String;)V
    .locals 1

    .line 941
    sget-boolean v0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothPbapClientService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private native pullPhonebookNative(Ljava/lang/String;Ljava/lang/String;JCSS)Z
.end method

.method private native pullVcardEntryNative(Ljava/lang/String;Ljava/lang/String;JC)Z
.end method

.method private native pullVcardListingNative(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;CSS)Z
.end method

.method private sendServiceMsg(ILjava/lang/Object;)V
    .locals 2

    .line 951
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[API] sendServiceMsg("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->printLog(Ljava/lang/String;)V

    .line 952
    iget-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mServiceHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 953
    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 954
    iput p1, v0, Landroid/os/Message;->what:I

    .line 955
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 956
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    const-string p1, "mServiceHandler is null"

    .line 959
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->printLog(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private native setPathNative(ILjava/lang/String;)Z
.end method

.method private setServerNotification(I)V
    .locals 8

    .line 972
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setServerNotification("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->printLog(Ljava/lang/String;)V

    .line 973
    invoke-virtual {p0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 974
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 977
    new-instance v3, Landroid/app/Notification;

    const v4, 0x1080080

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-string v7, "Bluetooth PBAP authentication request"

    invoke-direct {v3, v4, v7, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 981
    invoke-virtual {p0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/autochips/bluetooth/pbapclient/BluetoothAuthenticating;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const/high16 v5, 0x10000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 983
    iget-object v4, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.autochips.bluetooth.extra.device_name"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "com.autochips.bluetooth.extra.action_cancel"

    const-string v6, "com.android.bluetooth.pbap.authenticate.cancel"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "com.autochips.bluetooth.extra.action_return"

    const-string v6, "com.android.bluetooth.pbap.authenticate.return"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v4, 0x0

    .line 988
    invoke-static {p0, v4, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 989
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PBAP authentication request from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v7, v4, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/16 v0, 0x7530

    const/4 v1, 0x4

    new-array v1, v1, [J

    .line 1003
    fill-array-data v1, :array_0

    .line 1004
    iput-object v1, v3, Landroid/app/Notification;->vibrate:[J

    .line 1005
    iget v1, v3, Landroid/app/Notification;->defaults:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v3, Landroid/app/Notification;->defaults:I

    .line 1006
    iget v1, v3, Landroid/app/Notification;->defaults:I

    or-int/2addr v1, v2

    iput v1, v3, Landroid/app/Notification;->defaults:I

    .line 1007
    iget v1, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, v3, Landroid/app/Notification;->flags:I

    const/16 v1, 0xc

    .line 1009
    invoke-static {v1, p1}, Lcom/autochips/bluetooth/util/NotificationFactory;->getProfileNotificationId(II)I

    move-result p1

    iput p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mPid:I

    .line 1010
    iget-object v1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mNM:Landroid/app/NotificationManager;

    invoke-virtual {v1, p1, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1012
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "registerReceiver"

    .line 1013
    invoke-direct {p0, v1}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->printLog(Ljava/lang/String;)V

    .line 1014
    iget-object v1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, p1}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1016
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mServiceHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_0
    const-string p1, "[ERR] unsupported mode"

    .line 998
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->errorLog(Ljava/lang/String;)V

    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x64
        0xc8
        0x12c
    .end array-data
.end method

.method private native wakeupListenerNative()V
.end method


# virtual methods
.method abortReq()Z
    .locals 1

    const-string v0, "[API] abortReq()"

    .line 835
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->printLog(Ljava/lang/String;)V

    .line 836
    invoke-direct {p0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->abortReqNative()Z

    move-result v0

    return v0
.end method

.method authChallRsp(ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 840
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[API] authChallRsp("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->printLog(Ljava/lang/String;)V

    .line 841
    invoke-direct {p0, p1, p2, p3}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->authChallengeRspNative(ZLjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method connectPB(Ljava/lang/String;)Z
    .locals 2

    .line 797
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[API] connectPB("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->printLog(Ljava/lang/String;)V

    .line 798
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->connectNative(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public disable()V
    .locals 3

    const-string v0, "[API] disable"

    .line 782
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->printLog(Ljava/lang/String;)V

    .line 783
    iget-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mListener:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$PbapSocketListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 784
    iput-boolean v1, v0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$PbapSocketListener;->mStopListen:Z

    .line 785
    invoke-direct {p0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->wakeupListenerNative()V

    .line 787
    :try_start_0
    iget-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mListener:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$PbapSocketListener;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$PbapSocketListener;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 789
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mListener colose error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->errorLog(Ljava/lang/String;)V

    .line 791
    :goto_0
    invoke-direct {p0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->disableNative()V

    :cond_0
    const-string v0, "Pbap client is not enabled yet"

    .line 793
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->printLog(Ljava/lang/String;)V

    return-void
.end method

.method disconnectPB()V
    .locals 1

    const-string v0, "[API] disconnectPB"

    .line 802
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->printLog(Ljava/lang/String;)V

    .line 803
    invoke-direct {p0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->disconnectNative()V

    return-void
.end method

.method public enable()Z
    .locals 3

    const-string v0, "[API] enable"

    .line 764
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->printLog(Ljava/lang/String;)V

    .line 766
    new-instance v0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$PbapSocketListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$PbapSocketListener;-><init>(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$1;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mListener:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$PbapSocketListener;

    .line 768
    invoke-direct {p0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->enableNative()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 769
    iget-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mListener:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$PbapSocketListener;

    iput-boolean v2, v0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$PbapSocketListener;->mStopListen:Z

    .line 770
    iget-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mListener:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$PbapSocketListener;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$PbapSocketListener;->start()V

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "enableNative send failed"

    .line 774
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->errorLog(Ljava/lang/String;)V

    .line 775
    iput-object v1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mListener:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$PbapSocketListener;

    :goto_0
    return v2
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .line 681
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 682
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enter onBind() action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->printLog(Ljava/lang/String;)V

    .line 683
    const-class v0, Landroid/bluetooth/IBluetoothPbapClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 684
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mPbapClientCtrl:Landroid/bluetooth/IBluetoothPbapClient$Stub;

    return-object p1

    .line 685
    :cond_0
    const-class v0, Landroid/bluetooth/IBluetoothPbapCall;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 686
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mPbapClientCall:Landroid/bluetooth/IBluetoothPbapCall$Stub;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 3

    const-string v0, "Enter onCreate()"

    .line 716
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->printLog(Ljava/lang/String;)V

    .line 717
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/files/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mlocalListInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mJniListInfo:Ljava/lang/String;

    .line 718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mJniListInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mJniListInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->printLog(Ljava/lang/String;)V

    const-string v0, "notification"

    .line 720
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mNM:Landroid/app/NotificationManager;

    const/16 v1, 0xe

    if-nez v0, :cond_0

    const-string v0, "BluetoothPbapClientService"

    const-string v2, "Get Notification-Manager failed, stop PBAP Client service."

    .line 722
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    invoke-virtual {p0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->stopSelf()V

    .line 725
    invoke-direct {p0, v1}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->broadcastPbapState(I)V

    :cond_0
    const/16 v0, 0xa

    .line 730
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->broadcastPbapState(I)V

    .line 734
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 736
    invoke-direct {p0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->initializeNativeDataNative()V

    .line 738
    invoke-virtual {p0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->enable()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "[ERR] Pbap Client enable failed"

    .line 739
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->errorLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 740
    iput-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 741
    invoke-virtual {p0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->stopSelf()V

    .line 742
    invoke-direct {p0, v1}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->broadcastPbapState(I)V

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    const-string v0, "onDestroy()"

    .line 748
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->printLog(Ljava/lang/String;)V

    const/16 v0, 0xc

    .line 750
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->broadcastPbapState(I)V

    .line 751
    invoke-virtual {p0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->disable()V

    .line 752
    invoke-direct {p0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->cleanupNativeDataNative()V

    const/16 v0, 0xd

    .line 753
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->broadcastPbapState(I)V

    return-void
.end method

.method pullPhonebook(Ljava/lang/String;Ljava/lang/String;JCSS)Z
    .locals 3

    .line 819
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[API] pullPhonebook("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->printLog(Ljava/lang/String;)V

    .line 822
    invoke-direct/range {p0 .. p7}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->pullPhonebookNative(Ljava/lang/String;Ljava/lang/String;JCSS)Z

    move-result p1

    return p1
.end method

.method pullVcardEntry(Ljava/lang/String;Ljava/lang/String;JC)Z
    .locals 3

    .line 812
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[API] pullVcardEntry("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->printLog(Ljava/lang/String;)V

    .line 814
    invoke-direct/range {p0 .. p5}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->pullVcardEntryNative(Ljava/lang/String;Ljava/lang/String;JC)Z

    move-result p1

    return p1
.end method

.method pullVcardListing(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;CSS)Z
    .locals 3

    .line 827
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[API]pullVcardListing("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->printLog(Ljava/lang/String;)V

    .line 830
    invoke-direct/range {p0 .. p7}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->pullVcardListingNative(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;CSS)Z

    move-result p1

    return p1
.end method

.method public setDownloadPath(I)V
    .locals 2

    const/4 v0, 0x0

    .line 446
    iput-boolean v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mIsGetVcardEntry:Z

    .line 447
    iput p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->m_curDownloadPath:I

    .line 448
    iget-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mClientPath:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;->setPath(I)V

    .line 449
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mClientPath:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;

    iget-boolean v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mIsGetVcardEntry:Z

    invoke-virtual {p1, v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;->getPathLevel(Z)I

    move-result p1

    if-gez p1, :cond_0

    const-string p1, "Unsupported folder_type"

    .line 450
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->errorLog(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p1, 0x2

    .line 453
    iget-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mClientPath:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;->getCurIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;->getIndexPath(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->setPath(ILjava/lang/String;)Z

    .line 455
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mClientPath:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;

    invoke-virtual {p1}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;->increaseIndex()V

    return-void
.end method

.method setPath(ILjava/lang/String;)Z
    .locals 2

    .line 807
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[API] setPath("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->printLog(Ljava/lang/String;)V

    .line 808
    invoke-direct {p0, p1, p2}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->setPathNative(ILjava/lang/String;)Z

    move-result p1

    return p1
.end method
