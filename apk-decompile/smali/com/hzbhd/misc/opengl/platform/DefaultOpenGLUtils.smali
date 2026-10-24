.class public Lcom/hzbhd/misc/opengl/platform/DefaultOpenGLUtils;
.super Lcom/hzbhd/misc/opengl/base/OpenGLUtils;
.source "DefaultOpenGLUtils.java"


# static fields
.field static mOpenGLUtils:Lcom/hzbhd/misc/opengl/platform/DefaultOpenGLUtils;


# instance fields
.field TAG:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field private mGLSurfaceViewUI:Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Lcom/hzbhd/misc/opengl/base/OpenGLUtils;-><init>()V

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/hzbhd/misc/opengl/platform/DefaultOpenGLUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_opengl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hzbhd/misc/opengl/platform/DefaultOpenGLUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/hzbhd/misc/opengl/platform/DefaultOpenGLUtils;
    .locals 1

    .line 27
    sget-object v0, Lcom/hzbhd/misc/opengl/platform/DefaultOpenGLUtils;->mOpenGLUtils:Lcom/hzbhd/misc/opengl/platform/DefaultOpenGLUtils;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/hzbhd/misc/opengl/platform/DefaultOpenGLUtils;

    invoke-direct {v0}, Lcom/hzbhd/misc/opengl/platform/DefaultOpenGLUtils;-><init>()V

    sput-object v0, Lcom/hzbhd/misc/opengl/platform/DefaultOpenGLUtils;->mOpenGLUtils:Lcom/hzbhd/misc/opengl/platform/DefaultOpenGLUtils;

    .line 30
    :cond_0
    sget-object v0, Lcom/hzbhd/misc/opengl/platform/DefaultOpenGLUtils;->mOpenGLUtils:Lcom/hzbhd/misc/opengl/platform/DefaultOpenGLUtils;

    return-object v0
.end method


# virtual methods
.method public container_SurfaceView_addView(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public container_SurfaceView_addView(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public inflatemGLSurfaceViewUI(Landroid/content/Context;)Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method
