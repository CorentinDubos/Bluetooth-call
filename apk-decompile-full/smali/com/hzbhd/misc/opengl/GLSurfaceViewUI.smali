.class public Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;
.super Landroid/opengl/GLSurfaceView;
.source "GLSurfaceViewUI.java"

# interfaces
.implements Lcom/hzbhd/misc/opengl/DataController$DataCallback;


# static fields
.field static TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field renderer:Lcom/hzbhd/misc/opengl/OpenGLRenderer;

.field view:Landroid/opengl/GLSurfaceView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-class v0, Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1, v0, p2}, Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    iput-object p1, p0, Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;->mContext:Landroid/content/Context;

    .line 24
    invoke-virtual {p0}, Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;->onCreate()V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;->onTouchEvent2(Landroid/view/MotionEvent;)Z

    .line 30
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onCreate()V
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hzbhd/misc/opengl/DataController;->getInstance(Landroid/content/Context;)Lcom/hzbhd/misc/opengl/DataController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/misc/opengl/DataController;->onCreate()V

    const-string v0, "opengl"

    const-string v1, "bitmap success create...11"

    .line 77
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iput-object p0, p0, Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;->view:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x2

    .line 79
    invoke-virtual {p0, v1}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 80
    iget-object v1, p0, Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;->renderer:Lcom/hzbhd/misc/opengl/OpenGLRenderer;

    if-nez v1, :cond_0

    const-string v1, "bitmap success create...33"

    .line 82
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    new-instance v0, Lcom/hzbhd/misc/opengl/OpenGLRenderer;

    iget-object v1, p0, Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/hzbhd/misc/opengl/DataController;->getInstance(Landroid/content/Context;)Lcom/hzbhd/misc/opengl/DataController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hzbhd/misc/opengl/DataController;->getDatas()Lcom/hzbhd/misc/opengl/Data;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/hzbhd/misc/opengl/OpenGLRenderer;-><init>(Landroid/content/Context;Lcom/hzbhd/misc/opengl/Data;)V

    iput-object v0, p0, Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;->renderer:Lcom/hzbhd/misc/opengl/OpenGLRenderer;

    .line 84
    iget-object v1, p0, Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;->view:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v1, v0}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 85
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;->view:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    :cond_0
    return-void
.end method

.method public onDataCallback(Lcom/hzbhd/misc/opengl/Data;)V
    .locals 2

    const-string v0, "opengl"

    const-string v1, "onDataCallback"

    .line 60
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 62
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;->renderer:Lcom/hzbhd/misc/opengl/OpenGLRenderer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/hzbhd/misc/opengl/OpenGLRenderer;->setData(Lcom/hzbhd/misc/opengl/Data;)V

    .line 63
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;->view:Landroid/opengl/GLSurfaceView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/opengl/GLSurfaceView;->requestRender()V

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hzbhd/misc/opengl/DataController;->getInstance(Landroid/content/Context;)Lcom/hzbhd/misc/opengl/DataController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/misc/opengl/DataController;->activity_closeMode()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hzbhd/misc/opengl/DataController;->getInstance(Landroid/content/Context;)Lcom/hzbhd/misc/opengl/DataController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/misc/opengl/DataController;->openMode()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hzbhd/misc/opengl/DataController;->getInstance(Landroid/content/Context;)Lcom/hzbhd/misc/opengl/DataController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/misc/opengl/DataController;->removeCallbacksAndMessages()V

    return-void
.end method

.method public onTouchEvent2(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;->getHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,-- "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "onTouchEvent"

    invoke-static {v3, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v3, :cond_1

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    goto/16 :goto_0

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;->getWidth()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;->getHeight()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onTouchEvent 22"

    invoke-static {v0, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 48
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;->getWidth()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;->getHeight()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onTouchEvent 33"

    invoke-static {v0, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 39
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;->getWidth()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;->getHeight()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onTouchEvent 11"

    invoke-static {v1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-static {}, Lcom/hzbhd/midwareproxy/utils/DTVModuleUtils;->cansendDTVTouchPoint()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 41
    invoke-static {}, Lcom/hzbhd/midwareproxy/dtv/DTVManager;->getDTVManager()Lcom/hzbhd/midwareproxy/dtv/DTVManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, v1, v2, v4, p1}, Lcom/hzbhd/midwareproxy/dtv/DTVManager;->sendPositionParams(IIII)V

    :cond_3
    :goto_0
    return v3
.end method

.method public resetData()V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hzbhd/misc/opengl/DataController;->getInstance(Landroid/content/Context;)Lcom/hzbhd/misc/opengl/DataController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/misc/opengl/DataController;->resetData()V

    return-void
.end method
