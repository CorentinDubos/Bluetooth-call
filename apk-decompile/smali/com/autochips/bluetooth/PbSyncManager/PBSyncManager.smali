.class public Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;
.super Ljava/lang/Object;
.source "PBSyncManager.java"


# static fields
.field private static DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "PBSyncManager"

.field private static mInstance:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private mPbSyncService:Lcom/autochips/bluetooth/PbSyncManager/IPBSyncManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    sget-boolean v0, Lcom/autochips/bluetooth/BtEmulatorDebug;->mDebugAll:Z

    sget-boolean v1, Lcom/autochips/bluetooth/BtEmulatorDebug;->mDebugPB:Z

    and-int/2addr v0, v1

    sput-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;->DBG:Z

    const/4 v0, 0x0

    .line 26
    sput-object v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;->mInstance:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    new-instance v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager$1;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager$1;-><init>(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;->mConnection:Landroid/content/ServiceConnection;

    .line 41
    iput-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;->mContext:Landroid/content/Context;

    .line 42
    sget-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;->DBG:Z

    const-string v1, "PBSyncManager"

    if-eqz v0, :cond_0

    const-class v0, Lcom/autochips/bluetooth/PbSyncManager/IPBSyncManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/autochips/bluetooth/PbSyncManager/IPBSyncManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "Could not bind to PBSyncManager Service"

    .line 45
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 17
    sget-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-static {p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;Lcom/autochips/bluetooth/PbSyncManager/IPBSyncManager;)Lcom/autochips/bluetooth/PbSyncManager/IPBSyncManager;
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;->mPbSyncService:Lcom/autochips/bluetooth/PbSyncManager/IPBSyncManager;

    return-object p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;
    .locals 2

    .line 29
    const-class v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;

    monitor-enter v0

    .line 30
    :try_start_0
    sget-object v1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;->mInstance:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;

    if-nez v1, :cond_0

    .line 31
    new-instance v1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;

    invoke-direct {v1, p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;->mInstance:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;

    .line 34
    :cond_0
    sget-object p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;->mInstance:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 35
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "PBSyncManager"

    .line 304
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public AddCall(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 229
    sget-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AddCall("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;->log(Ljava/lang/String;)V

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;->mPbSyncService:Lcom/autochips/bluetooth/PbSyncManager/IPBSyncManager;

    if-eqz v0, :cond_1

    .line 232
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/autochips/bluetooth/PbSyncManager/IPBSyncManager;->AddCall(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 234
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public GetNameByTelExectly(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 209
    sget-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetNameByTelExectly("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;->log(Ljava/lang/String;)V

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;->mPbSyncService:Lcom/autochips/bluetooth/PbSyncManager/IPBSyncManager;

    if-eqz v0, :cond_1

    .line 212
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/autochips/bluetooth/PbSyncManager/IPBSyncManager;->GetNameByTelExectly(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 214
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method public GetRecCnt(Ljava/lang/String;I)I
    .locals 2

    .line 145
    sget-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetRecCnt("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;->log(Ljava/lang/String;)V

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;->mPbSyncService:Lcom/autochips/bluetooth/PbSyncManager/IPBSyncManager;

    if-eqz v0, :cond_1

    .line 148
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/autochips/bluetooth/PbSyncManager/IPBSyncManager;->GetRecCnt(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 150
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    const-string p1, "PBSyncManager"

    const-string p2, "mPbSyncService is null!"

    .line 154
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public GetRecord(IIILjava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Lcom/autochips/bluetooth/PbSyncManager/PBRecord;",
            ">;)Z"
        }
    .end annotation

    .line 168
    sget-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetRecord("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;->log(Ljava/lang/String;)V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;->mPbSyncService:Lcom/autochips/bluetooth/PbSyncManager/IPBSyncManager;

    if-eqz v0, :cond_1

    .line 171
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/autochips/bluetooth/PbSyncManager/IPBSyncManager;->GetRecord(IIILjava/util/List;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 173
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public GetSyncPath()I
    .locals 1

    .line 279
    sget-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "GetSyncPath()"

    invoke-static {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;->log(Ljava/lang/String;)V

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;->mPbSyncService:Lcom/autochips/bluetooth/PbSyncManager/IPBSyncManager;

    if-eqz v0, :cond_1

    .line 282
    :try_start_0
    invoke-interface {v0}, Lcom/autochips/bluetooth/PbSyncManager/IPBSyncManager;->GetSyncPath()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 284
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    const/16 v0, 0x8

    return v0
.end method

.method public GetSyncState()I
    .locals 1

    .line 262
    sget-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "GetSyncState()"

    invoke-static {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;->log(Ljava/lang/String;)V

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;->mPbSyncService:Lcom/autochips/bluetooth/PbSyncManager/IPBSyncManager;

    if-eqz v0, :cond_1

    .line 265
    :try_start_0
    invoke-interface {v0}, Lcom/autochips/bluetooth/PbSyncManager/IPBSyncManager;->GetSyncState()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 267
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public Init()Z
    .locals 1

    .line 76
    sget-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "Init()"

    invoke-static {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;->log(Ljava/lang/String;)V

    .line 78
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;->mPbSyncService:Lcom/autochips/bluetooth/PbSyncManager/IPBSyncManager;

    invoke-interface {v0}, Lcom/autochips/bluetooth/PbSyncManager/IPBSyncManager;->Init()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 80
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public SearchPhonebook(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/autochips/bluetooth/PbSyncManager/PBRecord;",
            ">;)Z"
        }
    .end annotation

    .line 188
    sget-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SearchPhonebook("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;->log(Ljava/lang/String;)V

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;->mPbSyncService:Lcom/autochips/bluetooth/PbSyncManager/IPBSyncManager;

    if-eqz v0, :cond_1

    .line 191
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/autochips/bluetooth/PbSyncManager/IPBSyncManager;->SearchPhonebook(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 194
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public SetDownloadMaxCnt(II)V
    .locals 2

    .line 246
    sget-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetDownloadMaxCnt("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;->log(Ljava/lang/String;)V

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;->mPbSyncService:Lcom/autochips/bluetooth/PbSyncManager/IPBSyncManager;

    if-eqz v0, :cond_1

    .line 249
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/autochips/bluetooth/PbSyncManager/IPBSyncManager;->SetDownloadMaxCnt(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 251
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public SetRemoteDevice(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 2

    .line 93
    sget-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetRemoteDevice("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;->log(Ljava/lang/String;)V

    .line 95
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;->mPbSyncService:Lcom/autochips/bluetooth/PbSyncManager/IPBSyncManager;

    invoke-interface {v0, p1, p2}, Lcom/autochips/bluetooth/PbSyncManager/IPBSyncManager;->SetRemoteDevice(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 97
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public StartDownload(IZ)Z
    .locals 2

    .line 110
    sget-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StartDownload("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;->log(Ljava/lang/String;)V

    .line 112
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;->mPbSyncService:Lcom/autochips/bluetooth/PbSyncManager/IPBSyncManager;

    invoke-interface {v0, p1, p2}, Lcom/autochips/bluetooth/PbSyncManager/IPBSyncManager;->StartDownload(IZ)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 114
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public StopDownload(I)Z
    .locals 2

    .line 126
    sget-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StopDownload("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;->log(Ljava/lang/String;)V

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;->mPbSyncService:Lcom/autochips/bluetooth/PbSyncManager/IPBSyncManager;

    if-eqz v0, :cond_1

    .line 129
    :try_start_0
    invoke-interface {v0, p1}, Lcom/autochips/bluetooth/PbSyncManager/IPBSyncManager;->StopDownload(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 131
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public declared-synchronized close()V
    .locals 2

    monitor-enter p0

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1

    .line 63
    sget-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PBSyncManager"

    const-string v1, "+unbindService()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;->mConnection:Landroid/content/ServiceConnection;

    .line 66
    sput-object v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;->mInstance:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :cond_1
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

    .line 51
    :try_start_0
    sget-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PBSyncManager"

    const-string v1, "+finalize()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
