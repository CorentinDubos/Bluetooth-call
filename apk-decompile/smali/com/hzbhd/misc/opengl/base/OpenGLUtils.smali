.class public Lcom/hzbhd/misc/opengl/base/OpenGLUtils;
.super Ljava/lang/Object;
.source "OpenGLUtils.java"


# static fields
.field static mOpenGLUtils:Lcom/hzbhd/misc/opengl/base/OpenGLUtils;


# instance fields
.field TAG:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field private mGLSurfaceViewUI:Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/hzbhd/misc/opengl/base/OpenGLUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_opengl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hzbhd/misc/opengl/base/OpenGLUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/hzbhd/misc/opengl/base/OpenGLUtils;
    .locals 1

    .line 34
    sget-object v0, Lcom/hzbhd/misc/opengl/base/OpenGLUtils;->mOpenGLUtils:Lcom/hzbhd/misc/opengl/base/OpenGLUtils;

    if-nez v0, :cond_1

    .line 35
    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object v0

    instance-of v0, v0, Lcom/hzbhd/midwareproxy/hardware/RK3399P_HardwarePlatform;

    if-eqz v0, :cond_0

    .line 36
    new-instance v0, Lcom/hzbhd/misc/opengl/base/OpenGLUtils;

    invoke-direct {v0}, Lcom/hzbhd/misc/opengl/base/OpenGLUtils;-><init>()V

    sput-object v0, Lcom/hzbhd/misc/opengl/base/OpenGLUtils;->mOpenGLUtils:Lcom/hzbhd/misc/opengl/base/OpenGLUtils;

    goto :goto_0

    .line 38
    :cond_0
    new-instance v0, Lcom/hzbhd/misc/opengl/platform/DefaultOpenGLUtils;

    invoke-direct {v0}, Lcom/hzbhd/misc/opengl/platform/DefaultOpenGLUtils;-><init>()V

    sput-object v0, Lcom/hzbhd/misc/opengl/base/OpenGLUtils;->mOpenGLUtils:Lcom/hzbhd/misc/opengl/base/OpenGLUtils;

    .line 42
    :cond_1
    :goto_0
    sget-object v0, Lcom/hzbhd/misc/opengl/base/OpenGLUtils;->mOpenGLUtils:Lcom/hzbhd/misc/opengl/base/OpenGLUtils;

    return-object v0
.end method


# virtual methods
.method public container_SurfaceView_addView(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    .line 57
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x8

    .line 58
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 59
    invoke-virtual {p0, p1, v0, p2}, Lcom/hzbhd/misc/opengl/base/OpenGLUtils;->container_SurfaceView_addView(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method public container_SurfaceView_addView(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 2

    .line 62
    iput-object p1, p0, Lcom/hzbhd/misc/opengl/base/OpenGLUtils;->mContext:Landroid/content/Context;

    .line 63
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/base/OpenGLUtils;->TAG:Ljava/lang/String;

    const-string v1, "container_SurfaceView_addView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    .line 64
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 68
    :cond_0
    invoke-virtual {p0, p1}, Lcom/hzbhd/misc/opengl/base/OpenGLUtils;->inflatemGLSurfaceViewUI(Landroid/content/Context;)Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 70
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    if-eqz p3, :cond_2

    const/16 p1, 0x8

    .line 75
    invoke-virtual {p3, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public inflatemGLSurfaceViewUI(Landroid/content/Context;)Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;
    .locals 0

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/hzbhd/misc/opengl/DataController;->getInstance(Landroid/content/Context;)Lcom/hzbhd/misc/opengl/DataController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/misc/opengl/DataController;->getGLSurfaceViewForAuxin()Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/misc/opengl/base/OpenGLUtils;->mGLSurfaceViewUI:Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;

    if-nez p1, :cond_0

    return-object p1

    .line 49
    :cond_0
    invoke-virtual {p1}, Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    .line 51
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 53
    :cond_1
    iget-object p1, p0, Lcom/hzbhd/misc/opengl/base/OpenGLUtils;->mGLSurfaceViewUI:Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/base/OpenGLUtils;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/base/OpenGLUtils;->mGLSurfaceViewUI:Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/hzbhd/misc/constance/Constance;->ON_FLAG:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/base/OpenGLUtils;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/base/OpenGLUtils;->mGLSurfaceViewUI:Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;->onDestroy()V

    :cond_0
    const/4 v0, 0x0

    .line 122
    iput-object v0, p0, Lcom/hzbhd/misc/opengl/base/OpenGLUtils;->mGLSurfaceViewUI:Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/base/OpenGLUtils;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/base/OpenGLUtils;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/base/OpenGLUtils;->mGLSurfaceViewUI:Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;->resetData()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/base/OpenGLUtils;->TAG:Ljava/lang/String;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/base/OpenGLUtils;->mGLSurfaceViewUI:Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/hzbhd/misc/constance/Constance;->ON_FLAG:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/base/OpenGLUtils;->mGLSurfaceViewUI:Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;->onStart()V

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/base/OpenGLUtils;->TAG:Ljava/lang/String;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/base/OpenGLUtils;->mGLSurfaceViewUI:Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/hzbhd/misc/constance/Constance;->OFF_FLAG:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/base/OpenGLUtils;->mGLSurfaceViewUI:Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;->onStop()V

    :cond_1
    return-void
.end method
