.class public Lcom/hzbhd/config/jar/dualscreen/ActivityView;
.super Landroid/widget/RelativeLayout;
.source "ActivityView.java"


# static fields
.field private static final DEBUG:Z = true

.field public static final DPI:I = 0xa0

.field public static final HEIGHT:I = 0x258

.field private static final TAG:Ljava/lang/String; = "ActivityView"

.field public static final WIDTH:I = 0x400


# instance fields
.field private isActivityRunning:Z

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mContext:Landroid/content/Context;

.field private mCurrTaskId:I

.field private mInputForwarder:Landroid/app/IInputForwarder;

.field private final mLocationOnScreen:[I

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

.field private mTaskStackListener:Landroid/app/TaskStackListener;

.field private mTextureView:Landroid/view/TextureView;

.field private mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 48
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 41
    iput-object v0, p0, Lcom/hzbhd/config/jar/dualscreen/ActivityView;->mLocationOnScreen:[I

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/hzbhd/config/jar/dualscreen/ActivityView;->isActivityRunning:Z

    const/4 v0, -0x1

    .line 45
    iput v0, p0, Lcom/hzbhd/config/jar/dualscreen/ActivityView;->mCurrTaskId:I

    .line 197
    new-instance v0, Lcom/hzbhd/config/jar/dualscreen/ActivityView$2;

    invoke-direct {v0, p0}, Lcom/hzbhd/config/jar/dualscreen/ActivityView$2;-><init>(Lcom/hzbhd/config/jar/dualscreen/ActivityView;)V

    iput-object v0, p0, Lcom/hzbhd/config/jar/dualscreen/ActivityView;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 243
    new-instance v0, Lcom/hzbhd/config/jar/dualscreen/ActivityView$3;

    invoke-direct {v0, p0}, Lcom/hzbhd/config/jar/dualscreen/ActivityView$3;-><init>(Lcom/hzbhd/config/jar/dualscreen/ActivityView;)V

    iput-object v0, p0, Lcom/hzbhd/config/jar/dualscreen/ActivityView;->mTaskStackListener:Landroid/app/TaskStackListener;

    .line 49
    invoke-direct {p0, p1}, Lcom/hzbhd/config/jar/dualscreen/ActivityView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x2

    new-array p2, p2, [I

    .line 41
    iput-object p2, p0, Lcom/hzbhd/config/jar/dualscreen/ActivityView;->mLocationOnScreen:[I

    const/4 p2, 0x0

    .line 43
    iput-boolean p2, p0, Lcom/hzbhd/config/jar/dualscreen/ActivityView;->isActivityRunning:Z

    const/4 p2, -0x1

    .line 45
    iput p2, p0, Lcom/hzbhd/config/jar/dualscreen/ActivityView;->mCurrTaskId:I

    .line 197
    new-instance p2, Lcom/hzbhd/config/jar/dualscreen/ActivityView$2;

    invoke-direct {p2, p0}, Lcom/hzbhd/config/jar/dualscreen/ActivityView$2;-><init>(Lcom/hzbhd/config/jar/dualscreen/ActivityView;)V

    iput-object p2, p0, Lcom/hzbhd/config/jar/dualscreen/ActivityView;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 243
    new-instance p2, Lcom/hzbhd/config/jar/dualscreen/ActivityView$3;

    invoke-direct {p2, p0}, Lcom/hzbhd/config/jar/dualscreen/ActivityView$3;-><init>(Lcom/hzbhd/config/jar/dualscreen/ActivityView;)V

    iput-object p2, p0, Lcom/hzbhd/config/jar/dualscreen/ActivityView;->mTaskStackListener:Landroid/app/TaskStackListener;

    .line 54
    invoke-direct {p0, p1}, Lcom/hzbhd/config/jar/dualscreen/ActivityView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x2

    new-array p2, p2, [I

    .line 41
    iput-object p2, p0, Lcom/hzbhd/config/jar/dualscreen/ActivityView;->mLocationOnScreen:[I

    const/4 p2, 0x0

    .line 43
    iput-boolean p2, p0, Lcom/hzbhd/config/jar/dualscreen/ActivityView;->isActivityRunning:Z

    const/4 p2, -0x1

    .line 45
    iput p2, p0, Lcom/hzbhd/config/jar/dualscreen/ActivityView;->mCurrTaskId:I

    .line 197
    new-instance p2, Lcom/hzbhd/config/jar/dualscreen/ActivityView$2;

    invoke-direct {p2, p0}, Lcom/hzbhd/config/jar/dualscreen/ActivityView$2;-><init>(Lcom/hzbhd/config/jar/dualscreen/ActivityView;)V

    iput-object p2, p0, Lcom/hzbhd/config/jar/dualscreen/ActivityView;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 243
    new-instance p2, Lcom/hzbhd/config/jar/dualscreen/ActivityView$3;

    invoke-direct {p2, p0}, Lcom/hzbhd/config/jar/dualscreen/ActivityView$3;-><init>(Lcom/hzbhd/config/jar/dualscreen/ActivityView;)V

    iput-object p2, p0, Lcom/hzbhd/config/jar/dualscreen/ActivityView;->mTaskStackListener:Landroid/app/TaskStackListener;

    .line 59
    invoke-direct {p0, p1}, Lcom/hzbhd/config/jar/dualscreen/ActivityView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x2

    new-array p2, p2, [I

    .line 41
    iput-object p2, p0, Lcom/hzbhd/config/jar/dualscreen/ActivityView;->mLocationOnScreen:[I

    const/4 p2, 0x0

    .line 43
    iput-boolean p2, p0, Lcom/hzbhd/config/jar/dualscreen/ActivityView;->isActivityRunning:Z

    const/4 p2, -0x1

    .line 45
    iput p2, p0, Lcom/hzbhd/config/jar/dualscreen/ActivityView;->mCurrTaskId:I

    .line 197
    new-instance p2, Lcom/hzbhd/config/jar/dualscreen/ActivityView$2;

    invoke-direct {p2, p0}, Lcom/hzbhd/config/jar/dualscreen/ActivityView$2;-><init>(Lcom/hzbhd/config/jar/dualscreen/ActivityView;)V

    iput-object p2, p0, Lcom/hzbhd/config/jar/dualscreen/ActivityView;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 243
    new-instance p2, Lcom/hzbhd/config/jar/dualscreen/ActivityView$3;

    invoke-direct {p2, p0}, Lcom/hzbhd/config/jar/dualscreen/ActivityView$3;-><init>(Lcom/hzbhd/config/jar/dualscreen/ActivityView;)V

    iput-object p2, p0, Lcom/hzbhd/config/jar/dualscreen/ActivityView;->mTaskStackListener:Landroid/app/TaskStackListener;

    .line 64
    invoke-direct {p0, p1}, Lcom/hzbhd/config/jar/dualscreen/ActivityView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/hzbhd/config/jar/dualscreen/ActivityView;)Landroid/graphics/SurfaceTexture;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/hzbhd/config/jar/dualscreen/ActivityView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method static synthetic access$002(Lcom/hzbhd/config/jar/dualscreen/ActivityView;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/hzbhd/config/jar/dualscreen/ActivityView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method static synthetic access$100(Lcom/hzbhd/config/jar/dualscreen/ActivityView;)Landroid/view/Surface;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/hzbhd/config/jar/dualscreen/ActivityView;->mSurface:Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic access$102(Lcom/hzbhd/config/jar/dualscreen/ActivityView;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/hzbhd/config/jar/dualscreen/ActivityView;->mSurface:Landroid/view/Surface;

    return-object p1
.end method

.method static synthetic access$200(Lcom/hzbhd/config/jar/dualscreen/ActivityView;)Landroid/hardware/display/VirtualDisplay;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/hzbhd/config/jar/dualscreen/ActivityView;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    return-object p0
.end method

.method static synthetic access$300(Lcom/hzbhd/config/jar/dualscreen/ActivityView;)Landroid/view/TextureView;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/hzbhd/config/jar/dualscreen/ActivityView;->mTextureView:Landroid/view/TextureView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/hzbhd/config/jar/dualscreen/ActivityView;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/hzbhd/config/jar/dualscreen/ActivityView;->mCurrTaskId:I

    return p0
.end method

.method static synthetic access$402(Lcom/hzbhd/config/jar/dualscreen/ActivityView;I)I
    .locals 0

    .line 28
    iput p1, p0, Lcom/hzbhd/config/jar/dualscreen/ActivityView;->mCurrTaskId:I

    return p1
.end method

.method static synthetic access$500(Lcom/hzbhd/config/jar/dualscreen/ActivityView;)Landroid/app/ActivityManager;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/hzbhd/config/jar/dualscreen/ActivityView;->mActivityManager:Landroid/app/ActivityManager;

    return-object p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    .line 69
    :try_start_0
    iput-object p1, p0, Lcom/hzbhd/config/jar/dualscreen/ActivityView;->mContext:Landroid/content/Context;

    .line 70
    new-instance v0, Landroid/view/TextureView;

    invoke-direct {v0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hzbhd/config/jar/dualscreen/ActivityView;->mTextureView:Landroid/view/TextureView;

    .line 75
    iget-object p1, p0, Lcom/hzbhd/config/jar/dualscreen/ActivityView;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {v0, p1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 76
    iget-object p1, p0, Lcom/hzbhd/config/jar/dualscreen/ActivityView;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p0, p1}, Lcom/hzbhd/config/jar/dualscreen/ActivityView;->addView(Landroid/view/View;)V

    .line 77
    invoke-virtual {p0}, Lcom/hzbhd/config/jar/dualscreen/ActivityView;->getVirtualDisplay()Landroid/hardware/display/VirtualDisplay;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 79
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private injectInputEvent(Landroid/view/InputEvent;)Z
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/hzbhd/config/jar/dualscreen/ActivityView;->mInputForwarder:Landroid/app/IInputForwarder;

    if-eqz v0, :cond_0

    .line 86
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/IInputForwarder;->forwardEvent(Landroid/view/InputEvent;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 89
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private updateLocation(II)V
    .locals 8

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/config/jar/dualscreen/ActivityView;->mLocationOnScreen:[I

    invoke-virtual {p0, v0}, Lcom/hzbhd/config/jar/dualscreen/ActivityView;->getLocationOnScreen([I)V

    .line 165
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hzbhd/config/jar/dualscreen/ActivityView;->getWindow()Landroid/view/IWindow;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    iget-object v0, p0, Lcom/hzbhd/config/jar/dualscreen/ActivityView;->mLocationOnScreen:[I

    const/4 v4, 0x0

    aget v4, v0, v4

    iget-object v0, p0, Lcom/hzbhd/config/jar/dualscreen/ActivityView;->mLocationOnScreen:[I

    const/4 v5, 0x1

    aget v5, v0, v5

    move v6, p1

    move v7, p2

    invoke-interface/range {v1 .. v7}, Landroid/view/IWindowSession;->updateTapExcludeRegion(Landroid/view/IWindow;IIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 167
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 113
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public getDisplayId()I
    .locals 1

    .line 172
    invoke-virtual {p0}, Lcom/hzbhd/config/jar/dualscreen/ActivityView;->getVirtualDisplay()Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    return v0
.end method

.method public getVirtualDisplay()Landroid/hardware/display/VirtualDisplay;
    .locals 10

    .line 117
    iget-object v0, p0, Lcom/hzbhd/config/jar/dualscreen/ActivityView;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-nez v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/hzbhd/config/jar/dualscreen/ActivityView;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/hardware/display/DisplayManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ActivityViewVirtualDisplay@"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x400

    const/16 v4, 0x258

    const/16 v5, 0xa0

    iget-object v6, p0, Lcom/hzbhd/config/jar/dualscreen/ActivityView;->mSurface:Landroid/view/Surface;

    const/4 v7, 0x2

    new-instance v8, Lcom/hzbhd/config/jar/dualscreen/ActivityView$1;

    invoke-direct {v8, p0}, Lcom/hzbhd/config/jar/dualscreen/ActivityView$1;-><init>(Lcom/hzbhd/config/jar/dualscreen/ActivityView;)V

    const/4 v9, 0x0

    .line 118
    invoke-virtual/range {v1 .. v9}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;ILandroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/hzbhd/config/jar/dualscreen/ActivityView;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-nez v0, :cond_0

    const-string v0, "ActivityView"

    const-string v1, "Failed to initialize ActivityView"

    .line 145
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 147
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    .line 148
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    .line 149
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/hardware/input/InputManager;->createInputForwarder(I)Landroid/app/IInputForwarder;

    move-result-object v2

    iput-object v2, p0, Lcom/hzbhd/config/jar/dualscreen/ActivityView;->mInputForwarder:Landroid/app/IInputForwarder;

    .line 151
    :try_start_0
    invoke-interface {v1, v0}, Landroid/view/IWindowManager;->dontOverrideDisplayInfo(I)V

    .line 152
    iget-object v0, p0, Lcom/hzbhd/config/jar/dualscreen/ActivityView;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/hzbhd/config/jar/dualscreen/ActivityView;->mActivityManager:Landroid/app/ActivityManager;

    .line 153
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/hzbhd/config/jar/dualscreen/ActivityView;->mTaskStackListener:Landroid/app/TaskStackListener;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 155
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 159
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/hzbhd/config/jar/dualscreen/ActivityView;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 240
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x2

    .line 103
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-direct {p0, p1}, Lcom/hzbhd/config/jar/dualscreen/ActivityView;->injectInputEvent(Landroid/view/InputEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 108
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 98
    invoke-direct {p0, p1}, Lcom/hzbhd/config/jar/dualscreen/ActivityView;->injectInputEvent(Landroid/view/InputEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
