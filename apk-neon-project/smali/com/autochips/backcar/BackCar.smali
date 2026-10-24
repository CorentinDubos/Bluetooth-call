.class public Lcom/autochips/backcar/BackCar;
.super Ljava/lang/Object;
.source "BackCar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autochips/backcar/BackCar$OnSignalListener;
    }
.end annotation


# static fields
.field public static final CBM_CONTROL_NONE:I = 0x0

.field public static final CBM_CONTROL_STARTED:I = 0x2

.field public static final CBM_CONTROL_STOPED:I = 0x1

.field public static final EVENT_BACKCAR_ERROR:I = 0x4

.field public static final EVENT_BACKCAR_IDLE:I = 0x0

.field public static final EVENT_BACKCAR_RUNNING:I = 0x2

.field public static final EVENT_BACKCAR_START:I = 0x1

.field public static final EVENT_BACKCAR_STOP:I = 0x3

.field public static final SIGNAL_LOST:I = 0x1

.field public static final SIGNAL_READY:I = 0x0

.field public static final TAG:Ljava/lang/String; = "BackCar"

.field public static final VIDEO_FLIP_H:I = 0x1

.field public static final VIDEO_FLIP_HnV:I = 0x3

.field public static final VIDEO_FLIP_NONE:I = 0x0

.field public static final VIDEO_FLIP_V:I = 0x2

.field private static gCBM:Landroid/cbm/CBManager;

.field private static mCBMActionListener:Landroid/cbm/CBManager$OnActionListener;

.field protected static mCbmCtlStatus:I

.field private static mOnSignalListener:Lcom/autochips/backcar/BackCar$OnSignalListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "backcar_jni"

    .line 18
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 55
    sput-object v0, Lcom/autochips/backcar/BackCar;->gCBM:Landroid/cbm/CBManager;

    const/4 v0, 0x0

    .line 56
    sput v0, Lcom/autochips/backcar/BackCar;->mCbmCtlStatus:I

    .line 180
    new-instance v0, Lcom/autochips/backcar/BackCar$1;

    invoke-direct {v0}, Lcom/autochips/backcar/BackCar$1;-><init>()V

    sput-object v0, Lcom/autochips/backcar/BackCar;->mCBMActionListener:Landroid/cbm/CBManager$OnActionListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Deinit()V
    .locals 2

    const-string v0, "BackCar"

    const-string v1, "Deinit: we\'re going to Deinit resource"

    .line 64
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-static {}, Lcom/autochips/backcar/BackCar;->nativeDeinit()V

    return-void
.end method

.method public static InformArm2()V
    .locals 2

    const-string v0, "BackCar"

    const-string v1, "System Server Inform Arm2backcar Arm1 is ready !\r\n"

    .line 176
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-static {}, Lcom/autochips/backcar/BackCar;->nativeBCInformArm2()V

    return-void
.end method

.method public static SetBrightness(I)V
    .locals 0

    .line 137
    invoke-static {p0}, Lcom/autochips/backcar/BackCar;->nativeSetBrightness(I)V

    return-void
.end method

.method public static SetHue(I)V
    .locals 0

    .line 141
    invoke-static {p0}, Lcom/autochips/backcar/BackCar;->nativeSetHue(I)V

    return-void
.end method

.method public static SetMirror(I)V
    .locals 0

    .line 149
    invoke-static {p0}, Lcom/autochips/backcar/BackCar;->nativeSetMirror(I)V

    return-void
.end method

.method public static SetSaturation(I)V
    .locals 0

    .line 145
    invoke-static {p0}, Lcom/autochips/backcar/BackCar;->nativeSetSaturation(I)V

    return-void
.end method

.method private static StopSound()V
    .locals 0

    .line 79
    invoke-static {}, Lcom/autochips/backcar/BackCar;->nativeStopSound()V

    return-void
.end method

.method public static config(I)V
    .locals 0

    .line 133
    invoke-static {p0}, Lcom/autochips/backcar/BackCar;->nativeConfig(I)V

    return-void
.end method

.method public static native getEvent()Landroid/os/Message;
.end method

.method public static native init()I
.end method

.method public static native isARM2Reversing()Z
.end method

.method public static native nativeBCInformArm2()V
.end method

.method private static native nativeConfig(I)V
.end method

.method private static native nativeDeinit()V
.end method

.method private static native nativePlaySound([B)V
.end method

.method private static native nativeReset()V
.end method

.method private static native nativeResume()V
.end method

.method private static native nativeSetBrightness(I)V
.end method

.method private static native nativeSetHue(I)V
.end method

.method private static native nativeSetMirror(I)V
.end method

.method private static native nativeSetSaturation(I)V
.end method

.method private static native nativeSetVideoSurface(Landroid/view/Surface;)V
.end method

.method private static native nativeStart()I
.end method

.method private static native nativeStartup()I
.end method

.method private static native nativeStop()V
.end method

.method private static native nativeStopSound()V
.end method

.method private static native nativeSuspend()V
.end method

.method public static playSound([B)V
    .locals 2

    .line 71
    sget v0, Lcom/autochips/backcar/BackCar;->mCbmCtlStatus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 72
    invoke-static {p0}, Lcom/autochips/backcar/BackCar;->nativePlaySound([B)V

    goto :goto_0

    :cond_0
    const-string p0, "BackCar"

    const-string v0, "playSound(): we were stopped by CBM do not play sound"

    .line 74
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static reset()V
    .locals 2

    const-string v0, "BackCar"

    const-string/jumbo v1, "reset() enter "

    .line 104
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-static {}, Lcom/autochips/backcar/BackCar;->nativeReset()V

    return-void
.end method

.method public static resume()V
    .locals 0

    .line 108
    invoke-static {}, Lcom/autochips/backcar/BackCar;->nativeResume()V

    return-void
.end method

.method public static setVideoSurface(Landroid/view/Surface;)V
    .locals 0

    .line 68
    invoke-static {p0}, Lcom/autochips/backcar/BackCar;->nativeSetVideoSurface(Landroid/view/Surface;)V

    return-void
.end method

.method private static signalNotifyNative(III)V
    .locals 3

    const-string v0, "BackCar"

    const-string/jumbo v1, "signalNotifyNative"

    .line 164
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    sget-object v1, Lcom/autochips/backcar/BackCar;->mOnSignalListener:Lcom/autochips/backcar/BackCar$OnSignalListener;

    if-eqz v1, :cond_0

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InputSourceClient.java handleMessage msg: onSignal"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    sget-object v0, Lcom/autochips/backcar/BackCar;->mOnSignalListener:Lcom/autochips/backcar/BackCar$OnSignalListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/autochips/backcar/BackCar$OnSignalListener;->onSignal(III)V

    goto :goto_0

    :cond_0
    const-string p0, "InputSourceClient.java handleMessage mOnSignalListener not set so do not notify"

    .line 170
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static start()I
    .locals 3

    .line 82
    sget-object v0, Lcom/autochips/backcar/BackCar;->gCBM:Landroid/cbm/CBManager;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Landroid/cbm/CBManager;

    invoke-direct {v0}, Landroid/cbm/CBManager;-><init>()V

    sput-object v0, Lcom/autochips/backcar/BackCar;->gCBM:Landroid/cbm/CBManager;

    .line 85
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 86
    sget-object v0, Lcom/autochips/backcar/BackCar;->gCBM:Landroid/cbm/CBManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Landroid/cbm/CBManager;->requestAsync(II)I

    move-result v0

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "***cbm return value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackCar"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Request cbm (BC_ARM1)"

    .line 88
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-static {}, Lcom/autochips/backcar/BackCar;->nativeStart()I

    const/4 v0, 0x0

    return v0
.end method

.method public static startup()V
    .locals 3

    .line 120
    sget-object v0, Lcom/autochips/backcar/BackCar;->gCBM:Landroid/cbm/CBManager;

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Landroid/cbm/CBManager;

    invoke-direct {v0}, Landroid/cbm/CBManager;-><init>()V

    sput-object v0, Lcom/autochips/backcar/BackCar;->gCBM:Landroid/cbm/CBManager;

    .line 123
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 124
    sget-object v0, Lcom/autochips/backcar/BackCar;->gCBM:Landroid/cbm/CBManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Landroid/cbm/CBManager;->requestAsync(II)I

    move-result v0

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startup(): CBM requestAsync return value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackCar"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    sget-object v0, Lcom/autochips/backcar/BackCar;->gCBM:Landroid/cbm/CBManager;

    sget-object v1, Lcom/autochips/backcar/BackCar;->mCBMActionListener:Landroid/cbm/CBManager$OnActionListener;

    invoke-virtual {v0, v1}, Landroid/cbm/CBManager;->setOnActionListener(Landroid/cbm/CBManager$OnActionListener;)V

    .line 127
    invoke-static {}, Lcom/autochips/backcar/BackCar;->nativeStartup()I

    .line 128
    sget-object v0, Lcom/autochips/backcar/BackCar;->gCBM:Landroid/cbm/CBManager;

    invoke-virtual {v0}, Landroid/cbm/CBManager;->release()V

    const/4 v0, 0x0

    .line 129
    sput-object v0, Lcom/autochips/backcar/BackCar;->gCBM:Landroid/cbm/CBManager;

    return-void
.end method

.method public static stop()V
    .locals 2

    const-string v0, "BackCar"

    const-string/jumbo v1, "stop() enter "

    .line 94
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-static {}, Lcom/autochips/backcar/BackCar;->nativeStop()V

    .line 96
    sget-object v1, Lcom/autochips/backcar/BackCar;->gCBM:Landroid/cbm/CBManager;

    if-eqz v1, :cond_0

    .line 97
    invoke-virtual {v1}, Landroid/cbm/CBManager;->release()V

    const-string v1, "Release cbm (BC_ARM1)"

    .line 98
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 99
    sput-object v0, Lcom/autochips/backcar/BackCar;->gCBM:Landroid/cbm/CBManager;

    :cond_0
    return-void
.end method

.method public static suspend()V
    .locals 1

    .line 112
    invoke-static {}, Lcom/autochips/backcar/BackCar;->nativeSuspend()V

    .line 113
    sget-object v0, Lcom/autochips/backcar/BackCar;->gCBM:Landroid/cbm/CBManager;

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0}, Landroid/cbm/CBManager;->release()V

    const/4 v0, 0x0

    .line 115
    sput-object v0, Lcom/autochips/backcar/BackCar;->gCBM:Landroid/cbm/CBManager;

    :cond_0
    return-void
.end method


# virtual methods
.method public setOnSignalListener(Lcom/autochips/backcar/BackCar$OnSignalListener;)V
    .locals 0

    .line 157
    sput-object p1, Lcom/autochips/backcar/BackCar;->mOnSignalListener:Lcom/autochips/backcar/BackCar$OnSignalListener;

    return-void
.end method
