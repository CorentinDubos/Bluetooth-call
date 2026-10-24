.class public Lcom/hzbhd/midwareproxy/speechrecognition/ExternalManager;
.super Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;
.source "ExternalManager.java"


# static fields
.field private static mExternalManager:Lcom/hzbhd/midwareproxy/speechrecognition/ExternalManager;

.field private static mSpeechRecognitionInterface:Lcom/hzbhd/midwareproxy/speechrecognition/aidl/SpeechRecognitionInterface;


# instance fields
.field private getServiceObj:Landroid/os/IBinder;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/hzbhd/midwareproxy/speechrecognition/ExternalManager;->getServiceObj:Landroid/os/IBinder;

    .line 21
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/speechrecognition/ExternalManager;->getServiceConnection()Z

    return-void
.end method

.method public static declared-synchronized getExternalManager()Lcom/hzbhd/midwareproxy/speechrecognition/ExternalManager;
    .locals 2

    const-class v0, Lcom/hzbhd/midwareproxy/speechrecognition/ExternalManager;

    monitor-enter v0

    .line 25
    :try_start_0
    sget-object v1, Lcom/hzbhd/midwareproxy/speechrecognition/ExternalManager;->mExternalManager:Lcom/hzbhd/midwareproxy/speechrecognition/ExternalManager;

    if-nez v1, :cond_0

    .line 26
    new-instance v1, Lcom/hzbhd/midwareproxy/speechrecognition/ExternalManager;

    invoke-direct {v1}, Lcom/hzbhd/midwareproxy/speechrecognition/ExternalManager;-><init>()V

    sput-object v1, Lcom/hzbhd/midwareproxy/speechrecognition/ExternalManager;->mExternalManager:Lcom/hzbhd/midwareproxy/speechrecognition/ExternalManager;

    .line 28
    :cond_0
    sget-object v1, Lcom/hzbhd/midwareproxy/speechrecognition/ExternalManager;->mSpeechRecognitionInterface:Lcom/hzbhd/midwareproxy/speechrecognition/aidl/SpeechRecognitionInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 29
    monitor-exit v0

    return-object v1

    .line 32
    :cond_1
    :try_start_1
    sget-object v1, Lcom/hzbhd/midwareproxy/speechrecognition/ExternalManager;->mExternalManager:Lcom/hzbhd/midwareproxy/speechrecognition/ExternalManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public closeApp(Ljava/lang/String;)Z
    .locals 1

    .line 64
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/speechrecognition/ExternalManager;->mSpeechRecognitionInterface:Lcom/hzbhd/midwareproxy/speechrecognition/aidl/SpeechRecognitionInterface;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/SpeechRecognitionInterface;->closeApp(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 66
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getServiceConnection()Z
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/speechrecognition/ExternalManager;->connectService()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/speechrecognition/ExternalManager;->getServiceObj:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 39
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/SpeechRecognitionInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/speechrecognition/aidl/SpeechRecognitionInterface;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/midwareproxy/speechrecognition/ExternalManager;->mSpeechRecognitionInterface:Lcom/hzbhd/midwareproxy/speechrecognition/aidl/SpeechRecognitionInterface;

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 42
    sput-object v0, Lcom/hzbhd/midwareproxy/speechrecognition/ExternalManager;->mSpeechRecognitionInterface:Lcom/hzbhd/midwareproxy/speechrecognition/aidl/SpeechRecognitionInterface;

    const/4 v0, 0x0

    return v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    const-string v0, "hzbhd.speechrecognition"

    return-object v0
.end method

.method public openApp(Ljava/lang/String;)Z
    .locals 1

    .line 73
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/speechrecognition/ExternalManager;->mSpeechRecognitionInterface:Lcom/hzbhd/midwareproxy/speechrecognition/aidl/SpeechRecognitionInterface;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/SpeechRecognitionInterface;->openApp(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 75
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public serviceDied()V
    .locals 0

    .line 59
    invoke-super {p0}, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;->serviceDied()V

    return-void
.end method

.method public serviceReConnected()V
    .locals 0

    .line 54
    invoke-super {p0}, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;->serviceReConnected()V

    return-void
.end method
