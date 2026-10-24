.class public Lcom/autochips/bluetooth/dundt/SMSSyncManager;
.super Ljava/lang/Object;
.source "SMSSyncManager.java"


# static fields
.field private static DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SMSSyncManager"

.field private static mInstance:Lcom/autochips/bluetooth/dundt/SMSSyncManager;


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private mSmsSyncService:Lcom/autochips/bluetooth/dundt/ISMSSyncManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 59
    sget-boolean v0, Lcom/autochips/bluetooth/BtEmulatorDebug;->mDebugAll:Z

    sget-boolean v1, Lcom/autochips/bluetooth/BtEmulatorDebug;->mDebugSMS:Z

    and-int/2addr v0, v1

    sput-boolean v0, Lcom/autochips/bluetooth/dundt/SMSSyncManager;->DEBUG:Z

    const/4 v0, 0x0

    .line 64
    sput-object v0, Lcom/autochips/bluetooth/dundt/SMSSyncManager;->mInstance:Lcom/autochips/bluetooth/dundt/SMSSyncManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    new-instance v0, Lcom/autochips/bluetooth/dundt/SMSSyncManager$1;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/dundt/SMSSyncManager$1;-><init>(Lcom/autochips/bluetooth/dundt/SMSSyncManager;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/dundt/SMSSyncManager;->mConnection:Landroid/content/ServiceConnection;

    .line 78
    iput-object p1, p0, Lcom/autochips/bluetooth/dundt/SMSSyncManager;->mContext:Landroid/content/Context;

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/autochips/bluetooth/dundt/ISMSSyncManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/autochips/bluetooth/dundt/SMSSyncManager;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 81
    sget-boolean p1, Lcom/autochips/bluetooth/dundt/SMSSyncManager;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "SMSSyncManager"

    const-string v0, "Could not bind to SMSSyncManager Service"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 57
    sget-boolean v0, Lcom/autochips/bluetooth/dundt/SMSSyncManager;->DEBUG:Z

    return v0
.end method

.method static synthetic access$102(Lcom/autochips/bluetooth/dundt/SMSSyncManager;Lcom/autochips/bluetooth/dundt/ISMSSyncManager;)Lcom/autochips/bluetooth/dundt/ISMSSyncManager;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/autochips/bluetooth/dundt/SMSSyncManager;->mSmsSyncService:Lcom/autochips/bluetooth/dundt/ISMSSyncManager;

    return-object p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/autochips/bluetooth/dundt/SMSSyncManager;
    .locals 2

    .line 67
    const-class v0, Lcom/autochips/bluetooth/dundt/SMSSyncManager;

    monitor-enter v0

    .line 68
    :try_start_0
    sget-object v1, Lcom/autochips/bluetooth/dundt/SMSSyncManager;->mInstance:Lcom/autochips/bluetooth/dundt/SMSSyncManager;

    if-nez v1, :cond_0

    .line 69
    new-instance v1, Lcom/autochips/bluetooth/dundt/SMSSyncManager;

    invoke-direct {v1, p0}, Lcom/autochips/bluetooth/dundt/SMSSyncManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/autochips/bluetooth/dundt/SMSSyncManager;->mInstance:Lcom/autochips/bluetooth/dundt/SMSSyncManager;

    .line 72
    :cond_0
    sget-object p0, Lcom/autochips/bluetooth/dundt/SMSSyncManager;->mInstance:Lcom/autochips/bluetooth/dundt/SMSSyncManager;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 73
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public GetRecCnt(I)I
    .locals 2

    .line 145
    sget-boolean v0, Lcom/autochips/bluetooth/dundt/SMSSyncManager;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetRecCnt("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SMSSyncManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SMSSyncManager;->mSmsSyncService:Lcom/autochips/bluetooth/dundt/ISMSSyncManager;

    invoke-interface {v0, p1}, Lcom/autochips/bluetooth/dundt/ISMSSyncManager;->GetRecCnt(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 149
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public GetRecord(IIILjava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Lcom/autochips/bluetooth/dundt/SMSRecord;",
            ">;)Z"
        }
    .end annotation

    .line 155
    sget-boolean v0, Lcom/autochips/bluetooth/dundt/SMSSyncManager;->DEBUG:Z

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

    const-string v1, "SMSSyncManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SMSSyncManager;->mSmsSyncService:Lcom/autochips/bluetooth/dundt/ISMSSyncManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/autochips/bluetooth/dundt/ISMSSyncManager;->GetRecord(IIILjava/util/List;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 159
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public GetSyncState()I
    .locals 2

    .line 135
    sget-boolean v0, Lcom/autochips/bluetooth/dundt/SMSSyncManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SMSSyncManager"

    const-string v1, "GetSyncState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SMSSyncManager;->mSmsSyncService:Lcom/autochips/bluetooth/dundt/ISMSSyncManager;

    invoke-interface {v0}, Lcom/autochips/bluetooth/dundt/ISMSSyncManager;->GetSyncState()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 139
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public SetRemoteDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    .line 104
    sget-boolean v0, Lcom/autochips/bluetooth/dundt/SMSSyncManager;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetRemoteDevice("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SMSSyncManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SMSSyncManager;->mSmsSyncService:Lcom/autochips/bluetooth/dundt/ISMSSyncManager;

    invoke-interface {v0, p1}, Lcom/autochips/bluetooth/dundt/ISMSSyncManager;->SetRemoteDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 108
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public StartDownload(IZ)Z
    .locals 2

    .line 114
    sget-boolean v0, Lcom/autochips/bluetooth/dundt/SMSSyncManager;->DEBUG:Z

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

    const-string v1, "SMSSyncManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SMSSyncManager;->mSmsSyncService:Lcom/autochips/bluetooth/dundt/ISMSSyncManager;

    invoke-interface {v0, p1, p2}, Lcom/autochips/bluetooth/dundt/ISMSSyncManager;->StartDownload(IZ)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 118
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public StopDownload()Z
    .locals 2

    .line 124
    sget-boolean v0, Lcom/autochips/bluetooth/dundt/SMSSyncManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SMSSyncManager"

    const-string v1, "StopDownload"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SMSSyncManager;->mSmsSyncService:Lcom/autochips/bluetooth/dundt/ISMSSyncManager;

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SMSSyncManager;->mSmsSyncService:Lcom/autochips/bluetooth/dundt/ISMSSyncManager;

    invoke-interface {v0}, Lcom/autochips/bluetooth/dundt/ISMSSyncManager;->StopDownload()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 129
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized close()V
    .locals 2

    monitor-enter p0

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SMSSyncManager;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1

    .line 96
    sget-boolean v0, Lcom/autochips/bluetooth/dundt/SMSSyncManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SMSSyncManager"

    const-string v1, "+unbindService()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SMSSyncManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/autochips/bluetooth/dundt/SMSSyncManager;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lcom/autochips/bluetooth/dundt/SMSSyncManager;->mConnection:Landroid/content/ServiceConnection;

    .line 99
    sput-object v0, Lcom/autochips/bluetooth/dundt/SMSSyncManager;->mInstance:Lcom/autochips/bluetooth/dundt/SMSSyncManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
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

    .line 87
    :try_start_0
    sget-boolean v0, Lcom/autochips/bluetooth/dundt/SMSSyncManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SMSSyncManager"

    const-string v1, "+finalize()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/autochips/bluetooth/dundt/SMSSyncManager;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
