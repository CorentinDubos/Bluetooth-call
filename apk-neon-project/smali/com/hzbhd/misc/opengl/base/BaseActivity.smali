.class public Lcom/hzbhd/misc/opengl/base/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"


# instance fields
.field TAG:Ljava/lang/String;

.field private mGLSurfaceViewUI:Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/hzbhd/misc/opengl/base/BaseActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_opengl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hzbhd/misc/opengl/base/BaseActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static isRK3399P()Z
    .locals 1

    .line 105
    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object v0

    instance-of v0, v0, Lcom/hzbhd/midwareproxy/hardware/RK3399P_HardwarePlatform;

    return v0
.end method


# virtual methods
.method public container_SurfaceView_addView(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1

    .line 39
    invoke-static {}, Lcom/hzbhd/misc/opengl/base/BaseActivity;->isRK3399P()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 40
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_1
    if-eqz p1, :cond_2

    .line 44
    invoke-virtual {p0}, Lcom/hzbhd/misc/opengl/base/BaseActivity;->inflatemGLSurfaceViewUI()Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    if-eqz p2, :cond_3

    const/16 p1, 0x8

    .line 48
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public inflatemGLSurfaceViewUI()Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;
    .locals 1

    .line 26
    invoke-static {}, Lcom/hzbhd/misc/opengl/base/BaseActivity;->isRK3399P()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/hzbhd/misc/opengl/base/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hzbhd/misc/opengl/DataController;->getInstance(Landroid/content/Context;)Lcom/hzbhd/misc/opengl/DataController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/misc/opengl/DataController;->getGLSurfaceViewForAuxin()Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;

    move-result-object v0

    iput-object v0, p0, Lcom/hzbhd/misc/opengl/base/BaseActivity;->mGLSurfaceViewUI:Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;

    .line 28
    invoke-virtual {v0}, Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 30
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/base/BaseActivity;->mGLSurfaceViewUI:Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;

    return-object v0
.end method

.method protected isGLSurfaceViewUI()Z
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/base/BaseActivity;->mGLSurfaceViewUI:Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-static {}, Lcom/hzbhd/misc/opengl/base/BaseActivity;->isRK3399P()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 54
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/misc/opengl/base/BaseActivity;->mGLSurfaceViewUI:Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/hzbhd/misc/constance/Constance;->ON_FLAG:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_1
    iget-object p1, p0, Lcom/hzbhd/misc/opengl/base/BaseActivity;->TAG:Ljava/lang/String;

    const-string v0, "onCreate"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 98
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 99
    invoke-static {}, Lcom/hzbhd/misc/opengl/base/BaseActivity;->isRK3399P()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/base/BaseActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/base/BaseActivity;->mGLSurfaceViewUI:Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;->onDestroy()V

    :cond_1
    const/4 v0, 0x0

    .line 102
    iput-object v0, p0, Lcom/hzbhd/misc/opengl/base/BaseActivity;->mGLSurfaceViewUI:Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 89
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 90
    invoke-static {}, Lcom/hzbhd/misc/opengl/base/BaseActivity;->isRK3399P()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/base/BaseActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 71
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 72
    invoke-static {}, Lcom/hzbhd/misc/opengl/base/BaseActivity;->isRK3399P()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/base/BaseActivity;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/base/BaseActivity;->mGLSurfaceViewUI:Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;->resetData()V

    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 60
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 61
    invoke-static {}, Lcom/hzbhd/misc/opengl/base/BaseActivity;->isRK3399P()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/base/BaseActivity;->TAG:Ljava/lang/String;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/base/BaseActivity;->mGLSurfaceViewUI:Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/hzbhd/misc/constance/Constance;->ON_FLAG:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/base/BaseActivity;->mGLSurfaceViewUI:Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;->onStart()V

    :cond_2
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 79
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 80
    invoke-static {}, Lcom/hzbhd/misc/opengl/base/BaseActivity;->isRK3399P()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/base/BaseActivity;->TAG:Ljava/lang/String;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/base/BaseActivity;->mGLSurfaceViewUI:Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/hzbhd/misc/constance/Constance;->OFF_FLAG:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/base/BaseActivity;->mGLSurfaceViewUI:Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;->onStop()V

    :cond_2
    return-void
.end method
