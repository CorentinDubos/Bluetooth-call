.class public Lcom/hzbhd/misc/opengl/DataController;
.super Ljava/lang/Object;
.source "DataController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/misc/opengl/DataController$IBackCameraCallback;,
        Lcom/hzbhd/misc/opengl/DataController$HandlerData;,
        Lcom/hzbhd/misc/opengl/DataController$DataCallback;
    }
.end annotation


# static fields
.field private static final DETECT_SIGNLE_MSG:I = 0x4

.field private static final GET_DATA_MSG:I = 0x2

.field private static final GET_HEAD_MSG:I = 0x1

.field private static final IDLE_MSG:I = 0x4

.field private static final REQUEST_RENDER_MSG:I = 0x3

.field static TAG:Ljava/lang/String;

.field static mDataController:Lcom/hzbhd/misc/opengl/DataController;

.field static videoHead:[I


# instance fields
.field channel:I

.field private dataTHread:Landroid/os/HandlerThread;

.field datas:Lcom/hzbhd/misc/opengl/Data;

.field format:I

.field height:I

.field private iBackCameraCallback:Lcom/hzbhd/misc/opengl/DataController$IBackCameraCallback;

.field private isDisc:Z

.field length:I

.field private mActivityManager:Landroid/app/ActivityManager;

.field mCameraId:I

.field mChannelId:I

.field mContext:Landroid/content/Context;

.field mDataCallback:Lcom/hzbhd/misc/opengl/DataController$DataCallback;

.field mDataUpdate:Z

.field private mGLSurfaceViewUI:Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;

.field mGpioLevel:Z

.field private mHandler:Lcom/hzbhd/misc/opengl/DataController$HandlerData;

.field mPackageName:Ljava/lang/String;

.field misBackCameraContentObserver:Landroid/database/ContentObserver;

.field status:I

.field videoData:[B

.field width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/hzbhd/misc/opengl/DataController;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_opengl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/misc/opengl/DataController;->TAG:Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 52
    sput-object v0, Lcom/hzbhd/misc/opengl/DataController;->videoHead:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/hzbhd/misc/opengl/DataController;->isDisc:Z

    .line 43
    iput-boolean v0, p0, Lcom/hzbhd/misc/opengl/DataController;->mDataUpdate:Z

    const v1, 0x2f7600

    new-array v1, v1, [B

    .line 53
    iput-object v1, p0, Lcom/hzbhd/misc/opengl/DataController;->videoData:[B

    .line 54
    iput v0, p0, Lcom/hzbhd/misc/opengl/DataController;->status:I

    .line 55
    iput v0, p0, Lcom/hzbhd/misc/opengl/DataController;->width:I

    .line 56
    iput v0, p0, Lcom/hzbhd/misc/opengl/DataController;->height:I

    .line 57
    iput v0, p0, Lcom/hzbhd/misc/opengl/DataController;->format:I

    .line 58
    iput v0, p0, Lcom/hzbhd/misc/opengl/DataController;->length:I

    .line 59
    iput v0, p0, Lcom/hzbhd/misc/opengl/DataController;->channel:I

    const/4 v1, -0x1

    .line 64
    iput v1, p0, Lcom/hzbhd/misc/opengl/DataController;->mChannelId:I

    .line 65
    iput-boolean v0, p0, Lcom/hzbhd/misc/opengl/DataController;->mGpioLevel:Z

    .line 320
    new-instance v0, Lcom/hzbhd/misc/opengl/DataController$1;

    invoke-virtual {p0}, Lcom/hzbhd/misc/opengl/DataController;->getHandler()Lcom/hzbhd/misc/opengl/DataController$HandlerData;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/hzbhd/misc/opengl/DataController$1;-><init>(Lcom/hzbhd/misc/opengl/DataController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/hzbhd/misc/opengl/DataController;->misBackCameraContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/hzbhd/misc/opengl/DataController;->isDisc:Z

    .line 43
    iput-boolean v0, p0, Lcom/hzbhd/misc/opengl/DataController;->mDataUpdate:Z

    const v1, 0x2f7600

    new-array v1, v1, [B

    .line 53
    iput-object v1, p0, Lcom/hzbhd/misc/opengl/DataController;->videoData:[B

    .line 54
    iput v0, p0, Lcom/hzbhd/misc/opengl/DataController;->status:I

    .line 55
    iput v0, p0, Lcom/hzbhd/misc/opengl/DataController;->width:I

    .line 56
    iput v0, p0, Lcom/hzbhd/misc/opengl/DataController;->height:I

    .line 57
    iput v0, p0, Lcom/hzbhd/misc/opengl/DataController;->format:I

    .line 58
    iput v0, p0, Lcom/hzbhd/misc/opengl/DataController;->length:I

    .line 59
    iput v0, p0, Lcom/hzbhd/misc/opengl/DataController;->channel:I

    const/4 v1, -0x1

    .line 64
    iput v1, p0, Lcom/hzbhd/misc/opengl/DataController;->mChannelId:I

    .line 65
    iput-boolean v0, p0, Lcom/hzbhd/misc/opengl/DataController;->mGpioLevel:Z

    .line 320
    new-instance v0, Lcom/hzbhd/misc/opengl/DataController$1;

    invoke-virtual {p0}, Lcom/hzbhd/misc/opengl/DataController;->getHandler()Lcom/hzbhd/misc/opengl/DataController$HandlerData;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/hzbhd/misc/opengl/DataController$1;-><init>(Lcom/hzbhd/misc/opengl/DataController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/hzbhd/misc/opengl/DataController;->misBackCameraContentObserver:Landroid/database/ContentObserver;

    .line 110
    sget-object v0, Lcom/hzbhd/misc/opengl/DataController;->TAG:Ljava/lang/String;

    const-string v1, "DataController 0715"

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iput-object p1, p0, Lcom/hzbhd/misc/opengl/DataController;->mContext:Landroid/content/Context;

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/misc/opengl/DataController;->mPackageName:Ljava/lang/String;

    .line 113
    invoke-static {}, Lcom/hzbhd/misc/opengl/Data;->getInstance()Lcom/hzbhd/misc/opengl/Data;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/misc/opengl/DataController;->datas:Lcom/hzbhd/misc/opengl/Data;

    .line 115
    iget-object p1, p0, Lcom/hzbhd/misc/opengl/DataController;->mContext:Landroid/content/Context;

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lcom/hzbhd/misc/opengl/DataController;->mActivityManager:Landroid/app/ActivityManager;

    .line 116
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "dataTHread"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/hzbhd/misc/opengl/DataController;->dataTHread:Landroid/os/HandlerThread;

    .line 117
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 118
    new-instance p1, Lcom/hzbhd/misc/opengl/DataController$HandlerData;

    iget-object v0, p0, Lcom/hzbhd/misc/opengl/DataController;->dataTHread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/hzbhd/misc/opengl/DataController$HandlerData;-><init>(Lcom/hzbhd/misc/opengl/DataController;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/hzbhd/misc/opengl/DataController;->mHandler:Lcom/hzbhd/misc/opengl/DataController$HandlerData;

    const/4 v0, 0x4

    .line 120
    invoke-virtual {p1, v0}, Lcom/hzbhd/misc/opengl/DataController$HandlerData;->sendEmptyMessage(I)Z

    return-void
.end method

.method static synthetic access$000(Lcom/hzbhd/misc/opengl/DataController;)Lcom/hzbhd/misc/opengl/DataController$HandlerData;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/hzbhd/misc/opengl/DataController;->mHandler:Lcom/hzbhd/misc/opengl/DataController$HandlerData;

    return-object p0
.end method

.method static synthetic access$100(Lcom/hzbhd/misc/opengl/DataController;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/hzbhd/misc/opengl/DataController;->getHead()V

    return-void
.end method

.method static synthetic access$200(Lcom/hzbhd/misc/opengl/DataController;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/hzbhd/misc/opengl/DataController;->getData()V

    return-void
.end method

.method static synthetic access$300(Lcom/hzbhd/misc/opengl/DataController;)Lcom/hzbhd/misc/opengl/DataController$IBackCameraCallback;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/hzbhd/misc/opengl/DataController;->iBackCameraCallback:Lcom/hzbhd/misc/opengl/DataController$IBackCameraCallback;

    return-object p0
.end method

.method private getData()V
    .locals 5

    const-string v0, "opengl"

    const/4 v1, 0x1

    .line 238
    :try_start_0
    iget-object v2, p0, Lcom/hzbhd/misc/opengl/DataController;->videoData:[B

    invoke-static {v2}, Lcom/hzbhd/misc/opengl/base/BaseJni;->getData([B)I

    move-result v2

    iput v2, p0, Lcom/hzbhd/misc/opengl/DataController;->status:I

    const/4 v2, 0x0

    .line 239
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    move v2, v1

    :cond_0
    if-eqz v2, :cond_1

    .line 240
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0011 handleMessage UPDATE_DATAS_MSGvideoData."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hzbhd/misc/opengl/DataController;->videoData:[B

    const/16 v4, 0xf

    invoke-static {v3, v4}, Lcom/hzbhd/misc/jni/FgeString;->bytes2HexString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 242
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    .line 243
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/DataController;->mHandler:Lcom/hzbhd/misc/opengl/DataController$HandlerData;

    const-wide/16 v2, 0x8

    invoke-virtual {v0, v1, v2, v3}, Lcom/hzbhd/misc/opengl/DataController$HandlerData;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private getHead()V
    .locals 4

    const-string v0, "opengl"

    :try_start_0
    const-string v1, "332211 handleMessage  START_REDNDER_MSG."

    .line 226
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    sget-object v1, Lcom/hzbhd/misc/opengl/DataController;->videoHead:[I

    invoke-static {v1}, Lcom/hzbhd/misc/opengl/base/BaseJni;->getConfig([I)I

    const-string v1, "332222 handleMessage  START_REDNDER_MSG."

    .line 228
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 230
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    .line 231
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/DataController;->mHandler:Lcom/hzbhd/misc/opengl/DataController$HandlerData;

    const/4 v1, 0x1

    const-wide/16 v2, 0x8

    invoke-virtual {v0, v1, v2, v3}, Lcom/hzbhd/misc/opengl/DataController$HandlerData;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/hzbhd/misc/opengl/DataController;
    .locals 2

    const-class v0, Lcom/hzbhd/misc/opengl/DataController;

    monitor-enter v0

    .line 123
    :try_start_0
    sget-object v1, Lcom/hzbhd/misc/opengl/DataController;->mDataController:Lcom/hzbhd/misc/opengl/DataController;

    if-nez v1, :cond_1

    .line 124
    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object v1

    instance-of v1, v1, Lcom/hzbhd/midwareproxy/hardware/RK3399P_HardwarePlatform;

    if-eqz v1, :cond_0

    .line 125
    new-instance v1, Lcom/hzbhd/misc/opengl/DataController;

    invoke-direct {v1, p0}, Lcom/hzbhd/misc/opengl/DataController;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/hzbhd/misc/opengl/DataController;->mDataController:Lcom/hzbhd/misc/opengl/DataController;

    goto :goto_0

    .line 127
    :cond_0
    new-instance v1, Lcom/hzbhd/misc/opengl/platform/DefaultDataController;

    invoke-direct {v1, p0}, Lcom/hzbhd/misc/opengl/platform/DefaultDataController;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/hzbhd/misc/opengl/DataController;->mDataController:Lcom/hzbhd/misc/opengl/DataController;

    .line 131
    :cond_1
    :goto_0
    sget-object p0, Lcom/hzbhd/misc/opengl/DataController;->mDataController:Lcom/hzbhd/misc/opengl/DataController;
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
.method public activity_closeMode()V
    .locals 3

    .line 259
    sget-object v0, Lcom/hzbhd/midware/constant/HzbhdComponentName;->AuxMainActivity:Landroid/content/ComponentName;

    .line 260
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/hzbhd/misc/constance/Constance;->OFF_FLAG:I

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget v1, Lcom/hzbhd/misc/constance/Constance;->ON_FLAG:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/hzbhd/misc/opengl/DataController;->mChannelId:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    :cond_0
    sget-object v0, Lcom/hzbhd/midware/constant/HzbhdComponentName;->PreCameraMainActivity:Landroid/content/ComponentName;

    .line 262
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/hzbhd/misc/constance/Constance;->OFF_FLAG:I

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget v1, Lcom/hzbhd/misc/constance/Constance;->ON_FLAG:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/hzbhd/misc/opengl/DataController;->mChannelId:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    :cond_1
    sget-object v0, Lcom/hzbhd/midware/constant/HzbhdComponentName;->DTVMainActivity:Landroid/content/ComponentName;

    .line 264
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/hzbhd/misc/constance/Constance;->OFF_FLAG:I

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget v1, Lcom/hzbhd/misc/constance/Constance;->ON_FLAG:I

    const/4 v2, 0x3

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/hzbhd/misc/opengl/DataController;->mChannelId:I

    if-eq v0, v2, :cond_3

    :cond_2
    sget-object v0, Lcom/hzbhd/midware/constant/HzbhdComponentName;->AtvMainActivity:Landroid/content/ComponentName;

    .line 266
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/hzbhd/misc/constance/Constance;->OFF_FLAG:I

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget v1, Lcom/hzbhd/misc/constance/Constance;->ON_FLAG:I

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/hzbhd/misc/opengl/DataController;->mChannelId:I

    if-ne v0, v2, :cond_4

    .line 268
    :cond_3
    sget-object v0, Lcom/hzbhd/misc/opengl/DataController;->TAG:Ljava/lang/String;

    const-string v1, "activity_closeMode  but some other activity has start open "

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 270
    :cond_4
    invoke-virtual {p0}, Lcom/hzbhd/misc/opengl/DataController;->closeMode()V

    :goto_0
    return-void
.end method

.method public closeMode()V
    .locals 3

    const-string v0, "opengl"

    const-string v1, "closeMode"

    .line 280
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "vendor.hwc.win1.reserved"

    const-string v2, "1"

    .line 281
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-static {}, Lcom/hzbhd/misc/opengl/base/BaseJni;->close()V

    const-string v1, "closeMode datas.resetData"

    .line 284
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/DataController;->datas:Lcom/hzbhd/misc/opengl/Data;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hzbhd/misc/opengl/Data;->resetData()V

    :cond_0
    return-void
.end method

.method public getDatas()Lcom/hzbhd/misc/opengl/Data;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/DataController;->datas:Lcom/hzbhd/misc/opengl/Data;

    return-object v0
.end method

.method public getGLSurfaceViewForAuxin()Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/DataController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hzbhd/misc/opengl/DataController;->getInstance(Landroid/content/Context;)Lcom/hzbhd/misc/opengl/DataController;

    move-result-object v0

    iget-object v1, p0, Lcom/hzbhd/misc/opengl/DataController;->mGLSurfaceViewUI:Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;

    invoke-virtual {v0, v1}, Lcom/hzbhd/misc/opengl/DataController;->setmDataCallback(Lcom/hzbhd/misc/opengl/DataController$DataCallback;)V

    .line 102
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/DataController;->mGLSurfaceViewUI:Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;

    return-object v0
.end method

.method public getHandler()Lcom/hzbhd/misc/opengl/DataController$HandlerData;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/DataController;->mHandler:Lcom/hzbhd/misc/opengl/DataController$HandlerData;

    return-object v0
.end method

.method public initViews(Landroid/content/Context;)V
    .locals 3

    .line 105
    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object v0

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isSaleInside(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$MCUSOFTVERSION;->MCUSOFTVERSION_STM32_1:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$MCUSOFTVERSION;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$MCUSOFTVERSION;->MCUSOFTVERSION_STM8:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$MCUSOFTVERSION;

    :goto_0
    sget-object v2, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;->CAMERA_AUXIN:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;

    invoke-virtual {v0, v1, v2}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->getCameraID(Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$MCUSOFTVERSION;Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;)I

    move-result v0

    .line 107
    new-instance v1, Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;

    invoke-direct {v1, p1, v0}, Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/hzbhd/misc/opengl/DataController;->mGLSurfaceViewUI:Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;

    return-void
.end method

.method public ismDataUpdate()Z
    .locals 2

    .line 71
    iget-boolean v0, p0, Lcom/hzbhd/misc/opengl/DataController;->mDataUpdate:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mDataUpdate"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-boolean v0, p0, Lcom/hzbhd/misc/opengl/DataController;->mDataUpdate:Z

    return v0
.end method

.method public onChangeForHandler()V
    .locals 4

    .line 346
    invoke-virtual {p0}, Lcom/hzbhd/misc/opengl/DataController;->scanRenderFlag()V

    .line 347
    sget-object v0, Lcom/hzbhd/misc/opengl/DataController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "66isStopRender  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hzbhd/misc/opengl/DataController;->ismDataUpdate()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    invoke-virtual {p0}, Lcom/hzbhd/misc/opengl/DataController;->ismDataUpdate()Z

    move-result v0

    const-string v1, " , status closeMode  "

    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {p0}, Lcom/hzbhd/misc/opengl/DataController;->openMode()V

    .line 351
    sget-object v0, Lcom/hzbhd/misc/opengl/DataController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/hzbhd/misc/opengl/DataController;->mChannelId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " 00, scanRederFlag  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/hzbhd/misc/opengl/DataController;->mGpioLevel:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 353
    :cond_0
    iget-boolean v0, p0, Lcom/hzbhd/misc/opengl/DataController;->mGpioLevel:Z

    if-eqz v0, :cond_1

    .line 354
    invoke-virtual {p0}, Lcom/hzbhd/misc/opengl/DataController;->closeMode()V

    .line 355
    sget-object v0, Lcom/hzbhd/misc/opengl/DataController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/hzbhd/misc/opengl/DataController;->mChannelId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " 0000, scanRederFlag  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/hzbhd/misc/opengl/DataController;->mGpioLevel:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 356
    :cond_1
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/DataController;->mPackageName:Ljava/lang/String;

    const-string v2, "com.hzbhd.misc"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 357
    sget v0, Lcom/hzbhd/misc/constance/Constance;->OFF_FLAG:I

    const-string v2, "com.hzbhd.misc.opengl.base.OpenGLUtils"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget v2, Lcom/hzbhd/misc/constance/Constance;->ON_FLAG:I

    if-ne v0, v2, :cond_8

    iget v0, p0, Lcom/hzbhd/misc/opengl/DataController;->mChannelId:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_8

    .line 359
    sget-object v0, Lcom/hzbhd/misc/opengl/DataController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/hzbhd/misc/opengl/DataController;->mChannelId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " 11, scanRederFlag  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/hzbhd/misc/opengl/DataController;->mGpioLevel:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 362
    :cond_2
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/DataController;->mPackageName:Ljava/lang/String;

    const-string v2, "com.hzbhd.disc"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 363
    sget-object v0, Lcom/hzbhd/midware/constant/HzbhdComponentName;->AuxMainActivity:Landroid/content/ComponentName;

    .line 364
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/hzbhd/misc/constance/Constance;->OFF_FLAG:I

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget v2, Lcom/hzbhd/misc/constance/Constance;->ON_FLAG:I

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/hzbhd/misc/opengl/DataController;->mChannelId:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_6

    :cond_3
    sget-object v0, Lcom/hzbhd/midware/constant/HzbhdComponentName;->PreCameraMainActivity:Landroid/content/ComponentName;

    .line 366
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/hzbhd/misc/constance/Constance;->OFF_FLAG:I

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget v2, Lcom/hzbhd/misc/constance/Constance;->ON_FLAG:I

    if-ne v0, v2, :cond_4

    iget v0, p0, Lcom/hzbhd/misc/opengl/DataController;->mChannelId:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_6

    :cond_4
    sget-object v0, Lcom/hzbhd/midware/constant/HzbhdComponentName;->DTVMainActivity:Landroid/content/ComponentName;

    .line 368
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/hzbhd/misc/constance/Constance;->OFF_FLAG:I

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget v2, Lcom/hzbhd/misc/constance/Constance;->ON_FLAG:I

    const/4 v3, 0x3

    if-ne v0, v2, :cond_5

    iget v0, p0, Lcom/hzbhd/misc/opengl/DataController;->mChannelId:I

    if-eq v0, v3, :cond_6

    :cond_5
    sget-object v0, Lcom/hzbhd/midware/constant/HzbhdComponentName;->AtvMainActivity:Landroid/content/ComponentName;

    .line 370
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/hzbhd/misc/constance/Constance;->OFF_FLAG:I

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget v2, Lcom/hzbhd/misc/constance/Constance;->ON_FLAG:I

    if-ne v0, v2, :cond_8

    iget v0, p0, Lcom/hzbhd/misc/opengl/DataController;->mChannelId:I

    if-ne v0, v3, :cond_8

    .line 372
    :cond_6
    sget-object v0, Lcom/hzbhd/misc/opengl/DataController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/hzbhd/misc/opengl/DataController;->mChannelId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " 22, scanRederFlag  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/hzbhd/misc/opengl/DataController;->mGpioLevel:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 375
    :cond_7
    invoke-virtual {p0}, Lcom/hzbhd/misc/opengl/DataController;->closeMode()V

    .line 376
    sget-object v0, Lcom/hzbhd/misc/opengl/DataController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/hzbhd/misc/opengl/DataController;->mChannelId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " 33, scanRederFlag  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/hzbhd/misc/opengl/DataController;->mGpioLevel:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_0
    return-void
.end method

.method public onCreate()V
    .locals 5

    .line 292
    invoke-virtual {p0}, Lcom/hzbhd/misc/opengl/DataController;->onChangeForHandler()V

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FgeString "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/hzbhd/misc/opengl/DataController;->videoHead:[I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "opengl_TutorialPartVI"

    invoke-static {v2, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/hzbhd/misc/opengl/DataController;->videoHead:[I

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    sget-object v0, Lcom/hzbhd/misc/opengl/DataController;->videoHead:[I

    if-nez v0, :cond_0

    const/4 v0, 0x6

    new-array v0, v0, [I

    sput-object v0, Lcom/hzbhd/misc/opengl/DataController;->videoHead:[I

    .line 296
    :cond_0
    invoke-direct {p0}, Lcom/hzbhd/misc/opengl/DataController;->getHead()V

    .line 297
    sget-object v0, Lcom/hzbhd/misc/opengl/DataController;->videoHead:[I

    const/4 v3, 0x0

    aget v3, v0, v3

    iput v3, p0, Lcom/hzbhd/misc/opengl/DataController;->status:I

    const/4 v3, 0x1

    .line 298
    aget v4, v0, v3

    iput v4, p0, Lcom/hzbhd/misc/opengl/DataController;->width:I

    const/4 v4, 0x2

    .line 299
    aget v4, v0, v4

    iput v4, p0, Lcom/hzbhd/misc/opengl/DataController;->height:I

    const/4 v4, 0x3

    .line 300
    aget v4, v0, v4

    iput v4, p0, Lcom/hzbhd/misc/opengl/DataController;->format:I

    const/4 v4, 0x4

    .line 301
    aget v4, v0, v4

    iput v4, p0, Lcom/hzbhd/misc/opengl/DataController;->length:I

    const/4 v4, 0x5

    .line 302
    aget v0, v0, v4

    iput v0, p0, Lcom/hzbhd/misc/opengl/DataController;->channel:I

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/hzbhd/misc/opengl/DataController;->videoHead:[I

    array-length v4, v1

    invoke-static {v1, v4}, Lcom/hzbhd/misc/jni/FgeString;->Int2HexString([II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget v0, p0, Lcom/hzbhd/misc/opengl/DataController;->width:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/hzbhd/misc/opengl/DataController;->height:I

    if-nez v0, :cond_2

    :cond_1
    const/16 v0, 0x2c0

    .line 306
    iput v0, p0, Lcom/hzbhd/misc/opengl/DataController;->width:I

    const/16 v0, 0x22

    iput v0, p0, Lcom/hzbhd/misc/opengl/DataController;->height:I

    .line 309
    :cond_2
    iget v0, p0, Lcom/hzbhd/misc/opengl/DataController;->width:I

    iget v1, p0, Lcom/hzbhd/misc/opengl/DataController;->height:I

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/misc/opengl/DataController;->resetVideoData(II)V

    .line 310
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/DataController;->datas:Lcom/hzbhd/misc/opengl/Data;

    iget v1, p0, Lcom/hzbhd/misc/opengl/DataController;->width:I

    iget v2, p0, Lcom/hzbhd/misc/opengl/DataController;->height:I

    iget-object v4, p0, Lcom/hzbhd/misc/opengl/DataController;->videoData:[B

    invoke-virtual {v0, v1, v2, v4}, Lcom/hzbhd/misc/opengl/Data;->putData(II[B)V

    .line 311
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/DataController;->mHandler:Lcom/hzbhd/misc/opengl/DataController$HandlerData;

    invoke-virtual {v0, v3}, Lcom/hzbhd/misc/opengl/DataController$HandlerData;->sendEmptyMessage(I)Z

    return-void
.end method

.method public openMode()V
    .locals 4

    const-string v0, "opengl"

    const-string v1, "openMode"

    .line 248
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "vendor.hwc.win1.reserved"

    const-string v1, "0"

    .line 249
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-static {}, Lcom/hzbhd/misc/opengl/base/BaseJni;->open()Z

    .line 253
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/DataController;->mHandler:Lcom/hzbhd/misc/opengl/DataController$HandlerData;

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/hzbhd/misc/opengl/DataController$HandlerData;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public registerContentObserver()V
    .locals 5

    .line 382
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/DataController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gpioLevel"

    .line 383
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/hzbhd/misc/opengl/DataController;->misBackCameraContentObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 382
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 390
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/DataController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "channelId"

    .line 391
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/hzbhd/misc/opengl/DataController;->misBackCameraContentObserver:Landroid/database/ContentObserver;

    .line 390
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 394
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/DataController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "KEY_CURRENT_TOP_PACKAGENAME"

    .line 395
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/hzbhd/misc/opengl/DataController;->misBackCameraContentObserver:Landroid/database/ContentObserver;

    .line 394
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public removeCallbacksAndMessages()V
    .locals 2

    .line 288
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/DataController;->mHandler:Lcom/hzbhd/misc/opengl/DataController$HandlerData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hzbhd/misc/opengl/DataController$HandlerData;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public resetData()V
    .locals 2

    .line 135
    sget-object v0, Lcom/hzbhd/misc/opengl/DataController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "resetData"

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/DataController;->datas:Lcom/hzbhd/misc/opengl/Data;

    invoke-virtual {v0}, Lcom/hzbhd/misc/opengl/Data;->resetData()V

    .line 137
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/DataController;->mHandler:Lcom/hzbhd/misc/opengl/DataController$HandlerData;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hzbhd/misc/opengl/DataController$HandlerData;->sendEmptyMessage(I)Z

    .line 138
    sget-object v0, Lcom/hzbhd/misc/opengl/DataController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "resetData end"

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public resetVideoData(II)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    mul-int v2, p1, p2

    mul-int/lit8 v2, v2, 0x3

    .line 315
    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_0

    .line 316
    iget-object v2, p0, Lcom/hzbhd/misc/opengl/DataController;->videoData:[B

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public scanRenderFlag()V
    .locals 6

    .line 401
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/DataController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "channelId"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/hzbhd/misc/opengl/DataController;->mChannelId:I

    .line 402
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/DataController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gpioLevel"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/hzbhd/misc/opengl/DataController;->mGpioLevel:Z

    .line 403
    sget-object v0, Lcom/hzbhd/misc/opengl/DataController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/hzbhd/misc/opengl/DataController;->mChannelId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , scanRederFlag  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/hzbhd/misc/opengl/DataController;->mGpioLevel:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    sget-object v0, Lcom/hzbhd/misc/opengl/DataController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/hzbhd/misc/opengl/DataController;->mChannelId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , scanRederFlag AuxMainActivity  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/hzbhd/midware/constant/HzbhdComponentName;->AuxMainActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/hzbhd/misc/constance/Constance;->OFF_FLAG:I

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/DataController;->mPackageName:Ljava/lang/String;

    const-string v3, "com.hzbhd.misc"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 407
    sget-object v0, Lcom/hzbhd/midware/constant/HzbhdComponentName;->AuxMainActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    sget v3, Lcom/hzbhd/misc/constance/Constance;->OFF_FLAG:I

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget v3, Lcom/hzbhd/misc/constance/Constance;->OFF_FLAG:I

    if-ne v0, v3, :cond_1

    sget-object v0, Lcom/hzbhd/midware/constant/HzbhdComponentName;->PreCameraMainActivity:Landroid/content/ComponentName;

    .line 408
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    sget v3, Lcom/hzbhd/misc/constance/Constance;->OFF_FLAG:I

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget v3, Lcom/hzbhd/misc/constance/Constance;->OFF_FLAG:I

    if-ne v0, v3, :cond_1

    sget-object v0, Lcom/hzbhd/midware/constant/HzbhdComponentName;->DTVMainActivity:Landroid/content/ComponentName;

    .line 409
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    sget v3, Lcom/hzbhd/misc/constance/Constance;->OFF_FLAG:I

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget v3, Lcom/hzbhd/misc/constance/Constance;->OFF_FLAG:I

    if-ne v0, v3, :cond_1

    sget-object v0, Lcom/hzbhd/midware/constant/HzbhdComponentName;->AtvMainActivity:Landroid/content/ComponentName;

    .line 410
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    sget v3, Lcom/hzbhd/misc/constance/Constance;->OFF_FLAG:I

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget v3, Lcom/hzbhd/misc/constance/Constance;->OFF_FLAG:I

    if-ne v0, v3, :cond_1

    .line 411
    sget-object v0, Lcom/hzbhd/misc/opengl/DataController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/hzbhd/misc/opengl/DataController;->mChannelId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " 11, scanRederFlag  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/hzbhd/misc/opengl/DataController;->mGpioLevel:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    invoke-virtual {p0, v1}, Lcom/hzbhd/misc/opengl/DataController;->setmDataUpdate(Z)V

    goto/16 :goto_1

    .line 413
    :cond_1
    iget-boolean v0, p0, Lcom/hzbhd/misc/opengl/DataController;->mGpioLevel:Z

    if-eqz v0, :cond_2

    .line 414
    sget-object v0, Lcom/hzbhd/misc/opengl/DataController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/hzbhd/misc/opengl/DataController;->mChannelId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " 22 , scanRederFlag  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/hzbhd/misc/opengl/DataController;->mGpioLevel:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    invoke-virtual {p0, v1}, Lcom/hzbhd/misc/opengl/DataController;->setmDataUpdate(Z)V

    goto/16 :goto_1

    .line 416
    :cond_2
    sget-object v0, Lcom/hzbhd/midware/constant/HzbhdComponentName;->AuxMainActivity:Landroid/content/ComponentName;

    .line 417
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/hzbhd/misc/constance/Constance;->OFF_FLAG:I

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget v1, Lcom/hzbhd/misc/constance/Constance;->ON_FLAG:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/hzbhd/misc/opengl/DataController;->mChannelId:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    :cond_3
    sget-object v0, Lcom/hzbhd/midware/constant/HzbhdComponentName;->PreCameraMainActivity:Landroid/content/ComponentName;

    .line 419
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/hzbhd/misc/constance/Constance;->OFF_FLAG:I

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget v1, Lcom/hzbhd/misc/constance/Constance;->ON_FLAG:I

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/hzbhd/misc/opengl/DataController;->mChannelId:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_6

    :cond_4
    sget-object v0, Lcom/hzbhd/midware/constant/HzbhdComponentName;->DTVMainActivity:Landroid/content/ComponentName;

    .line 421
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/hzbhd/misc/constance/Constance;->OFF_FLAG:I

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget v1, Lcom/hzbhd/misc/constance/Constance;->ON_FLAG:I

    const/4 v3, 0x3

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/hzbhd/misc/opengl/DataController;->mChannelId:I

    if-eq v0, v3, :cond_6

    :cond_5
    sget-object v0, Lcom/hzbhd/midware/constant/HzbhdComponentName;->AtvMainActivity:Landroid/content/ComponentName;

    .line 423
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/hzbhd/misc/constance/Constance;->OFF_FLAG:I

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget v1, Lcom/hzbhd/misc/constance/Constance;->ON_FLAG:I

    if-ne v0, v1, :cond_a

    iget v0, p0, Lcom/hzbhd/misc/opengl/DataController;->mChannelId:I

    if-ne v0, v3, :cond_a

    .line 426
    :cond_6
    sget-object v0, Lcom/hzbhd/misc/opengl/DataController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/hzbhd/misc/opengl/DataController;->mChannelId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " 33, scanRederFlag  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/hzbhd/misc/opengl/DataController;->mGpioLevel:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , status  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    invoke-virtual {p0, v2}, Lcom/hzbhd/misc/opengl/DataController;->setmDataUpdate(Z)V

    goto/16 :goto_1

    .line 430
    :cond_7
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/DataController;->mPackageName:Ljava/lang/String;

    const-string v3, "com.hzbhd.disc"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 431
    sget v0, Lcom/hzbhd/misc/constance/Constance;->OFF_FLAG:I

    const-string v3, "com.hzbhd.misc.opengl.base.OpenGLUtils"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget v4, Lcom/hzbhd/misc/constance/Constance;->OFF_FLAG:I

    if-ne v0, v4, :cond_8

    .line 432
    sget-object v0, Lcom/hzbhd/misc/opengl/DataController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/hzbhd/misc/opengl/DataController;->mChannelId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " 44, scanRederFlag  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/hzbhd/misc/opengl/DataController;->mGpioLevel:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    invoke-virtual {p0, v1}, Lcom/hzbhd/misc/opengl/DataController;->setmDataUpdate(Z)V

    goto :goto_1

    .line 434
    :cond_8
    iget-boolean v0, p0, Lcom/hzbhd/misc/opengl/DataController;->mGpioLevel:Z

    if-eqz v0, :cond_9

    .line 435
    sget-object v0, Lcom/hzbhd/misc/opengl/DataController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/hzbhd/misc/opengl/DataController;->mChannelId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " 55 , scanRederFlag  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/hzbhd/misc/opengl/DataController;->mGpioLevel:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    invoke-virtual {p0, v1}, Lcom/hzbhd/misc/opengl/DataController;->setmDataUpdate(Z)V

    goto :goto_1

    .line 437
    :cond_9
    sget v0, Lcom/hzbhd/misc/constance/Constance;->OFF_FLAG:I

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget v1, Lcom/hzbhd/misc/constance/Constance;->ON_FLAG:I

    if-ne v0, v1, :cond_a

    iget v0, p0, Lcom/hzbhd/misc/opengl/DataController;->mChannelId:I

    if-ne v0, v2, :cond_a

    .line 439
    sget-object v0, Lcom/hzbhd/misc/opengl/DataController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/hzbhd/misc/opengl/DataController;->mChannelId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " 66, scanRederFlag  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/hzbhd/misc/opengl/DataController;->mGpioLevel:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    invoke-virtual {p0, v2}, Lcom/hzbhd/misc/opengl/DataController;->setmDataUpdate(Z)V

    .line 443
    :cond_a
    :goto_1
    sget-object v0, Lcom/hzbhd/misc/opengl/DataController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/hzbhd/misc/opengl/DataController;->mChannelId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " 77, scanRederFlag  ismDataUpdate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hzbhd/misc/opengl/DataController;->ismDataUpdate()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCameraId(I)Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;
    .locals 0

    .line 88
    iput p1, p0, Lcom/hzbhd/misc/opengl/DataController;->mCameraId:I

    .line 89
    iget-object p1, p0, Lcom/hzbhd/misc/opengl/DataController;->mGLSurfaceViewUI:Lcom/hzbhd/misc/opengl/GLSurfaceViewUI;

    return-object p1
.end method

.method public setiBackCameraCallback(Lcom/hzbhd/misc/opengl/DataController$IBackCameraCallback;)V
    .locals 0

    .line 337
    iput-object p1, p0, Lcom/hzbhd/misc/opengl/DataController;->iBackCameraCallback:Lcom/hzbhd/misc/opengl/DataController$IBackCameraCallback;

    return-void
.end method

.method public setmDataCallback(Lcom/hzbhd/misc/opengl/DataController$DataCallback;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/hzbhd/misc/opengl/DataController;->mDataCallback:Lcom/hzbhd/misc/opengl/DataController$DataCallback;

    return-void
.end method

.method public setmDataUpdate(Z)V
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/hzbhd/misc/opengl/DataController;->mDataUpdate:Z

    return-void
.end method
