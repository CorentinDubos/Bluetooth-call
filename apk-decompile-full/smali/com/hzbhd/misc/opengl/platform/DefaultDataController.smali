.class public Lcom/hzbhd/misc/opengl/platform/DefaultDataController;
.super Lcom/hzbhd/misc/opengl/DataController;
.source "DefaultDataController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/misc/opengl/platform/DefaultDataController$HandlerData;,
        Lcom/hzbhd/misc/opengl/platform/DefaultDataController$DataCallback;
    }
.end annotation


# static fields
.field private static final DETECT_SIGNLE_MSG:I = 0x4

.field private static final GET_DATA_MSG:I = 0x2

.field private static final GET_HEAD_MSG:I = 0x1

.field private static final IDLE_MSG:I = 0x4

.field private static final REQUEST_RENDER_MSG:I = 0x3

.field static TAG:Ljava/lang/String;

.field static mDataController:Lcom/hzbhd/misc/opengl/platform/DefaultDataController;

.field static videoHead:[I


# instance fields
.field channel:I

.field private dataTHread:Landroid/os/HandlerThread;

.field datas:Lcom/hzbhd/misc/opengl/Data;

.field format:I

.field height:I

.field private isDisc:Z

.field length:I

.field private mActivityManager:Landroid/app/ActivityManager;

.field mCameraId:I

.field mChannelId:I

.field mContext:Landroid/content/Context;

.field mDataCallback:Lcom/hzbhd/misc/opengl/platform/DefaultDataController$DataCallback;

.field mDataUpdate:Z

.field private mGLSurfaceViewUI:Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;

.field mGpioLevel:Z

.field private mHandler:Lcom/hzbhd/misc/opengl/platform/DefaultDataController$HandlerData;

.field mPackageName:Ljava/lang/String;

.field status:I

.field videoData:[B

.field width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/hzbhd/misc/opengl/platform/DefaultDataController;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_opengl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/misc/opengl/platform/DefaultDataController;->TAG:Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 50
    sput-object v0, Lcom/hzbhd/misc/opengl/platform/DefaultDataController;->videoHead:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 86
    invoke-direct {p0}, Lcom/hzbhd/misc/opengl/DataController;-><init>()V

    const/4 p1, 0x0

    .line 39
    iput-boolean p1, p0, Lcom/hzbhd/misc/opengl/platform/DefaultDataController;->isDisc:Z

    .line 41
    iput-boolean p1, p0, Lcom/hzbhd/misc/opengl/platform/DefaultDataController;->mDataUpdate:Z

    const v0, 0x2f7600

    new-array v0, v0, [B

    .line 51
    iput-object v0, p0, Lcom/hzbhd/misc/opengl/platform/DefaultDataController;->videoData:[B

    .line 52
    iput p1, p0, Lcom/hzbhd/misc/opengl/platform/DefaultDataController;->status:I

    .line 53
    iput p1, p0, Lcom/hzbhd/misc/opengl/platform/DefaultDataController;->width:I

    .line 54
    iput p1, p0, Lcom/hzbhd/misc/opengl/platform/DefaultDataController;->height:I

    .line 55
    iput p1, p0, Lcom/hzbhd/misc/opengl/platform/DefaultDataController;->format:I

    .line 56
    iput p1, p0, Lcom/hzbhd/misc/opengl/platform/DefaultDataController;->length:I

    .line 57
    iput p1, p0, Lcom/hzbhd/misc/opengl/platform/DefaultDataController;->channel:I

    const/4 v0, -0x1

    .line 62
    iput v0, p0, Lcom/hzbhd/misc/opengl/platform/DefaultDataController;->mChannelId:I

    .line 63
    iput-boolean p1, p0, Lcom/hzbhd/misc/opengl/platform/DefaultDataController;->mGpioLevel:Z

    return-void
.end method

.method private getData()V
    .locals 0

    return-void
.end method

.method private getHead()V
    .locals 0

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/hzbhd/misc/opengl/platform/DefaultDataController;
    .locals 2

    const-class v0, Lcom/hzbhd/misc/opengl/platform/DefaultDataController;

    monitor-enter v0

    .line 89
    :try_start_0
    sget-object v1, Lcom/hzbhd/misc/opengl/platform/DefaultDataController;->mDataController:Lcom/hzbhd/misc/opengl/platform/DefaultDataController;

    if-nez v1, :cond_0

    .line 90
    new-instance v1, Lcom/hzbhd/misc/opengl/platform/DefaultDataController;

    invoke-direct {v1, p0}, Lcom/hzbhd/misc/opengl/platform/DefaultDataController;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/hzbhd/misc/opengl/platform/DefaultDataController;->mDataController:Lcom/hzbhd/misc/opengl/platform/DefaultDataController;

    .line 92
    :cond_0
    sget-object p0, Lcom/hzbhd/misc/opengl/platform/DefaultDataController;->mDataController:Lcom/hzbhd/misc/opengl/platform/DefaultDataController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public closeMode()V
    .locals 0

    return-void
.end method

.method public getDatas()Lcom/hzbhd/misc/opengl/Data;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/platform/DefaultDataController;->datas:Lcom/hzbhd/misc/opengl/Data;

    return-object v0
.end method

.method public getGLSurfaceViewForAuxin()Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/platform/DefaultDataController;->mGLSurfaceViewUI:Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;

    return-object v0
.end method

.method public initViews(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public ismDataUpdate()Z
    .locals 2

    .line 65
    iget-boolean v0, p0, Lcom/hzbhd/misc/opengl/platform/DefaultDataController;->mDataUpdate:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mDataUpdate"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-boolean v0, p0, Lcom/hzbhd/misc/opengl/platform/DefaultDataController;->mDataUpdate:Z

    return v0
.end method

.method public onChangeForHandler()V
    .locals 0

    return-void
.end method

.method public onCreate()V
    .locals 0

    return-void
.end method

.method public openMode()V
    .locals 0

    return-void
.end method

.method public registerContentObserver()V
    .locals 0

    return-void
.end method

.method public removeCallbacksAndMessages()V
    .locals 0

    return-void
.end method

.method public resetData()V
    .locals 0

    return-void
.end method

.method public resetVideoData(II)V
    .locals 0

    return-void
.end method

.method public scanRenderFlag()V
    .locals 0

    return-void
.end method

.method public setCameraId(I)Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;
    .locals 0

    .line 74
    iget-object p1, p0, Lcom/hzbhd/misc/opengl/platform/DefaultDataController;->mGLSurfaceViewUI:Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;

    return-object p1
.end method

.method public setmDataCallback(Lcom/hzbhd/misc/opengl/platform/DefaultDataController$DataCallback;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/hzbhd/misc/opengl/platform/DefaultDataController;->mDataCallback:Lcom/hzbhd/misc/opengl/platform/DefaultDataController$DataCallback;

    return-void
.end method

.method public setmDataUpdate(Z)V
    .locals 0

    .line 70
    iput-boolean p1, p0, Lcom/hzbhd/misc/opengl/platform/DefaultDataController;->mDataUpdate:Z

    return-void
.end method
