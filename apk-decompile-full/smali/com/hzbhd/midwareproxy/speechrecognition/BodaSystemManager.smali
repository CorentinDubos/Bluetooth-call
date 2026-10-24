.class public Lcom/hzbhd/midwareproxy/speechrecognition/BodaSystemManager;
.super Ljava/lang/Object;
.source "BodaSystemManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BodaSystemManager"

.field private static mBodaSystemManager:Lcom/hzbhd/midwareproxy/speechrecognition/BodaSystemManager;

.field private static mContext:Landroid/content/Context;

.field private static mISpeechSettingsAIDL:Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;


# instance fields
.field private Connection:Landroid/content/ServiceConnection;

.field private mOnBindListener:Lcom/hzbhd/midwareproxy/speechrecognition/interfaces/OnBindListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Lcom/hzbhd/midwareproxy/speechrecognition/BodaSystemManager$1;

    invoke-direct {v0, p0}, Lcom/hzbhd/midwareproxy/speechrecognition/BodaSystemManager$1;-><init>(Lcom/hzbhd/midwareproxy/speechrecognition/BodaSystemManager;)V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/speechrecognition/BodaSystemManager;->Connection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;
    .locals 1

    .line 16
    sget-object v0, Lcom/hzbhd/midwareproxy/speechrecognition/BodaSystemManager;->mISpeechSettingsAIDL:Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    return-object v0
.end method

.method static synthetic access$002(Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;)Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;
    .locals 0

    .line 16
    sput-object p0, Lcom/hzbhd/midwareproxy/speechrecognition/BodaSystemManager;->mISpeechSettingsAIDL:Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    return-object p0
.end method

.method static synthetic access$100(Lcom/hzbhd/midwareproxy/speechrecognition/BodaSystemManager;)Lcom/hzbhd/midwareproxy/speechrecognition/interfaces/OnBindListener;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/hzbhd/midwareproxy/speechrecognition/BodaSystemManager;->mOnBindListener:Lcom/hzbhd/midwareproxy/speechrecognition/interfaces/OnBindListener;

    return-object p0
.end method

.method private bindSysService(Landroid/content/Context;)V
    .locals 4

    .line 70
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 71
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.hzbhd.midware.service"

    const-string v3, "com.hzbhd.midware.speechrecognition.SpeechMangerService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 72
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/speechrecognition/BodaSystemManager;->Connection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/hzbhd/midwareproxy/speechrecognition/BodaSystemManager;
    .locals 2

    const-class v0, Lcom/hzbhd/midwareproxy/speechrecognition/BodaSystemManager;

    monitor-enter v0

    .line 24
    :try_start_0
    sget-object v1, Lcom/hzbhd/midwareproxy/speechrecognition/BodaSystemManager;->mBodaSystemManager:Lcom/hzbhd/midwareproxy/speechrecognition/BodaSystemManager;

    if-nez v1, :cond_0

    .line 25
    new-instance v1, Lcom/hzbhd/midwareproxy/speechrecognition/BodaSystemManager;

    invoke-direct {v1}, Lcom/hzbhd/midwareproxy/speechrecognition/BodaSystemManager;-><init>()V

    sput-object v1, Lcom/hzbhd/midwareproxy/speechrecognition/BodaSystemManager;->mBodaSystemManager:Lcom/hzbhd/midwareproxy/speechrecognition/BodaSystemManager;

    .line 27
    :cond_0
    sget-object v1, Lcom/hzbhd/midwareproxy/speechrecognition/BodaSystemManager;->mBodaSystemManager:Lcom/hzbhd/midwareproxy/speechrecognition/BodaSystemManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public addCallBack(Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechCallback;)V
    .locals 2

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addCallBack: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/hzbhd/midwareproxy/speechrecognition/BodaSystemManager;->mISpeechSettingsAIDL:Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BodaSystemManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/speechrecognition/BodaSystemManager;->mISpeechSettingsAIDL:Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    if-eqz v0, :cond_0

    .line 44
    sget-object v0, Lcom/hzbhd/midwareproxy/speechrecognition/BodaSystemManager;->mISpeechSettingsAIDL:Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->addCallBack(Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 46
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 2

    const-string v0, "00000"

    .line 61
    :try_start_0
    sget-object v1, Lcom/hzbhd/midwareproxy/speechrecognition/BodaSystemManager;->mISpeechSettingsAIDL:Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    if-eqz v1, :cond_0

    .line 62
    sget-object v1, Lcom/hzbhd/midwareproxy/speechrecognition/BodaSystemManager;->mISpeechSettingsAIDL:Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    invoke-interface {v1}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->getSerialNumber()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 64
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public init(Landroid/content/Context;Lcom/hzbhd/midwareproxy/speechrecognition/interfaces/OnBindListener;)V
    .locals 0

    .line 31
    sput-object p1, Lcom/hzbhd/midwareproxy/speechrecognition/BodaSystemManager;->mContext:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/BodaSystemManager;->mOnBindListener:Lcom/hzbhd/midwareproxy/speechrecognition/interfaces/OnBindListener;

    .line 33
    invoke-direct {p0, p1}, Lcom/hzbhd/midwareproxy/speechrecognition/BodaSystemManager;->bindSysService(Landroid/content/Context;)V

    return-void
.end method

.method public release()V
    .locals 2

    .line 37
    sget-object v0, Lcom/hzbhd/midwareproxy/speechrecognition/BodaSystemManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/speechrecognition/BodaSystemManager;->Connection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 38
    sput-object v0, Lcom/hzbhd/midwareproxy/speechrecognition/BodaSystemManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public removeCallBack(Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechCallback;)V
    .locals 1

    .line 52
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/speechrecognition/BodaSystemManager;->mISpeechSettingsAIDL:Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    if-eqz v0, :cond_0

    .line 53
    sget-object v0, Lcom/hzbhd/midwareproxy/speechrecognition/BodaSystemManager;->mISpeechSettingsAIDL:Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->removeCallBack(Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 55
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
