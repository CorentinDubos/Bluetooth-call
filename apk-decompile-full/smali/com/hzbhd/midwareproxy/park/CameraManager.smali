.class public Lcom/hzbhd/midwareproxy/park/CameraManager;
.super Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;
.source "CameraManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "CameraManager"

.field private static mCameraManager:Lcom/hzbhd/midwareproxy/park/CameraManager;


# instance fields
.field private mCameraInterface:Lcom/hzbhd/midwareproxy/binder/service/ICameraInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;-><init>()V

    return-void
.end method

.method private getCameraInterface()Lcom/hzbhd/midwareproxy/binder/service/ICameraInterface;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/park/CameraManager;->mCameraInterface:Lcom/hzbhd/midwareproxy/binder/service/ICameraInterface;

    if-nez v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/park/CameraManager;->connectService()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/binder/service/ICameraInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/binder/service/ICameraInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/park/CameraManager;->mCameraInterface:Lcom/hzbhd/midwareproxy/binder/service/ICameraInterface;

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/park/CameraManager;->mCameraInterface:Lcom/hzbhd/midwareproxy/binder/service/ICameraInterface;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/hzbhd/midwareproxy/park/CameraManager;
    .locals 2

    const-class v0, Lcom/hzbhd/midwareproxy/park/CameraManager;

    monitor-enter v0

    .line 21
    :try_start_0
    sget-object v1, Lcom/hzbhd/midwareproxy/park/CameraManager;->mCameraManager:Lcom/hzbhd/midwareproxy/park/CameraManager;

    if-nez v1, :cond_0

    .line 22
    new-instance v1, Lcom/hzbhd/midwareproxy/park/CameraManager;

    invoke-direct {v1}, Lcom/hzbhd/midwareproxy/park/CameraManager;-><init>()V

    sput-object v1, Lcom/hzbhd/midwareproxy/park/CameraManager;->mCameraManager:Lcom/hzbhd/midwareproxy/park/CameraManager;

    .line 24
    :cond_0
    sget-object v1, Lcom/hzbhd/midwareproxy/park/CameraManager;->mCameraManager:Lcom/hzbhd/midwareproxy/park/CameraManager;
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
.method public addCameraCallback(Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback;)V
    .locals 1

    .line 68
    :try_start_0
    invoke-static {}, Lcom/hzbhd/config/base/ConfigUtil;->getJarConfig()Lcom/hzbhd/config/base/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/config/base/Config;->getMisc()Lcom/hzbhd/config/base/Config$Misc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/config/base/Config$Misc;->isAppCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/park/CameraManager;->getCameraInterface()Lcom/hzbhd/midwareproxy/binder/service/ICameraInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ICameraInterface;->addCameraCallback(Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 72
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public addWindow(I)V
    .locals 1

    .line 90
    :try_start_0
    invoke-static {}, Lcom/hzbhd/config/base/ConfigUtil;->getJarConfig()Lcom/hzbhd/config/base/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/config/base/Config;->getMisc()Lcom/hzbhd/config/base/Config$Misc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/config/base/Config$Misc;->isAppCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/park/CameraManager;->getCameraInterface()Lcom/hzbhd/midwareproxy/binder/service/ICameraInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ICameraInterface;->addWindow(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 94
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public cameraEnable(Z)V
    .locals 1

    .line 131
    :try_start_0
    invoke-static {}, Lcom/hzbhd/config/base/ConfigUtil;->getJarConfig()Lcom/hzbhd/config/base/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/config/base/Config;->getMisc()Lcom/hzbhd/config/base/Config$Misc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/config/base/Config$Misc;->isAppCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/park/CameraManager;->getCameraInterface()Lcom/hzbhd/midwareproxy/binder/service/ICameraInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ICameraInterface;->cameraEnable(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 135
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public cameraStateChange()V
    .locals 1

    .line 120
    :try_start_0
    invoke-static {}, Lcom/hzbhd/config/base/ConfigUtil;->getJarConfig()Lcom/hzbhd/config/base/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/config/base/Config;->getMisc()Lcom/hzbhd/config/base/Config$Misc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/config/base/Config$Misc;->isAppCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/park/CameraManager;->getCameraInterface()Lcom/hzbhd/midwareproxy/binder/service/ICameraInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ICameraInterface;->cameraStateChange()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 124
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public connectService()Landroid/os/IBinder;
    .locals 1

    .line 34
    invoke-super {p0}, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;->connectService()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public getServiceConnection()Z
    .locals 1

    .line 39
    invoke-super {p0}, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;->getServiceConnection()Z

    move-result v0

    return v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    const-string v0, "hzbhd.camera"

    return-object v0
.end method

.method public isServiceConnected()Z
    .locals 1

    .line 44
    invoke-super {p0}, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;->isServiceConnected()Z

    move-result v0

    return v0
.end method

.method public removeCameraCallback(Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback;)V
    .locals 1

    .line 79
    :try_start_0
    invoke-static {}, Lcom/hzbhd/config/base/ConfigUtil;->getJarConfig()Lcom/hzbhd/config/base/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/config/base/Config;->getMisc()Lcom/hzbhd/config/base/Config$Misc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/config/base/Config$Misc;->isAppCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/park/CameraManager;->getCameraInterface()Lcom/hzbhd/midwareproxy/binder/service/ICameraInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ICameraInterface;->removeCameraCallback(Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 83
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public removeWindow()V
    .locals 1

    .line 100
    :try_start_0
    invoke-static {}, Lcom/hzbhd/config/base/ConfigUtil;->getJarConfig()Lcom/hzbhd/config/base/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/config/base/Config;->getMisc()Lcom/hzbhd/config/base/Config$Misc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/config/base/Config$Misc;->isAppCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/park/CameraManager;->getCameraInterface()Lcom/hzbhd/midwareproxy/binder/service/ICameraInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ICameraInterface;->removeWindow()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 104
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public serviceDied()V
    .locals 1

    .line 54
    invoke-super {p0}, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;->serviceDied()V

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/hzbhd/midwareproxy/park/CameraManager;->mCameraInterface:Lcom/hzbhd/midwareproxy/binder/service/ICameraInterface;

    return-void
.end method

.method public serviceReConnected()V
    .locals 0

    .line 49
    invoke-super {p0}, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;->serviceReConnected()V

    return-void
.end method

.method public setAnalogInputColor(III)V
    .locals 1

    .line 141
    :try_start_0
    invoke-static {}, Lcom/hzbhd/config/base/ConfigUtil;->getJarConfig()Lcom/hzbhd/config/base/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/config/base/Config;->getMisc()Lcom/hzbhd/config/base/Config$Misc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/config/base/Config$Misc;->isAppCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/park/CameraManager;->getCameraInterface()Lcom/hzbhd/midwareproxy/binder/service/ICameraInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/hzbhd/midwareproxy/binder/service/ICameraInterface;->setAnalogInputColor(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 145
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setSurfaceViewParam(IIFF)V
    .locals 1

    .line 161
    :try_start_0
    invoke-static {}, Lcom/hzbhd/config/base/ConfigUtil;->getJarConfig()Lcom/hzbhd/config/base/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/config/base/Config;->getMisc()Lcom/hzbhd/config/base/Config$Misc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/config/base/Config$Misc;->isAppCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/park/CameraManager;->getCameraInterface()Lcom/hzbhd/midwareproxy/binder/service/ICameraInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/hzbhd/midwareproxy/binder/service/ICameraInterface;->setSurfaceViewParam(IIFF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 165
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public stopPreview()V
    .locals 1

    .line 151
    :try_start_0
    invoke-static {}, Lcom/hzbhd/config/base/ConfigUtil;->getJarConfig()Lcom/hzbhd/config/base/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/config/base/Config;->getMisc()Lcom/hzbhd/config/base/Config$Misc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/config/base/Config$Misc;->isAppCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/park/CameraManager;->getCameraInterface()Lcom/hzbhd/midwareproxy/binder/service/ICameraInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ICameraInterface;->stopPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 155
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public switchCamera(I)V
    .locals 1

    .line 110
    :try_start_0
    invoke-static {}, Lcom/hzbhd/config/base/ConfigUtil;->getJarConfig()Lcom/hzbhd/config/base/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/config/base/Config;->getMisc()Lcom/hzbhd/config/base/Config$Misc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/config/base/Config$Misc;->isAppCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/park/CameraManager;->getCameraInterface()Lcom/hzbhd/midwareproxy/binder/service/ICameraInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ICameraInterface;->switchCamera(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 114
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
