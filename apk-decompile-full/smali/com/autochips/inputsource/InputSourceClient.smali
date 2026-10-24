.class public abstract Lcom/autochips/inputsource/InputSourceClient;
.super Landroid/inputsource/IInputSourceClient$Stub;
.source "InputSourceClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autochips/inputsource/InputSourceClient$EventHandler;,
        Lcom/autochips/inputsource/InputSourceClient$OnCbmCmdListener;,
        Lcom/autochips/inputsource/InputSourceClient$OnSignalListener;
    }
.end annotation


# static fields
.field protected static final INPUTSOURCE_CBM_AUD_CMD:I = 0x5

.field protected static final INPUTSOURCE_CBM_CMD:I = 0x4

.field public static final INPUTSOURCE_CBM_PAUSE:I = 0x2

.field public static final INPUTSOURCE_CBM_RESUME:I = 0x3

.field public static final INPUTSOURCE_CBM_START:I = 0x1

.field public static final INPUTSOURCE_CBM_STOP:I = 0x0

.field protected static final INPUTSOURCE_CBM_VDO_CMD:I = 0x6

.field public static final INPUTSOURCE_HANDLE_CBM:I = 0x1

.field private static final INPUTSOURCE_SIGNAL:I = 0x3

.field private static final INPUTSOURCE_SIGNAL_CHANGE:I = 0x2

.field private static final INPUTSOURCE_SIGNAL_LOST:I = 0x1

.field private static final INPUTSOURCE_SIGNAL_READY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "InputSourceClient"

.field protected static mService:Landroid/inputsource/IInputSourceService;


# instance fields
.field protected mCBM:Landroid/cbm/CBManager;

.field private mCBMActionListener:Landroid/cbm/CBManager$OnActionListener;

.field protected mCbmCtlStatus:I

.field protected mCurrentStatus:I

.field protected mDestType:I

.field private mEventHandler:Lcom/autochips/inputsource/InputSourceClient$EventHandler;

.field protected mInputSourceCBMPriority:I

.field protected mIsPermittedByCBM:Z

.field private mOnCbmCmdListener:Lcom/autochips/inputsource/InputSourceClient$OnCbmCmdListener;

.field private mOnSignalListener:Lcom/autochips/inputsource/InputSourceClient$OnSignalListener;

.field protected mRealState:I

.field private mRearSurfaceHolder:Landroid/view/SurfaceHolder;

.field protected mSource:Landroid/inputsource/IInputSourceBase;

.field protected mSrcType:I

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 61
    invoke-direct {p0}, Landroid/inputsource/IInputSourceClient$Stub;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/autochips/inputsource/InputSourceClient;->mSource:Landroid/inputsource/IInputSourceBase;

    const/4 v1, 0x0

    .line 46
    iput v1, p0, Lcom/autochips/inputsource/InputSourceClient;->mSrcType:I

    .line 47
    iput v1, p0, Lcom/autochips/inputsource/InputSourceClient;->mDestType:I

    .line 48
    iput v1, p0, Lcom/autochips/inputsource/InputSourceClient;->mCbmCtlStatus:I

    .line 49
    iput v1, p0, Lcom/autochips/inputsource/InputSourceClient;->mCurrentStatus:I

    .line 50
    iput v1, p0, Lcom/autochips/inputsource/InputSourceClient;->mRealState:I

    .line 51
    iput-boolean v1, p0, Lcom/autochips/inputsource/InputSourceClient;->mIsPermittedByCBM:Z

    .line 52
    iput v1, p0, Lcom/autochips/inputsource/InputSourceClient;->mInputSourceCBMPriority:I

    .line 54
    iput-object v0, p0, Lcom/autochips/inputsource/InputSourceClient;->mCBM:Landroid/cbm/CBManager;

    .line 421
    new-instance v1, Lcom/autochips/inputsource/InputSourceClient$1;

    invoke-direct {v1, p0}, Lcom/autochips/inputsource/InputSourceClient$1;-><init>(Lcom/autochips/inputsource/InputSourceClient;)V

    iput-object v1, p0, Lcom/autochips/inputsource/InputSourceClient;->mCBMActionListener:Landroid/cbm/CBManager$OnActionListener;

    const-string v1, "InputSourceClient"

    const-string v2, "InputSourceClient() construct"

    .line 62
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 66
    new-instance v0, Lcom/autochips/inputsource/InputSourceClient$EventHandler;

    invoke-direct {v0, p0, p0, v1}, Lcom/autochips/inputsource/InputSourceClient$EventHandler;-><init>(Lcom/autochips/inputsource/InputSourceClient;Lcom/autochips/inputsource/InputSourceClient;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/autochips/inputsource/InputSourceClient;->mEventHandler:Lcom/autochips/inputsource/InputSourceClient$EventHandler;

    goto :goto_0

    .line 67
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 68
    new-instance v0, Lcom/autochips/inputsource/InputSourceClient$EventHandler;

    invoke-direct {v0, p0, p0, v1}, Lcom/autochips/inputsource/InputSourceClient$EventHandler;-><init>(Lcom/autochips/inputsource/InputSourceClient;Lcom/autochips/inputsource/InputSourceClient;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/autochips/inputsource/InputSourceClient;->mEventHandler:Lcom/autochips/inputsource/InputSourceClient$EventHandler;

    goto :goto_0

    .line 70
    :cond_1
    iput-object v0, p0, Lcom/autochips/inputsource/InputSourceClient;->mEventHandler:Lcom/autochips/inputsource/InputSourceClient$EventHandler;

    :goto_0
    return-void
.end method

.method private _play()I
    .locals 4

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_play(): enter mSrcType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/autochips/inputsource/InputSourceClient;->mSrcType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mIsPermittedByCBM: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/autochips/inputsource/InputSourceClient;->mIsPermittedByCBM:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputSourceClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget v0, p0, Lcom/autochips/inputsource/InputSourceClient;->mSrcType:I

    const/16 v2, -0x1774

    if-nez v0, :cond_0

    const-string v0, "_play(): mSrcType is null play L_FAILED"

    .line 229
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 233
    :cond_0
    iget-boolean v0, p0, Lcom/autochips/inputsource/InputSourceClient;->mIsPermittedByCBM:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/autochips/inputsource/InputSourceClient;->permittedToStart()Z

    move-result v0

    if-nez v0, :cond_1

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_play(): We\'re not Permitted to start by CBManager\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/autochips/inputsource/InputSourceClient;->mIsPermittedByCBM:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x1776

    return v0

    :cond_1
    const/4 v0, 0x0

    .line 239
    :try_start_0
    iget-object v3, p0, Lcom/autochips/inputsource/InputSourceClient;->mSource:Landroid/inputsource/IInputSourceBase;

    if-nez v3, :cond_2

    const-string v3, "_play(): mSource null so Play L_FAILED"

    .line 240
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v3, p0, Lcom/autochips/inputsource/InputSourceClient;->mCBM:Landroid/cbm/CBManager;

    invoke-virtual {v3}, Landroid/cbm/CBManager;->release()V

    return v2

    .line 244
    :cond_2
    iget-object v2, p0, Lcom/autochips/inputsource/InputSourceClient;->mSource:Landroid/inputsource/IInputSourceBase;

    invoke-interface {v2}, Landroid/inputsource/IInputSourceBase;->play()I

    move-result v0

    const/4 v2, 0x2

    .line 245
    iput v2, p0, Lcom/autochips/inputsource/InputSourceClient;->mRealState:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 247
    :catch_0
    iget-object v2, p0, Lcom/autochips/inputsource/InputSourceClient;->mCBM:Landroid/cbm/CBManager;

    invoke-virtual {v2}, Landroid/cbm/CBManager;->release()V

    const-string v2, "_play(): fail!"

    .line 248
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method private _stop()I
    .locals 3

    const-string v0, "InputSourceClient"

    const-string v1, "_stop() enter"

    .line 254
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 257
    :try_start_0
    iget-object v2, p0, Lcom/autochips/inputsource/InputSourceClient;->mSource:Landroid/inputsource/IInputSourceBase;

    if-nez v2, :cond_0

    const-string/jumbo v2, "stop(): mSource null"

    .line 258
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x1774

    return v0

    .line 261
    :cond_0
    iget-object v2, p0, Lcom/autochips/inputsource/InputSourceClient;->mSource:Landroid/inputsource/IInputSourceBase;

    invoke-interface {v2}, Landroid/inputsource/IInputSourceBase;->stop()I

    move-result v1

    const/4 v2, 0x1

    .line 262
    iput v2, p0, Lcom/autochips/inputsource/InputSourceClient;->mRealState:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string/jumbo v2, "stop(): fail!"

    .line 265
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method

.method static synthetic access$000(Lcom/autochips/inputsource/InputSourceClient;)I
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/autochips/inputsource/InputSourceClient;->_stop()I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/autochips/inputsource/InputSourceClient;)I
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/autochips/inputsource/InputSourceClient;->_play()I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/autochips/inputsource/InputSourceClient;)Lcom/autochips/inputsource/InputSourceClient$OnSignalListener;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/autochips/inputsource/InputSourceClient;->mOnSignalListener:Lcom/autochips/inputsource/InputSourceClient$OnSignalListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/autochips/inputsource/InputSourceClient;)Lcom/autochips/inputsource/InputSourceClient$OnCbmCmdListener;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/autochips/inputsource/InputSourceClient;->mOnCbmCmdListener:Lcom/autochips/inputsource/InputSourceClient$OnCbmCmdListener;

    return-object p0
.end method

.method public static getService()Landroid/inputsource/IInputSourceService;
    .locals 2

    .line 81
    sget-object v0, Lcom/autochips/inputsource/InputSourceClient;->mService:Landroid/inputsource/IInputSourceService;

    if-nez v0, :cond_0

    const-string v0, "inputsource"

    .line 82
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 83
    invoke-static {v0}, Landroid/inputsource/IInputSourceService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/inputsource/IInputSourceService;

    move-result-object v0

    sput-object v0, Lcom/autochips/inputsource/InputSourceClient;->mService:Landroid/inputsource/IInputSourceService;

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getService(): mService "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/autochips/inputsource/InputSourceClient;->mService:Landroid/inputsource/IInputSourceService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputSourceClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    sget-object v0, Lcom/autochips/inputsource/InputSourceClient;->mService:Landroid/inputsource/IInputSourceService;

    return-object v0
.end method

.method private permittedToStart()Z
    .locals 6

    .line 577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "permittedToStart(): Request Src :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/autochips/inputsource/InputSourceClient;->mSrcType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputSourceClient"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 579
    iget-object v2, p0, Lcom/autochips/inputsource/InputSourceClient;->mCBM:Landroid/cbm/CBManager;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string v0, "permittedToStart(): mCbm is null "

    .line 580
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 583
    :cond_0
    iget v4, p0, Lcom/autochips/inputsource/InputSourceClient;->mSrcType:I

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5, v0}, Landroid/cbm/CBManager;->request(IILandroid/os/Parcel;)I

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "permittedToStart(): ask permision from CBManager not Permitted"

    .line 585
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 588
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "permittedToStart(): ask permision from CBManager REQ_FORBID not Permitted"

    .line 591
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 595
    :cond_2
    iget-object v0, p0, Lcom/autochips/inputsource/InputSourceClient;->mCBM:Landroid/cbm/CBManager;

    iget-object v2, p0, Lcom/autochips/inputsource/InputSourceClient;->mCBMActionListener:Landroid/cbm/CBManager$OnActionListener;

    invoke-virtual {v0, v2}, Landroid/cbm/CBManager;->setOnActionListener(Landroid/cbm/CBManager$OnActionListener;)V

    .line 596
    iput-boolean v5, p0, Lcom/autochips/inputsource/InputSourceClient;->mIsPermittedByCBM:Z

    const-string v0, "permittedToStart(): ask permision from CBManager Permitted"

    .line 597
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5
.end method

.method private permittedToSwitch(I)Z
    .locals 6

    .line 603
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "InputSourceClient"

    if-eqz p1, :cond_5

    const/4 v3, 0x0

    if-eq p1, v1, :cond_2

    const/4 v4, 0x2

    if-eq p1, v4, :cond_1

    const/4 v4, 0x3

    if-eq p1, v4, :cond_0

    const-string p1, "permittedToSwitch(): Unknown"

    .line 626
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v3

    goto :goto_0

    :cond_0
    const-string p1, "permittedToSwitch(): DEST_TYPE_FRONT_REAR"

    .line 617
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    iget-object p1, p0, Lcom/autochips/inputsource/InputSourceClient;->mCBM:Landroid/cbm/CBManager;

    iget v5, p0, Lcom/autochips/inputsource/InputSourceClient;->mSrcType:I

    invoke-virtual {p1, v5, v4, v0}, Landroid/cbm/CBManager;->swiRequest(IILandroid/os/Parcel;)I

    move-result p1

    goto :goto_0

    :cond_1
    const-string p1, "permittedToSwitch(): DEST_TYPE_REAR"

    .line 612
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    iget-object p1, p0, Lcom/autochips/inputsource/InputSourceClient;->mCBM:Landroid/cbm/CBManager;

    iget v5, p0, Lcom/autochips/inputsource/InputSourceClient;->mSrcType:I

    invoke-virtual {p1, v5, v4, v0}, Landroid/cbm/CBManager;->swiRequest(IILandroid/os/Parcel;)I

    move-result p1

    goto :goto_0

    :cond_2
    const-string p1, "permittedToSwitch(): DEST_TYPE_FRONT"

    .line 607
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    iget-object p1, p0, Lcom/autochips/inputsource/InputSourceClient;->mCBM:Landroid/cbm/CBManager;

    iget v4, p0, Lcom/autochips/inputsource/InputSourceClient;->mSrcType:I

    invoke-virtual {p1, v4, v1, v0}, Landroid/cbm/CBManager;->swiRequest(IILandroid/os/Parcel;)I

    move-result p1

    :goto_0
    if-eqz p1, :cond_3

    const-string p1, "permittedToSwitch():  ask permision from CBManager not Permitted"

    .line 631
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 634
    :cond_3
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "permittedToSwitch(): swiRequest ret:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_4

    const-string p1, "permittedToSwitch(): ask permision from CBManager REQ_FORBID not Permitted"

    .line 637
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_4
    const-string p1, "permittedToSwitch(): ask permision from CBManager Permitted"

    .line 640
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_5
    const-string p1, "permittedToSwitch(): DEST_TYPE_NONE no need request"

    .line 622
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private setSurface(Landroid/view/Surface;I)I
    .locals 3

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSurface() destType is :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputSourceClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string/jumbo v0, "setSurface(): set surface null"

    .line 398
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 402
    :try_start_0
    iget-object v2, p0, Lcom/autochips/inputsource/InputSourceClient;->mSource:Landroid/inputsource/IInputSourceBase;

    if-nez v2, :cond_1

    const-string/jumbo p1, "setSurface(): fail mSource null"

    .line 403
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, -0x1774

    return p1

    :cond_1
    const/4 v2, 0x2

    if-ne p2, v2, :cond_2

    .line 407
    iget-object p2, p0, Lcom/autochips/inputsource/InputSourceClient;->mSource:Landroid/inputsource/IInputSourceBase;

    invoke-interface {p2, p1}, Landroid/inputsource/IInputSourceBase;->setRearSurfaceTexture(Landroid/view/Surface;)I

    move-result p1

    :goto_0
    move v0, p1

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    if-ne p2, v2, :cond_3

    .line 409
    iget-object p2, p0, Lcom/autochips/inputsource/InputSourceClient;->mSource:Landroid/inputsource/IInputSourceBase;

    invoke-interface {p2, p1}, Landroid/inputsource/IInputSourceBase;->setSurfaceTexture(Landroid/view/Surface;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string/jumbo p1, "setSurface(): fail"

    .line 412
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return v0
.end method


# virtual methods
.method public CBMConfig(Z)V
    .locals 2

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CBMConfig(): enter controled by CBM play later"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/autochips/inputsource/InputSourceClient;->mCBM:Landroid/cbm/CBManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isAppResume"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputSourceClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lcom/autochips/inputsource/InputSourceClient;->mCBM:Landroid/cbm/CBManager;

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0, p1}, Landroid/cbm/CBManager;->config(Z)V

    :cond_0
    return-void
.end method

.method public CBMResume()I
    .locals 5

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CBMConfig(): enter controled by CBM play later"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/autochips/inputsource/InputSourceClient;->mCBM:Landroid/cbm/CBManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputSourceClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Lcom/autochips/inputsource/InputSourceClient;->mCBM:Landroid/cbm/CBManager;

    const/16 v2, -0x1774

    if-eqz v0, :cond_1

    .line 174
    invoke-virtual {v0}, Landroid/cbm/CBManager;->appResume()I

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CBMConfig(): retCbm is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/16 v0, -0x1775

    return v0

    :cond_1
    const-string v0, "CBMConfig(): mCBM is null"

    .line 180
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public getSignalStatus()I
    .locals 2

    const-string v0, "InputSourceClient"

    const-string v1, "getSignalStatus"

    .line 123
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x1775

    return v0
.end method

.method public getState()I
    .locals 2

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetState() Real State Is"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/autochips/inputsource/InputSourceClient;->mRealState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputSourceClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget v0, p0, Lcom/autochips/inputsource/InputSourceClient;->mRealState:I

    return v0
.end method

.method public notifymsg(III)I
    .locals 2

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InputSourceClient.java notify msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";param1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";param2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";mOnCbmCmdListener:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/autochips/inputsource/InputSourceClient;->mOnCbmCmdListener:Lcom/autochips/inputsource/InputSourceClient$OnCbmCmdListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputSourceClient"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcom/autochips/inputsource/InputSourceClient;->mEventHandler:Lcom/autochips/inputsource/InputSourceClient$EventHandler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 115
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/autochips/inputsource/InputSourceClient$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 116
    iget-object p2, p0, Lcom/autochips/inputsource/InputSourceClient;->mEventHandler:Lcom/autochips/inputsource/InputSourceClient$EventHandler;

    invoke-virtual {p2, p1}, Lcom/autochips/inputsource/InputSourceClient$EventHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public play()I
    .locals 3

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "play(): enter mSrcType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/autochips/inputsource/InputSourceClient;->mSrcType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mIsPermittedByCBM: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/autochips/inputsource/InputSourceClient;->mIsPermittedByCBM:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputSourceClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget v0, p0, Lcom/autochips/inputsource/InputSourceClient;->mCbmCtlStatus:I

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    const-string v0, "play(): enter controled by CBM play later"

    .line 201
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iput v2, p0, Lcom/autochips/inputsource/InputSourceClient;->mCurrentStatus:I

    const/16 v0, -0x1775

    return v0

    .line 205
    :cond_0
    invoke-direct {p0}, Lcom/autochips/inputsource/InputSourceClient;->_play()I

    move-result v0

    .line 206
    iput v2, p0, Lcom/autochips/inputsource/InputSourceClient;->mCurrentStatus:I

    return v0
.end method

.method public release()V
    .locals 2

    const-string v0, "InputSourceClient"

    const-string v1, "release()"

    .line 75
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 76
    sput-object v0, Lcom/autochips/inputsource/InputSourceClient;->mService:Landroid/inputsource/IInputSourceService;

    .line 77
    iput-object v0, p0, Lcom/autochips/inputsource/InputSourceClient;->mEventHandler:Lcom/autochips/inputsource/InputSourceClient$EventHandler;

    return-void
.end method

.method public setDestination(I)I
    .locals 3

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDestination(): destination:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputSourceClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget v0, p0, Lcom/autochips/inputsource/InputSourceClient;->mDestType:I

    if-ne p1, v0, :cond_0

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDestination(): the current destination is already:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, -0x1775

    return p1

    .line 316
    :cond_0
    iget v0, p0, Lcom/autochips/inputsource/InputSourceClient;->mSrcType:I

    if-eqz v0, :cond_2

    .line 317
    invoke-direct {p0, p1}, Lcom/autochips/inputsource/InputSourceClient;->permittedToSwitch(I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo p1, "setDestination(): We\'re not Permitted to Switch dest by CBManager"

    .line 318
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, -0x1776

    return p1

    :cond_1
    const-string/jumbo v0, "setDestination(): after Permitted to switch by CBManager"

    .line 321
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x0

    .line 325
    :try_start_0
    iget-object v2, p0, Lcom/autochips/inputsource/InputSourceClient;->mSource:Landroid/inputsource/IInputSourceBase;

    if-nez v2, :cond_3

    const-string/jumbo p1, "setDestination(): fail mSource null"

    .line 326
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, -0x1774

    return p1

    .line 329
    :cond_3
    iget-object v2, p0, Lcom/autochips/inputsource/InputSourceClient;->mSource:Landroid/inputsource/IInputSourceBase;

    invoke-interface {v2, p1}, Landroid/inputsource/IInputSourceBase;->setDestination(I)I

    move-result v0

    .line 330
    iput p1, p0, Lcom/autochips/inputsource/InputSourceClient;->mDestType:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string/jumbo p1, "setDestination(): fail!"

    .line 332
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 2

    const-string v0, "InputSourceClient"

    const-string/jumbo v1, "setDisplay() "

    .line 352
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iput-object p1, p0, Lcom/autochips/inputsource/InputSourceClient;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz p1, :cond_0

    .line 356
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x1

    .line 361
    invoke-direct {p0, p1, v0}, Lcom/autochips/inputsource/InputSourceClient;->setSurface(Landroid/view/Surface;I)I

    return-void
.end method

.method public setOnCbmCmdListener(Lcom/autochips/inputsource/InputSourceClient$OnCbmCmdListener;)V
    .locals 1

    .line 103
    iput-object p1, p0, Lcom/autochips/inputsource/InputSourceClient;->mOnCbmCmdListener:Lcom/autochips/inputsource/InputSourceClient$OnCbmCmdListener;

    const-string p1, "InputSourceClient"

    const-string v0, "InputSourceClient.java setOnCbmCmdListener"

    .line 104
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setOnSignalListener(Lcom/autochips/inputsource/InputSourceClient$OnSignalListener;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/autochips/inputsource/InputSourceClient;->mOnSignalListener:Lcom/autochips/inputsource/InputSourceClient$OnSignalListener;

    return-void
.end method

.method public setRearDisplay(Landroid/view/SurfaceHolder;)V
    .locals 2

    const-string v0, "InputSourceClient"

    const-string/jumbo v1, "setRearDisplay() "

    .line 372
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iput-object p1, p0, Lcom/autochips/inputsource/InputSourceClient;->mRearSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz p1, :cond_0

    .line 376
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x2

    .line 382
    invoke-direct {p0, p1, v0}, Lcom/autochips/inputsource/InputSourceClient;->setSurface(Landroid/view/Surface;I)I

    return-void
.end method

.method public setSource(I)I
    .locals 3

    const-string v0, "InputSourceClient"

    const/4 v1, 0x0

    .line 142
    :try_start_0
    iget-object v2, p0, Lcom/autochips/inputsource/InputSourceClient;->mSource:Landroid/inputsource/IInputSourceBase;

    if-nez v2, :cond_0

    const-string/jumbo p1, "setSource(): mSource null"

    .line 143
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, -0x1774

    return p1

    .line 146
    :cond_0
    iget-object v2, p0, Lcom/autochips/inputsource/InputSourceClient;->mSource:Landroid/inputsource/IInputSourceBase;

    invoke-interface {v2, p1, v1, v1}, Landroid/inputsource/IInputSourceBase;->setSource(III)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string/jumbo p1, "setSource(): fail!"

    .line 148
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method

.method public setSourceRect(IIIII)I
    .locals 8

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSourceRect(): destination:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "left:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "top:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputSourceClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :try_start_0
    iget-object v0, p0, Lcom/autochips/inputsource/InputSourceClient;->mSource:Landroid/inputsource/IInputSourceBase;

    if-nez v0, :cond_0

    const-string/jumbo p1, "setSourceRect fail mSource null"

    .line 290
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, -0x1774

    return p1

    .line 293
    :cond_0
    iget-object v2, p0, Lcom/autochips/inputsource/InputSourceClient;->mSource:Landroid/inputsource/IInputSourceBase;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v7}, Landroid/inputsource/IInputSourceBase;->setSourceRect(IIIII)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string/jumbo p1, "setSourceRect fail!"

    .line 295
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public stop()I
    .locals 2

    const-string v0, "InputSourceClient"

    const-string/jumbo v1, "stop() enter"

    .line 217
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-direct {p0}, Lcom/autochips/inputsource/InputSourceClient;->_stop()I

    move-result v0

    const/4 v1, 0x1

    .line 220
    iput v1, p0, Lcom/autochips/inputsource/InputSourceClient;->mCurrentStatus:I

    return v0
.end method
