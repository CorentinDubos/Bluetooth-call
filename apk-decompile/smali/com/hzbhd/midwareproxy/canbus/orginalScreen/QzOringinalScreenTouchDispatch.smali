.class public Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;
.super Ljava/lang/Object;
.source "QzOringinalScreenTouchDispatch.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/canbus/orginalScreen/OringinalCarScreenDispatchTouchPointItf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch$originalLerningRec;
    }
.end annotation


# static fields
.field private static final ACTION_QZ_TS_LEARN:Ljava/lang/String; = "action_qz_oringinal_screen_rep_ts_learn"

.field private static final EVENT_BUTTON_STATE:I = 0x0

.field private static final EVENT_DEVICE_ID:I = 0x0

.field private static final EVENT_EDGE_FLAGS:I = 0x0

.field private static final EVENT_FLAGS:I = 0x0

.field private static final EVENT_META_STATE:I = 0x0

.field private static final EVENT_SOURCE:I = 0x1002

.field private static final EVENT_X_PRECISION:F = 1.0f

.field private static final EVENT_Y_PRECISION:F = 1.0f

.field private static final MAX_POINT_NUM:I = 0x2

.field private static final QZ_MOUSE_LOG:Ljava/lang/String; = "QZ_MOUSE_LOG"

.field private static final QZ_TOUCH_LOG:Ljava/lang/String; = "QZ_TOUCH_LOG"

.field public static final TSWR:Ljava/lang/String; = "tswr"

.field private static actualX:I = 0x0

.field private static actualY:I = 0x0

.field private static contextNow:Landroid/content/Context; = null

.field private static final input777777D:Ljava/lang/String; = "/sys/devices/virtual/input/input777777/"

.field static isInLearningPage:Z = false

.field private static mOriginalLerningRec:Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch$originalLerningRec; = null

.field static mQzOringinalScreenTouchDispatch:Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch; = null

.field private static final maxCoordRange:I = 0x46

.field private static maxHeight:I = 0x0

.field private static maxWidth:I = 0x0

.field private static maxXend:I = 0x0

.field private static maxYend:I = 0x0

.field private static moveDirect:I = 0x0

.field private static final moveFix:I = 0x2

.field private static pCoordsArray:[Landroid/view/MotionEvent$PointerCoords;

.field private static pCoordsMouse:[Landroid/view/MotionEvent$PointerCoords;

.field private static pPropsArray:[Landroid/view/MotionEvent$PointerProperties;

.field private static pPropsMouse:[Landroid/view/MotionEvent$PointerProperties;


# instance fields
.field cachedThreadPool:Ljava/util/concurrent/ExecutorService;

.field private coordX:[F

.field private coordY:[F

.field private count:B

.field private curActionMouse:I

.field private curAction_1:I

.field private curAction_2:I

.field private curMouseX:I

.field private curMouseY:I

.field inst:Landroid/app/Instrumentation;

.field isFirst:Z

.field private isNeedDisableMouse:Z

.field private isNeedDisableTouch:Z

.field private isNeedReportTwoPoint:Z

.field private isTwoPointLeaveFirstOne:Z

.field private isTwoPointLeaveSecondOne:Z

.field private mcuIntArray:[I

.field private originalxy_x:I

.field private originalxy_y:I

.field private preActionMouse:I

.field private preAction_1:I

.field private preAction_2:I

.field private preCoordX:[F

.field private preCoordY:[F

.field private preMouseX:I

.field private preMouseY:I

.field private ratio_x:F

.field private ratio_y:F

.field private x1:F

.field private x2:F

.field private xOffset:I

.field private y1:F

.field private y2:F

.field private yOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    new-array v1, v0, [Landroid/view/MotionEvent$PointerCoords;

    .line 62
    sput-object v1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->pCoordsArray:[Landroid/view/MotionEvent$PointerCoords;

    new-array v0, v0, [Landroid/view/MotionEvent$PointerProperties;

    .line 63
    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->pPropsArray:[Landroid/view/MotionEvent$PointerProperties;

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/MotionEvent$PointerCoords;

    .line 77
    sput-object v1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->pCoordsMouse:[Landroid/view/MotionEvent$PointerCoords;

    new-array v0, v0, [Landroid/view/MotionEvent$PointerProperties;

    .line 78
    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->pPropsMouse:[Landroid/view/MotionEvent$PointerProperties;

    .line 87
    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch$originalLerningRec;

    invoke-direct {v0}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch$originalLerningRec;-><init>()V

    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->mOriginalLerningRec:Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch$originalLerningRec;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->count:B

    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 58
    iput-object v2, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->coordX:[F

    new-array v2, v1, [F

    .line 59
    iput-object v2, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->coordY:[F

    new-array v2, v1, [F

    .line 60
    iput-object v2, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preCoordX:[F

    new-array v1, v1, [F

    .line 61
    iput-object v1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preCoordY:[F

    const/4 v1, 0x1

    .line 64
    iput v1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preAction_1:I

    iput v1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preAction_2:I

    .line 65
    iput-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->isNeedReportTwoPoint:Z

    iput-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->isTwoPointLeaveFirstOne:Z

    iput-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->isTwoPointLeaveSecondOne:Z

    const/high16 v2, 0x3f800000    # 1.0f

    .line 69
    iput v2, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->ratio_x:F

    .line 70
    iput v2, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->ratio_y:F

    .line 71
    iput v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->originalxy_x:I

    .line 72
    iput v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->originalxy_y:I

    .line 73
    iput-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->isNeedDisableTouch:Z

    .line 74
    iput-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->isNeedDisableMouse:Z

    .line 81
    iput v1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preActionMouse:I

    .line 564
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->cachedThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 616
    iput-boolean v1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->isFirst:Z

    .line 54
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "action_qz_oringinal_screen_rep_ts_learn"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 55
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->mOriginalLerningRec:Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch$originalLerningRec;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static WriteTsDev(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    const-string v0, "QZ_TOUCH_LOG"

    const-string v1, "WriteTsDev"

    .line 630
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    new-instance v0, Ljava/io/FileWriter;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/sys/devices/virtual/input/input777777/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 632
    new-instance p0, Ljava/io/BufferedWriter;

    invoke-direct {p0, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 633
    invoke-virtual {p0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 634
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 636
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;
    .locals 2

    const-class v0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;

    monitor-enter v0

    .line 43
    :try_start_0
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->mQzOringinalScreenTouchDispatch:Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;

    if-nez v1, :cond_0

    .line 44
    sput-object p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->contextNow:Landroid/content/Context;

    .line 45
    new-instance v1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;

    invoke-direct {v1, p0}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->mQzOringinalScreenTouchDispatch:Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;

    .line 46
    sget-object p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->contextNow:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/hzbhd/midware/proxy/R$dimen;->dp1024:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    sput p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->maxWidth:I

    .line 47
    sget-object p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->contextNow:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/hzbhd/midware/proxy/R$dimen;->dp600:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    sput p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->maxHeight:I

    .line 48
    sget v1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->maxWidth:I

    div-int/lit8 v1, v1, 0x2

    sput v1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->actualX:I

    .line 49
    div-int/lit8 p0, p0, 0x2

    sput p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->actualY:I

    .line 51
    :cond_0
    sget-object p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->mQzOringinalScreenTouchDispatch:Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getMoionEvent(II)Landroid/view/MotionEvent;
    .locals 16

    .line 113
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sget-object v6, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->pPropsArray:[Landroid/view/MotionEvent$PointerProperties;

    sget-object v7, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->pCoordsArray:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x1002

    const/4 v15, 0x0

    move/from16 v4, p2

    move/from16 v5, p1

    invoke-static/range {v0 .. v15}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method private getMouseMaxEnd(I)V
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 359
    :cond_0
    sget p1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->actualX:I

    sput p1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->maxXend:I

    .line 360
    sget p1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->actualY:I

    sput p1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->maxYend:I

    goto :goto_0

    .line 355
    :cond_1
    sget p1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->actualX:I

    sput p1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->maxXend:I

    .line 356
    sget p1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->maxHeight:I

    sget v0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->actualY:I

    sub-int/2addr p1, v0

    sput p1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->maxYend:I

    goto :goto_0

    .line 351
    :cond_2
    sget p1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->maxWidth:I

    sget v0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->actualX:I

    sub-int/2addr p1, v0

    sput p1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->maxXend:I

    .line 352
    sget p1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->actualY:I

    sput p1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->maxYend:I

    goto :goto_0

    .line 347
    :cond_3
    sget p1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->maxWidth:I

    sget v0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->actualX:I

    sub-int/2addr p1, v0

    sput p1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->maxXend:I

    .line 348
    sget p1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->maxHeight:I

    sget v0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->actualY:I

    sub-int/2addr p1, v0

    sput p1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->maxYend:I

    :goto_0
    return-void
.end method

.method private getMouseMotionEvent(I)Landroid/view/MotionEvent;
    .locals 16

    .line 102
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sget-object v6, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->pPropsMouse:[Landroid/view/MotionEvent$PointerProperties;

    sget-object v7, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->pCoordsMouse:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v5, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x1002

    const/4 v15, 0x0

    move/from16 v4, p1

    invoke-static/range {v0 .. v15}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method private isMouseInMoveRange()Z
    .locals 4

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[\u9f20\u6807][isMouseInMoveRange] xMoveRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->curMouseX:I

    iget v2, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preMouseX:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QZ_MOUSE_LOG"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[\u9f20\u6807][isMouseInMoveRange] yMoveRange="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->curMouseY:I

    iget v3, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preMouseY:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->curMouseX:I

    iget v1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preMouseX:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    iget v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->curMouseY:I

    iget v2, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preMouseY:I

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private moveMouse(III)V
    .locals 1

    .line 366
    sget v0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->maxXend:I

    mul-int/2addr p2, v0

    div-int/lit8 p2, p2, 0x46

    iput p2, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->xOffset:I

    .line 367
    sget v0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->maxYend:I

    mul-int/2addr p3, v0

    div-int/lit8 p3, p3, 0x46

    iput p3, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->yOffset:I

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 382
    :cond_0
    sget p1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->actualX:I

    sub-int/2addr p1, p2

    sput p1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->actualX:I

    .line 383
    sget p1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->actualY:I

    sub-int/2addr p1, p3

    sput p1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->actualY:I

    goto :goto_0

    .line 378
    :cond_1
    sget p1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->actualX:I

    sub-int/2addr p1, p2

    sput p1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->actualX:I

    .line 379
    sget p1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->actualY:I

    add-int/2addr p1, p3

    sput p1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->actualY:I

    goto :goto_0

    .line 374
    :cond_2
    sget p1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->actualX:I

    add-int/2addr p1, p2

    sput p1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->actualX:I

    .line 375
    sget p1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->actualY:I

    sub-int/2addr p1, p3

    sput p1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->actualY:I

    goto :goto_0

    .line 370
    :cond_3
    sget p1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->actualX:I

    add-int/2addr p1, p2

    sput p1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->actualX:I

    .line 371
    sget p1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->actualY:I

    add-int/2addr p1, p3

    sput p1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->actualY:I

    .line 386
    :goto_0
    sget p1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->actualX:I

    sget p2, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->maxWidth:I

    if-le p1, p2, :cond_4

    .line 387
    sput p2, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->actualX:I

    .line 389
    :cond_4
    sget p1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->actualY:I

    sget p2, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->maxHeight:I

    if-le p1, p2, :cond_5

    .line 390
    sput p2, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->actualY:I

    .line 392
    :cond_5
    sget p1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->actualX:I

    const/4 p2, 0x0

    if-gez p1, :cond_6

    .line 393
    sput p2, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->actualX:I

    .line 395
    :cond_6
    sget p1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->actualY:I

    if-gez p1, :cond_7

    .line 396
    sput p2, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->actualY:I

    :cond_7
    return-void
.end method

.method private declared-synchronized startThread(Landroid/view/MotionEvent;)V
    .locals 2

    monitor-enter p0

    .line 566
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->cachedThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch$1;

    invoke-direct {v1, p0, p1}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch$1;-><init>(Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;Landroid/view/MotionEvent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 582
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized startThread2(IFF)V
    .locals 2

    monitor-enter p0

    .line 618
    :try_start_0
    iget-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->isFirst:Z

    if-eqz v0, :cond_0

    const-string/jumbo p1, "tswr"

    .line 619
    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/TouchPoint;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2, p3}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/TouchPoint;-><init>(IFF)V

    invoke-direct {p0, v0}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->touchmsgToString(Lcom/hzbhd/midwareproxy/canbus/orginalScreen/TouchPoint;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->WriteTsDev(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 620
    iput-boolean p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->isFirst:Z

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "tswr"

    .line 622
    new-instance v1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/TouchPoint;

    invoke-direct {v1, p1, p2, p3}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/TouchPoint;-><init>(IFF)V

    invoke-direct {p0, v1}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->touchmsgToString(Lcom/hzbhd/midwareproxy/canbus/orginalScreen/TouchPoint;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->WriteTsDev(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 624
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private touchmsgToString(Lcom/hzbhd/midwareproxy/canbus/orginalScreen/TouchPoint;)Ljava/lang/String;
    .locals 2

    .line 642
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/TouchPoint;->getActionType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",1,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/TouchPoint;->toTouchString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",0,0,0,0,0,0,0,0"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "result= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mww"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method


# virtual methods
.method public disableOriginalMouse()V
    .locals 4

    const/4 v0, 0x1

    .line 157
    iput-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->isNeedDisableMouse:Z

    .line 158
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->contextNow:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/hzbhd/midware/proxy/R$dimen;->dp1024:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->maxWidth:I

    .line 159
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->contextNow:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/hzbhd/midware/proxy/R$dimen;->dp600:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->maxHeight:I

    .line 160
    sget v2, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->maxWidth:I

    div-int/lit8 v2, v2, 0x2

    sput v2, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->actualX:I

    .line 161
    div-int/lit8 v1, v1, 0x2

    sput v1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->actualY:I

    const/4 v1, 0x0

    .line 162
    iput v1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->curMouseX:I

    .line 163
    iput v1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->curMouseY:I

    .line 164
    sput v1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->moveDirect:I

    .line 165
    iput v1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->curActionMouse:I

    .line 166
    iput v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preActionMouse:I

    .line 167
    iput v1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preMouseX:I

    .line 168
    iput v1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preMouseY:I

    .line 169
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->pCoordsMouse:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v3, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v3, v2, v1

    .line 170
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->pCoordsMouse:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 171
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->pCoordsMouse:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v1

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 172
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->pCoordsMouse:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v1

    sget v3, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->actualX:I

    int-to-float v3, v3

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 173
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->pCoordsMouse:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v1

    sget v3, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->actualY:I

    int-to-float v3, v3

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 174
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->pPropsMouse:[Landroid/view/MotionEvent$PointerProperties;

    new-instance v3, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v3, v2, v1

    .line 175
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->pPropsMouse:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v2, v2, v1

    iput v1, v2, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 176
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->pPropsMouse:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v1, v2, v1

    iput v0, v1, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 177
    iget v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->curMouseX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->curMouseY:I

    int-to-float v1, v1

    const/4 v2, 0x3

    invoke-direct {p0, v2, v0, v1}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->startThread2(IFF)V

    return-void
.end method

.method public disableOriginalTouch()V
    .locals 6

    const/4 v0, 0x1

    .line 129
    iput-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->isNeedDisableTouch:Z

    const/4 v1, 0x0

    .line 130
    iput v1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->curAction_1:I

    .line 131
    iput v1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->curAction_2:I

    .line 132
    iput v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preAction_1:I

    .line 133
    iput v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preAction_2:I

    const/4 v2, 0x2

    new-array v3, v2, [F

    .line 134
    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->coordX:[F

    new-array v3, v2, [F

    .line 135
    fill-array-data v3, :array_1

    iput-object v3, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->coordY:[F

    new-array v3, v2, [F

    .line 136
    fill-array-data v3, :array_2

    iput-object v3, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preCoordX:[F

    new-array v3, v2, [F

    .line 137
    fill-array-data v3, :array_3

    iput-object v3, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preCoordY:[F

    .line 138
    iput-boolean v1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->isNeedReportTwoPoint:Z

    .line 139
    iput-boolean v1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->isTwoPointLeaveFirstOne:Z

    .line 140
    iput-boolean v1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->isTwoPointLeaveSecondOne:Z

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_0

    .line 142
    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->pCoordsArray:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v5, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v5}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v5, v4, v3

    .line 143
    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->pCoordsArray:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v3

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 144
    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->pCoordsArray:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v3

    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 145
    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->pCoordsArray:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->coordX:[F

    aget v5, v5, v3

    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 146
    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->pCoordsArray:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->coordY:[F

    aget v5, v5, v3

    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 147
    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->pPropsArray:[Landroid/view/MotionEvent$PointerProperties;

    new-instance v5, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v5}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v5, v4, v3

    .line 148
    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->pPropsArray:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v4, v4, v3

    iput v3, v4, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 149
    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->pPropsArray:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v4, v4, v3

    iput v0, v4, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 151
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->coordX:[F

    aget v2, v2, v1

    iget-object v3, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->coordY:[F

    aget v1, v3, v1

    invoke-direct {p0, v0, v2, v1}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->startThread2(IFF)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public disableTouchAndMouse()V
    .locals 0

    .line 191
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->disableOriginalTouch()V

    .line 192
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->disableOriginalMouse()V

    return-void
.end method

.method public enableOriginalMouse()V
    .locals 1

    const/4 v0, 0x0

    .line 186
    iput-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->isNeedDisableMouse:Z

    return-void
.end method

.method public enableOriginalTouch()V
    .locals 1

    const/4 v0, 0x0

    .line 183
    iput-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->isNeedDisableTouch:Z

    return-void
.end method

.method public enableTouchAndMouse()V
    .locals 0

    .line 195
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->enableOriginalTouch()V

    .line 196
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->enableOriginalMouse()V

    return-void
.end method

.method public getCurMouseDirect()I
    .locals 1

    .line 488
    sget v0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->moveDirect:I

    return v0
.end method

.method public getCurMouseX()I
    .locals 1

    .line 480
    sget v0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->actualX:I

    return v0
.end method

.method public getCurMouseY()I
    .locals 1

    .line 484
    sget v0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->actualY:I

    return v0
.end method

.method public getCurrentAction_1([B)I
    .locals 1

    const/4 v0, 0x2

    .line 121
    aget-byte p1, p1, v0

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntByteWithBit(BI)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->curAction_1:I

    return p1
.end method

.method public getCurrentAction_2([B)I
    .locals 1

    const/4 v0, 0x2

    .line 125
    aget-byte p1, p1, v0

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntByteWithBit(BI)Z

    move-result p1

    xor-int/2addr p1, v0

    iput p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->curAction_2:I

    return p1
.end method

.method public isCurrentTouchIdle()Z
    .locals 2

    .line 558
    iget v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->curAction_1:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->curAction_2:I

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPointOneDownSame()Z
    .locals 1

    .line 546
    iget v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->curAction_1:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preAction_1:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPointOneKeepDown()Z
    .locals 3

    .line 532
    iget v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->curAction_1:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preAction_1:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->coordX:[F

    aget v0, v0, v1

    iget-object v2, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preCoordX:[F

    aget v2, v2, v1

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->coordY:[F

    aget v0, v0, v1

    iget-object v2, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preCoordY:[F

    aget v2, v2, v1

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public isPointOneLeaving()Z
    .locals 2

    .line 520
    iget v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preAction_1:I

    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->isTouching(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->curAction_1:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPointOneMoving()Z
    .locals 3

    .line 506
    iget v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preAction_1:I

    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->isTouching(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->curAction_1:I

    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->isTouching(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->coordX:[F

    aget v0, v0, v1

    iget-object v2, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preCoordX:[F

    aget v2, v2, v1

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->coordY:[F

    aget v0, v0, v1

    iget-object v2, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preCoordY:[F

    aget v2, v2, v1

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public isPointOneTouching()Z
    .locals 2

    .line 499
    iget v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->curAction_1:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preAction_1:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPointTwoDownSame()Z
    .locals 1

    .line 552
    iget v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->curAction_2:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preAction_2:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPointTwoKeepDown()Z
    .locals 3

    .line 539
    iget v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->curAction_2:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preAction_2:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->coordX:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    iget-object v2, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preCoordX:[F

    aget v2, v2, v1

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->coordY:[F

    aget v0, v0, v1

    iget-object v2, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preCoordY:[F

    aget v2, v2, v1

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPointTwoLeaving()Z
    .locals 2

    .line 526
    iget v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preAction_2:I

    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->isTouching(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->curAction_2:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPointTwoMoving()Z
    .locals 3

    .line 513
    iget v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preAction_2:I

    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->isTouching(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->curAction_2:I

    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->isTouching(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->coordX:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    iget-object v2, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preCoordX:[F

    aget v2, v2, v1

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->coordY:[F

    aget v0, v0, v1

    iget-object v2, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preCoordY:[F

    aget v2, v2, v1

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isTouching(I)Z
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public processMouseInfo([B)V
    .locals 6

    .line 410
    iget-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->isNeedDisableMouse:Z

    if-eqz v0, :cond_0

    return-void

    .line 413
    :cond_0
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->mcuIntArray:[I

    const/4 v0, 0x0

    move v1, v0

    .line 414
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 415
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_1

    .line 416
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->mcuIntArray:[I

    aget-byte v3, p1, v1

    aput v3, v2, v1

    goto :goto_1

    .line 418
    :cond_1
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->mcuIntArray:[I

    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    .line 421
    aget-byte v2, p1, v1

    const/4 v3, 0x6

    invoke-static {v2, v3, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFromByteWithBit(III)I

    move-result v2

    sput v2, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->moveDirect:I

    .line 422
    aget-byte p1, p1, v1

    const/4 v2, 0x5

    invoke-static {p1, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntByteWithBit(BI)Z

    move-result p1

    const/4 v2, 0x1

    xor-int/2addr p1, v2

    iput p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->curActionMouse:I

    .line 423
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->mcuIntArray:[I

    const/4 v3, 0x3

    aget v3, p1, v3

    iput v3, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->curMouseX:I

    const/4 v3, 0x4

    .line 424
    aget p1, p1, v3

    iput p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->curMouseY:I

    .line 425
    sget p1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->moveDirect:I

    invoke-direct {p0, p1}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->getMouseMaxEnd(I)V

    .line 426
    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->isMouseInMoveRange()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 427
    sget p1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->moveDirect:I

    iget v3, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->curMouseX:I

    iget v4, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->curMouseY:I

    invoke-direct {p0, p1, v3, v4}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->moveMouse(III)V

    .line 429
    :cond_3
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->contextNow:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v3, "ratio_x"

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {p1, v3, v4}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->ratio_x:F

    .line 430
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->contextNow:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v3, "ratio_y"

    invoke-static {p1, v3, v4}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->ratio_y:F

    .line 431
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->contextNow:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v3, "originalxy_x"

    invoke-static {p1, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->originalxy_x:I

    .line 432
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->contextNow:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v3, "originalxy_y"

    invoke-static {p1, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->originalxy_y:I

    .line 433
    sget v3, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->actualX:I

    int-to-float v3, v3

    iget v5, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->ratio_x:F

    mul-float/2addr v3, v5

    iget v5, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->originalxy_x:I

    int-to-float v5, v5

    add-float/2addr v3, v5

    float-to-int v3, v3

    sput v3, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->actualX:I

    .line 434
    sget v3, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->actualY:I

    int-to-float v3, v3

    iget v5, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->ratio_y:F

    mul-float/2addr v3, v5

    int-to-float p1, p1

    add-float/2addr v3, p1

    float-to-int p1, v3

    sput p1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->actualY:I

    .line 435
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->pCoordsMouse:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v3, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v3, p1, v0

    .line 436
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->pCoordsMouse:[Landroid/view/MotionEvent$PointerCoords;

    aget-object p1, p1, v0

    iput v4, p1, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 437
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->pCoordsMouse:[Landroid/view/MotionEvent$PointerCoords;

    aget-object p1, p1, v0

    iput v4, p1, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 438
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->pCoordsMouse:[Landroid/view/MotionEvent$PointerCoords;

    aget-object p1, p1, v0

    sget v3, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->actualX:I

    int-to-float v3, v3

    iput v3, p1, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 439
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->pCoordsMouse:[Landroid/view/MotionEvent$PointerCoords;

    aget-object p1, p1, v0

    sget v3, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->actualY:I

    int-to-float v3, v3

    iput v3, p1, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 440
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->pPropsMouse:[Landroid/view/MotionEvent$PointerProperties;

    new-instance v3, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v3, p1, v0

    .line 441
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->pPropsMouse:[Landroid/view/MotionEvent$PointerProperties;

    aget-object p1, p1, v0

    iput v0, p1, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 442
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->pPropsMouse:[Landroid/view/MotionEvent$PointerProperties;

    aget-object p1, p1, v0

    iput v2, p1, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 443
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[\u9f20\u6807][mouseDirect]="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->moveDirect:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "QZ_MOUSE_LOG"

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[\u9f20\u6807][curMouseX]="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->curMouseX:I

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[\u9f20\u6807][curMouseY]="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->curMouseY:I

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[\u9f20\u6807][actualX]="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->actualX:I

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[\u9f20\u6807][actualY]="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->actualY:I

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[\u9f20\u6807][preMouseX]="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preMouseX:I

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[\u9f20\u6807][preMouseY]="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preMouseY:I

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[\u9f20\u6807][curActionMouse]="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->curActionMouse:I

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[\u9f20\u6807][preActionMouse]="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preActionMouse:I

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->curActionMouse:I

    if-ne p1, v2, :cond_4

    iget p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preActionMouse:I

    if-nez p1, :cond_4

    const-string p1, "[\u9f20\u6807][UP]"

    .line 453
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    invoke-direct {p0, v2}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->getMouseMotionEvent(I)Landroid/view/MotionEvent;

    move-result-object p1

    .line 455
    invoke-direct {p0, p1}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->startThread(Landroid/view/MotionEvent;)V

    goto :goto_2

    .line 456
    :cond_4
    iget p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->curActionMouse:I

    if-nez p1, :cond_5

    iget p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preActionMouse:I

    if-ne p1, v2, :cond_5

    const-string p1, "[\u9f20\u6807][DOWN]"

    .line 457
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-direct {p0, v0}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->getMouseMotionEvent(I)Landroid/view/MotionEvent;

    move-result-object p1

    .line 459
    invoke-direct {p0, p1}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->startThread(Landroid/view/MotionEvent;)V

    goto :goto_2

    .line 460
    :cond_5
    iget p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->curActionMouse:I

    if-nez p1, :cond_7

    iget p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preActionMouse:I

    if-nez p1, :cond_7

    iget p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->curMouseX:I

    iget v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preMouseX:I

    if-ne p1, v0, :cond_6

    iget p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->curMouseY:I

    iget v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preMouseY:I

    if-eq p1, v0, :cond_7

    .line 463
    :cond_6
    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->isMouseInMoveRange()Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "[\u9f20\u6807][DOWN][MOVE]"

    .line 464
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-direct {p0, v1}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->getMouseMotionEvent(I)Landroid/view/MotionEvent;

    move-result-object p1

    .line 466
    invoke-direct {p0, p1}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->startThread(Landroid/view/MotionEvent;)V

    goto :goto_2

    .line 467
    :cond_7
    iget p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->curActionMouse:I

    if-ne p1, v2, :cond_9

    iget p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->curMouseX:I

    iget v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preMouseX:I

    if-ne p1, v0, :cond_8

    iget p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->curMouseY:I

    iget v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preMouseY:I

    if-eq p1, v0, :cond_9

    .line 469
    :cond_8
    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->isMouseInMoveRange()Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "[\u9f20\u6807][ONLY][MOVE]"

    .line 470
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_9
    :goto_2
    iget p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->curActionMouse:I

    iput p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preActionMouse:I

    .line 473
    iget p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->curMouseX:I

    iput p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preMouseX:I

    .line 474
    iget p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->curMouseY:I

    iput p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preMouseY:I

    return-void
.end method

.method public declared-synchronized processMouseInfoExtra([B)V
    .locals 5

    monitor-enter p0

    .line 725
    :try_start_0
    iget-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->isNeedDisableMouse:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 726
    monitor-exit p0

    return-void

    .line 728
    :cond_0
    :try_start_1
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->mcuIntArray:[I

    const/4 v0, 0x0

    move v1, v0

    .line 729
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 730
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_1

    .line 731
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->mcuIntArray:[I

    aget-byte v3, p1, v1

    aput v3, v2, v1

    goto :goto_1

    .line 733
    :cond_1
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->mcuIntArray:[I

    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v1

    :goto_1
    const-string v2, "[\u9f20\u6807]"

    const-string v3, "mcuIntArray!-!-!-!-!-!-!-!"

    .line 735
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    .line 737
    aget-byte v2, p1, v1

    const/4 v3, 0x6

    invoke-static {v2, v3, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFromByteWithBit(III)I

    move-result v2

    sput v2, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->moveDirect:I

    .line 738
    aget-byte p1, p1, v1

    const/4 v1, 0x5

    invoke-static {p1, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntByteWithBit(BI)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    move p1, v0

    goto :goto_2

    :cond_3
    move p1, v1

    :goto_2
    iput p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->curActionMouse:I

    .line 739
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->mcuIntArray:[I

    const/4 v2, 0x3

    aget p1, p1, v2

    iput p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->curMouseX:I

    .line 740
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->mcuIntArray:[I

    const/4 v2, 0x4

    aget p1, p1, v2

    iput p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->curMouseY:I

    .line 741
    sget p1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->moveDirect:I

    invoke-direct {p0, p1}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->getMouseMaxEnd(I)V

    .line 742
    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->isMouseInMoveRange()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 743
    sget p1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->moveDirect:I

    iget v2, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->curMouseX:I

    iget v3, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->curMouseY:I

    invoke-direct {p0, p1, v2, v3}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->moveMouse(III)V

    .line 745
    :cond_4
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->contextNow:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "ratio_x"

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {p1, v2, v3}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->ratio_x:F

    .line 746
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->contextNow:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "ratio_y"

    invoke-static {p1, v2, v3}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->ratio_y:F

    .line 747
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->contextNow:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "originalxy_x"

    invoke-static {p1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->originalxy_x:I

    .line 748
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->contextNow:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "originalxy_y"

    invoke-static {p1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->originalxy_y:I

    .line 749
    sget v2, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->actualX:I

    int-to-float v2, v2

    iget v4, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->ratio_x:F

    mul-float/2addr v2, v4

    iget v4, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->originalxy_x:I

    int-to-float v4, v4

    add-float/2addr v2, v4

    float-to-int v2, v2

    sput v2, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->actualX:I

    .line 750
    sget v2, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->actualY:I

    int-to-float v2, v2

    iget v4, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->ratio_y:F

    mul-float/2addr v2, v4

    int-to-float p1, p1

    add-float/2addr v2, p1

    float-to-int p1, v2

    sput p1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->actualY:I

    .line 751
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->pCoordsMouse:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v2, p1, v0

    .line 752
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->pCoordsMouse:[Landroid/view/MotionEvent$PointerCoords;

    aget-object p1, p1, v0

    iput v3, p1, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 753
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->pCoordsMouse:[Landroid/view/MotionEvent$PointerCoords;

    aget-object p1, p1, v0

    iput v3, p1, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 754
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->pCoordsMouse:[Landroid/view/MotionEvent$PointerCoords;

    aget-object p1, p1, v0

    sget v2, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->actualX:I

    int-to-float v2, v2

    iput v2, p1, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 755
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->pCoordsMouse:[Landroid/view/MotionEvent$PointerCoords;

    aget-object p1, p1, v0

    sget v2, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->actualY:I

    int-to-float v2, v2

    iput v2, p1, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 756
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->pPropsMouse:[Landroid/view/MotionEvent$PointerProperties;

    new-instance v2, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v2, p1, v0

    .line 757
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->pPropsMouse:[Landroid/view/MotionEvent$PointerProperties;

    aget-object p1, p1, v0

    iput v0, p1, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 758
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->pPropsMouse:[Landroid/view/MotionEvent$PointerProperties;

    aget-object p1, p1, v0

    iput v1, p1, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    const-string p1, "QZ_MOUSE_LOG"

    .line 759
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[\u9f20\u6807][mouseDirect]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->moveDirect:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "QZ_MOUSE_LOG"

    .line 760
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[\u9f20\u6807][curMouseX]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->curMouseX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "QZ_MOUSE_LOG"

    .line 761
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[\u9f20\u6807][curMouseY]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->curMouseY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "QZ_MOUSE_LOG"

    .line 762
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[\u9f20\u6807][actualX]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->actualX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "QZ_MOUSE_LOG"

    .line 763
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[\u9f20\u6807][actualY]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->actualY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "QZ_MOUSE_LOG"

    .line 764
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[\u9f20\u6807][preMouseX]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preMouseX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "QZ_MOUSE_LOG"

    .line 765
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[\u9f20\u6807][preMouseY]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preMouseY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "QZ_MOUSE_LOG"

    .line 766
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[\u9f20\u6807][curActionMouse]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->curActionMouse:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "QZ_MOUSE_LOG"

    .line 767
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[\u9f20\u6807][preActionMouse]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preActionMouse:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    iget p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->curActionMouse:I

    if-ne p1, v1, :cond_5

    const-string p1, "QZ_MOUSE_LOG"

    const-string v0, "[\u9f20\u6807][UP]"

    .line 769
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    sget p1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->actualX:I

    int-to-float p1, p1

    sget v0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->actualY:I

    int-to-float v0, v0

    invoke-direct {p0, v1, p1, v0}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->startThread2(IFF)V

    goto :goto_3

    .line 771
    :cond_5
    iget p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->curActionMouse:I

    if-nez p1, :cond_6

    iget p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preActionMouse:I

    if-ne p1, v1, :cond_6

    const-string p1, "QZ_MOUSE_LOG"

    const-string v1, "[\u9f20\u6807][DOWN]"

    .line 772
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    sget p1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->actualX:I

    int-to-float p1, p1

    sget v1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->actualY:I

    int-to-float v1, v1

    invoke-direct {p0, v0, p1, v1}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->startThread2(IFF)V

    goto :goto_3

    .line 774
    :cond_6
    iget p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preAction_1:I

    if-eq p1, v1, :cond_8

    iget p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->curMouseX:I

    iget v2, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preMouseX:I

    if-ne p1, v2, :cond_7

    iget p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->curMouseY:I

    iget v2, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preMouseY:I

    if-eq p1, v2, :cond_8

    .line 776
    :cond_7
    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->isMouseInMoveRange()Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "QZ_MOUSE_LOG"

    const-string v1, "[\u9f20\u6807][DOWN][MOVE]"

    .line 777
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    sget p1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->actualX:I

    int-to-float p1, p1

    sget v1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->actualY:I

    int-to-float v1, v1

    invoke-direct {p0, v0, p1, v1}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->startThread2(IFF)V

    goto :goto_3

    .line 779
    :cond_8
    iget p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->curActionMouse:I

    if-ne p1, v1, :cond_a

    iget p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->curMouseX:I

    iget v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preMouseX:I

    if-ne p1, v0, :cond_9

    iget p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->curMouseY:I

    iget v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preMouseY:I

    if-eq p1, v0, :cond_a

    .line 781
    :cond_9
    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->isMouseInMoveRange()Z

    move-result p1

    if-eqz p1, :cond_a

    const-string p1, "QZ_MOUSE_LOG"

    const-string v0, "[\u9f20\u6807][ONLY][MOVE]"

    .line 782
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    :cond_a
    :goto_3
    iget p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->curActionMouse:I

    iput p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preActionMouse:I

    .line 785
    iget p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->curMouseX:I

    iput p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preMouseX:I

    .line 786
    iget p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->curMouseY:I

    iput p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preMouseY:I

    const-string p1, "[\u9f20\u6807]"

    const-string v0, "DRAW POINTER INININ!-!-!-!-!-!-!-!"

    .line 787
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "[\u9f20\u6807]"

    const-string v0, "DRAW POINTER OUTOUT!-!-!-!-!-!-!-!"

    .line 790
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 791
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public processTouchInfo([B)V
    .locals 11

    .line 200
    iget-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->isNeedDisableTouch:Z

    if-eqz v0, :cond_0

    return-void

    .line 203
    :cond_0
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->getCurrentAction_1([B)I

    .line 204
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->getCurrentAction_2([B)I

    const/4 v0, 0x3

    .line 205
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x4

    .line 206
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x5

    .line 207
    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    const/4 v4, 0x6

    .line 208
    aget-byte v5, p1, v4

    and-int/lit16 v5, v5, 0xff

    const/4 v6, 0x7

    .line 209
    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x8

    .line 210
    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    const/16 v8, 0x9

    .line 211
    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    const/16 v9, 0xa

    .line 212
    aget-byte p1, p1, v9

    and-int/lit16 p1, p1, 0xff

    mul-int/lit16 v0, v0, 0x100

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 213
    iput v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->x1:F

    mul-int/lit16 v3, v3, 0x100

    add-int/2addr v3, v5

    int-to-float v0, v3

    .line 214
    iput v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->y1:F

    mul-int/lit16 v6, v6, 0x100

    add-int/2addr v6, v7

    int-to-float v0, v6

    .line 215
    iput v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->x2:F

    mul-int/lit16 v8, v8, 0x100

    add-int/2addr v8, p1

    int-to-float p1, v8

    .line 216
    iput p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->y2:F

    .line 217
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->contextNow:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "ratio_x"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->ratio_x:F

    .line 218
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->contextNow:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "ratio_y"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->ratio_y:F

    .line 219
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->contextNow:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "originalxy_x"

    const/4 v3, 0x0

    invoke-static {p1, v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->originalxy_x:I

    .line 220
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->contextNow:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "originalxy_y"

    invoke-static {p1, v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->originalxy_y:I

    .line 221
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->coordX:[F

    iget v5, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->x1:F

    iget v6, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->ratio_x:F

    mul-float/2addr v5, v6

    iget v7, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->originalxy_x:I

    int-to-float v8, v7

    add-float/2addr v5, v8

    aput v5, v0, v3

    .line 222
    iget-object v5, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->coordY:[F

    iget v8, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->y1:F

    iget v9, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->ratio_y:F

    mul-float/2addr v8, v9

    int-to-float v10, p1

    add-float/2addr v8, v10

    aput v8, v5, v3

    .line 223
    iget v8, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->x2:F

    mul-float/2addr v8, v6

    int-to-float v6, v7

    add-float/2addr v8, v6

    const/4 v6, 0x1

    aput v8, v0, v6

    .line 224
    iget v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->y2:F

    mul-float/2addr v0, v9

    int-to-float p1, p1

    add-float/2addr v0, p1

    aput v0, v5, v6

    move p1, v3

    :goto_0
    const/4 v0, 0x2

    if-ge p1, v0, :cond_1

    .line 226
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->pCoordsArray:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v5, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v5}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v5, v0, p1

    .line 227
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->pCoordsArray:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v0, v0, p1

    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 228
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->pCoordsArray:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v0, v0, p1

    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 229
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->pCoordsArray:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v0, v0, p1

    iget-object v5, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->coordX:[F

    aget v5, v5, p1

    iput v5, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 230
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->pCoordsArray:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v0, v0, p1

    iget-object v5, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->coordY:[F

    aget v5, v5, p1

    iput v5, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 231
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->pPropsArray:[Landroid/view/MotionEvent$PointerProperties;

    new-instance v5, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v5}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v5, v0, p1

    .line 232
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->pPropsArray:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v0, v0, p1

    iput p1, v0, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 233
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->pPropsArray:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v0, v0, p1

    iput v6, v0, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 235
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[\u5f53\u524d\u70b9X1]="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->coordX:[F

    aget v1, v1, v3

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "QZ_TOUCH_LOG"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[\u5f53\u524d\u70b9Y1]="

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->coordY:[F

    aget v5, v5, v3

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[\u5f53\u524d\u70b9X2]="

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->coordX:[F

    aget v5, v5, v6

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[\u5f53\u524d\u70b9Y2]="

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->coordY:[F

    aget v5, v5, v6

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[\u4e0a\u6b21\u70b9X1]="

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preCoordX:[F

    aget v5, v5, v3

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[\u4e0a\u6b21\u70b9Y1]="

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preCoordY:[F

    aget v5, v5, v3

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[\u4e0a\u6b21\u70b9X2]="

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preCoordX:[F

    aget v5, v5, v6

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[\u4e0a\u6b21\u70b9Y2]="

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preCoordY:[F

    aget v5, v5, v6

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[\u5f53\u524d\u70b9\u72b6\u6001P1]="

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->curAction_1:I

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[\u5f53\u524d\u70b9\u72b6\u6001P2]="

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->curAction_2:I

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[\u4e0a\u6b21\u70b9\u72b6\u6001P1]="

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preAction_1:I

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[\u4e0a\u6b21\u70b9\u72b6\u6001P2]]="

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preAction_2:I

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->curAction_1:I

    const/16 v5, 0x105

    if-nez p1, :cond_2

    iget p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->curAction_2:I

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->isNeedReportTwoPoint:Z

    if-nez p1, :cond_2

    const-string p1, "[\u4e24\u70b9\u6309\u4e0b][\u5f00\u59cb]2_POINT-----START"

    .line 250
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[\u4e24\u70b9\u6309\u4e0b][\u5f53\u524d\u72b6\u6001P1]="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->curAction_1:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[\u4e24\u70b9\u6309\u4e0b][\u5f53\u524d\u72b6\u6001P2]="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->curAction_2:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iput-boolean v6, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->isNeedReportTwoPoint:Z

    .line 254
    invoke-direct {p0, v6, v3}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->getMoionEvent(II)Landroid/view/MotionEvent;

    move-result-object p1

    .line 255
    invoke-direct {p0, p1}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->startThread(Landroid/view/MotionEvent;)V

    .line 256
    invoke-direct {p0, v0, v5}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->getMoionEvent(II)Landroid/view/MotionEvent;

    move-result-object p1

    .line 257
    invoke-direct {p0, p1}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->startThread(Landroid/view/MotionEvent;)V

    .line 258
    iput v3, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preAction_1:I

    .line 259
    iput v3, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preAction_2:I

    .line 260
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->coordX:[F

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preCoordX:[F

    .line 261
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->coordY:[F

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preCoordY:[F

    return-void

    .line 264
    :cond_2
    iget-boolean p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->isNeedReportTwoPoint:Z

    if-eqz p1, :cond_f

    const-string p1, "[\u4e24\u70b9\u6309\u4e0b][\u7ee7\u7eed\u76d1\u6d4b]"

    .line 265
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[\u4e24\u70b9\u6309\u4e0b][\u7ee7\u7eed\u76d1\u6d4b][\u5f53\u524d\u72b6\u6001P1] curAction_1="

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->curAction_1:I

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[\u4e24\u70b9\u6309\u4e0b][\u7ee7\u7eed\u76d1\u6d4b][\u5f53\u524d\u72b6\u6001P2] curAction_2="

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->curAction_2:I

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[\u4e24\u70b9\u6309\u4e0b][\u7ee7\u7eed\u76d1\u6d4b][\u4e0a\u6b21\u72b6\u6001P1] preAction_1="

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preAction_1:I

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[\u4e24\u70b9\u6309\u4e0b][\u7ee7\u7eed\u76d1\u6d4b][\u4e0a\u6b21\u72b6\u6001P2] preAction_2="

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preAction_2:I

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->isPointOneDownSame()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->isPointTwoLeaving()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "[\u4e24\u70b9\u6309\u4e0b][\u7ee7\u7eed\u76d1\u6d4b][\u70b91:KEEP DOWN \u70b92:LEVAVE]"

    .line 271
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x106

    .line 272
    invoke-direct {p0, v0, p1}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->getMoionEvent(II)Landroid/view/MotionEvent;

    move-result-object p1

    .line 273
    invoke-direct {p0, p1}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->startThread(Landroid/view/MotionEvent;)V

    .line 274
    iput-boolean v6, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->isTwoPointLeaveSecondOne:Z

    .line 275
    iput-boolean v6, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->isNeedReportTwoPoint:Z

    goto/16 :goto_1

    .line 276
    :cond_3
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->isPointTwoDownSame()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->isPointOneLeaving()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "[\u4e24\u70b9\u6309\u4e0b][\u7ee7\u7eed\u76d1\u6d4b][\u70b91:LEAVE \u70b92:KEEP DOWN]"

    .line 277
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-direct {p0, v0, v4}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->getMoionEvent(II)Landroid/view/MotionEvent;

    move-result-object p1

    .line 279
    invoke-direct {p0, p1}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->startThread(Landroid/view/MotionEvent;)V

    .line 280
    iput-boolean v6, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->isTwoPointLeaveFirstOne:Z

    .line 281
    iput-boolean v6, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->isNeedReportTwoPoint:Z

    goto/16 :goto_1

    .line 282
    :cond_4
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->isPointTwoKeepDown()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->isPointOneMoving()Z

    move-result p1

    if-nez p1, :cond_7

    .line 283
    :cond_5
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->isPointOneKeepDown()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->isPointTwoMoving()Z

    move-result p1

    if-nez p1, :cond_7

    .line 284
    :cond_6
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->isPointOneMoving()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->isPointTwoMoving()Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_7
    const-string p1, "[\u4e24\u70b9\u6309\u4e0b][\u7ee7\u7eed\u76d1\u6d4b][\u70b91:\u70b92:MOVE]"

    .line 286
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-direct {p0, v0, v0}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->getMoionEvent(II)Landroid/view/MotionEvent;

    move-result-object p1

    .line 288
    invoke-direct {p0, p1}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->startThread(Landroid/view/MotionEvent;)V

    .line 289
    iput-boolean v6, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->isNeedReportTwoPoint:Z

    goto/16 :goto_1

    .line 290
    :cond_8
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->isPointTwoDownSame()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-boolean p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->isTwoPointLeaveFirstOne:Z

    if-eqz p1, :cond_9

    iget p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->curAction_1:I

    if-nez p1, :cond_9

    const-string p1, "[\u4e24\u70b9\u6309\u4e0b][\u7ee7\u7eed\u76d1\u6d4b][\u70b91:LEAVE AND DOWN AGAIN \u70b92:KEEP DOWN] "

    .line 292
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-direct {p0, v0, v2}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->getMoionEvent(II)Landroid/view/MotionEvent;

    move-result-object p1

    .line 294
    invoke-direct {p0, p1}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->startThread(Landroid/view/MotionEvent;)V

    .line 295
    iput-boolean v6, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->isNeedReportTwoPoint:Z

    goto :goto_1

    .line 296
    :cond_9
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->isPointOneDownSame()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-boolean p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->isTwoPointLeaveSecondOne:Z

    if-eqz p1, :cond_a

    iget p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->curAction_2:I

    if-nez p1, :cond_a

    const-string p1, "QZ_TOUCH"

    const-string v1, "[\u4e24\u70b9\u6309\u4e0b][\u7ee7\u7eed\u76d1\u6d4b] [\u70b91:KEEP DOWN \u70b92:LEAVE AND DOWN AGAIN]"

    .line 298
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-direct {p0, v0, v5}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->getMoionEvent(II)Landroid/view/MotionEvent;

    move-result-object p1

    .line 300
    invoke-direct {p0, p1}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->startThread(Landroid/view/MotionEvent;)V

    .line 301
    iput-boolean v6, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->isNeedReportTwoPoint:Z

    goto :goto_1

    .line 302
    :cond_a
    iget-boolean p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->isTwoPointLeaveFirstOne:Z

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->isPointTwoLeaving()Z

    move-result p1

    if-nez p1, :cond_c

    :cond_b
    iget-boolean p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->isTwoPointLeaveSecondOne:Z

    if-eqz p1, :cond_d

    .line 303
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->isPointOneLeaving()Z

    move-result p1

    if-eqz p1, :cond_d

    :cond_c
    const-string p1, "[\u4e24\u70b9\u6309\u4e0b][\u7ee7\u7eed\u76d1\u6d4b][\u70b91:LEAVE \u70b92:LEAVE]"

    .line 304
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-direct {p0, v6, v6}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->getMoionEvent(II)Landroid/view/MotionEvent;

    move-result-object p1

    .line 306
    invoke-direct {p0, p1}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->startThread(Landroid/view/MotionEvent;)V

    .line 307
    iput-boolean v3, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->isNeedReportTwoPoint:Z

    goto :goto_1

    .line 308
    :cond_d
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->isPointTwoLeaving()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->isPointOneLeaving()Z

    move-result p1

    if-eqz p1, :cond_e

    const-string p1, "[\u4e24\u70b9\u6309\u4e0b][\u7ee7\u7eed\u76d1\u6d4b][\u70b91: \u70b92:BOTH LEAVE]"

    .line 309
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-direct {p0, v6, v6}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->getMoionEvent(II)Landroid/view/MotionEvent;

    move-result-object p1

    .line 311
    invoke-direct {p0, p1}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->startThread(Landroid/view/MotionEvent;)V

    .line 312
    iput-boolean v3, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->isNeedReportTwoPoint:Z

    .line 314
    :cond_e
    :goto_1
    iget p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->curAction_1:I

    iput p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preAction_1:I

    .line 315
    iget p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->curAction_2:I

    iput p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preAction_2:I

    goto :goto_3

    .line 317
    :cond_f
    iget p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->curAction_1:I

    if-ne p1, v6, :cond_10

    const-string p1, "[\u5355\u70b9][UP]"

    .line 318
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-direct {p0, v6, v6}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->getMoionEvent(II)Landroid/view/MotionEvent;

    move-result-object p1

    .line 320
    invoke-direct {p0, p1}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->startThread(Landroid/view/MotionEvent;)V

    goto :goto_2

    .line 321
    :cond_10
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->isPointOneTouching()Z

    move-result p1

    if-eqz p1, :cond_12

    const-string p1, "[\u5355\u70b9][DOWN]"

    .line 322
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    sget-boolean p1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->isInLearningPage:Z

    if-eqz p1, :cond_11

    .line 324
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "xxert"

    .line 325
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    iget v1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->x1:F

    const-string/jumbo v2, "x"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 327
    iget v1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->y1:F

    const-string/jumbo v2, "y"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 328
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->contextNow:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 330
    :cond_11
    invoke-direct {p0, v6, v3}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->getMoionEvent(II)Landroid/view/MotionEvent;

    move-result-object p1

    .line 331
    invoke-direct {p0, p1}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->startThread(Landroid/view/MotionEvent;)V

    goto :goto_2

    .line 332
    :cond_12
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->isPointOneMoving()Z

    move-result p1

    if-eqz p1, :cond_13

    const-string p1, "[\u5355\u70b9][MOVE]"

    .line 333
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-direct {p0, v6, v0}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->getMoionEvent(II)Landroid/view/MotionEvent;

    move-result-object p1

    .line 335
    invoke-direct {p0, p1}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->startThread(Landroid/view/MotionEvent;)V

    .line 337
    :cond_13
    :goto_2
    iget p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->curAction_1:I

    iput p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preAction_1:I

    .line 339
    :goto_3
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->coordX:[F

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preCoordX:[F

    .line 340
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->coordY:[F

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preCoordY:[F

    return-void
.end method

.method public processTouchInfoExtra([B)V
    .locals 9

    .line 653
    iget-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->isNeedDisableTouch:Z

    if-eqz v0, :cond_0

    return-void

    .line 656
    :cond_0
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->getCurrentAction_1([B)I

    .line 657
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->getCurrentAction_2([B)I

    const/4 v0, 0x3

    .line 658
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x4

    .line 659
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x5

    .line 660
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x6

    .line 661
    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    const/4 v4, 0x7

    .line 662
    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x8

    .line 663
    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x9

    .line 664
    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0xa

    .line 665
    aget-byte p1, p1, v7

    and-int/lit16 p1, p1, 0xff

    mul-int/lit16 v0, v0, 0x100

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 666
    iput v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->x1:F

    mul-int/lit16 v2, v2, 0x100

    add-int/2addr v2, v3

    int-to-float v0, v2

    .line 667
    iput v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->y1:F

    mul-int/lit16 v4, v4, 0x100

    add-int/2addr v4, v5

    int-to-float v0, v4

    .line 668
    iput v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->x2:F

    mul-int/lit16 v6, v6, 0x100

    add-int/2addr v6, p1

    int-to-float p1, v6

    .line 669
    iput p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->y2:F

    .line 670
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->contextNow:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "ratio_x"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->ratio_x:F

    .line 671
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->contextNow:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "ratio_y"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->ratio_y:F

    .line 672
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->contextNow:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "originalxy_x"

    const/4 v2, 0x0

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->originalxy_x:I

    .line 673
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->contextNow:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "originalxy_y"

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->originalxy_y:I

    .line 674
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->coordX:[F

    iget v3, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->x1:F

    iget v4, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->ratio_x:F

    mul-float/2addr v3, v4

    iget v5, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->originalxy_x:I

    int-to-float v6, v5

    add-float/2addr v3, v6

    aput v3, v0, v2

    .line 675
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->coordY:[F

    iget v6, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->y1:F

    iget v7, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->ratio_y:F

    mul-float/2addr v6, v7

    int-to-float v8, p1

    add-float/2addr v6, v8

    aput v6, v3, v2

    .line 676
    iget v6, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->x2:F

    mul-float/2addr v6, v4

    int-to-float v4, v5

    add-float/2addr v6, v4

    const/4 v4, 0x1

    aput v6, v0, v4

    .line 677
    iget v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->y2:F

    mul-float/2addr v0, v7

    int-to-float p1, p1

    add-float/2addr v0, p1

    aput v0, v3, v4

    move p1, v2

    :goto_0
    const/4 v0, 0x2

    if-ge p1, v0, :cond_1

    .line 679
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->pCoordsArray:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v3, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v3, v0, p1

    .line 680
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->pCoordsArray:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v0, v0, p1

    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 681
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->pCoordsArray:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v0, v0, p1

    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 682
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->pCoordsArray:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v0, v0, p1

    iget-object v3, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->coordX:[F

    aget v3, v3, p1

    iput v3, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 683
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->pCoordsArray:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v0, v0, p1

    iget-object v3, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->coordY:[F

    aget v3, v3, p1

    iput v3, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 684
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->pPropsArray:[Landroid/view/MotionEvent$PointerProperties;

    new-instance v3, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v3, v0, p1

    .line 685
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->pPropsArray:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v0, v0, p1

    iput p1, v0, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 686
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->pPropsArray:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v0, v0, p1

    iput v4, v0, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 688
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[\u5f53\u524d\u70b9X1]="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->coordX:[F

    aget v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "QZ_TOUCH_LOG"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[\u5f53\u524d\u70b9Y1]="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->coordY:[F

    aget v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[\u5f53\u524d\u70b9X2]="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->coordX:[F

    aget v3, v3, v4

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[\u5f53\u524d\u70b9Y2]="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->coordY:[F

    aget v3, v3, v4

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[\u4e0a\u6b21\u70b9X1]="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preCoordX:[F

    aget v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[\u4e0a\u6b21\u70b9Y1]="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preCoordY:[F

    aget v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[\u4e0a\u6b21\u70b9X2]="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preCoordX:[F

    aget v3, v3, v4

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[\u4e0a\u6b21\u70b9Y2]="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preCoordY:[F

    aget v3, v3, v4

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[\u5f53\u524d\u70b9\u72b6\u6001P1]="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->curAction_1:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[\u5f53\u524d\u70b9\u72b6\u6001P2]="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->curAction_2:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[\u4e0a\u6b21\u70b9\u72b6\u6001P1]="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preAction_1:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[\u4e0a\u6b21\u70b9\u72b6\u6001P2]]="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preAction_2:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    iget p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->curAction_1:I

    if-ne p1, v4, :cond_2

    const-string p1, "[\u5355\u70b9][UP]"

    .line 702
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->coordX:[F

    aget p1, p1, v2

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->coordY:[F

    aget v1, v1, v2

    invoke-direct {p0, v2, p1, v1}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->startThread2(IFF)V

    .line 704
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->coordX:[F

    aget p1, p1, v2

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->coordY:[F

    aget v1, v1, v2

    invoke-direct {p0, v4, p1, v1}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->startThread2(IFF)V

    goto :goto_1

    .line 705
    :cond_2
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->isPointOneTouching()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 706
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->coordX:[F

    aget p1, p1, v2

    iget-object v3, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->coordY:[F

    aget v3, v3, v2

    invoke-direct {p0, v2, p1, v3}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->startThread2(IFF)V

    const-string p1, "[\u5355\u70b9][DOWN]"

    .line 707
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    sget-boolean p1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->isInLearningPage:Z

    if-eqz p1, :cond_4

    .line 709
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "xxert"

    .line 710
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 711
    iget v1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->x1:F

    const-string/jumbo v2, "x"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 712
    iget v1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->y1:F

    const-string/jumbo v2, "y"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 713
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->contextNow:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1

    .line 715
    :cond_3
    iget p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preAction_1:I

    if-eq p1, v4, :cond_4

    const-string p1, "[\u5355\u70b9][MOVE]"

    .line 716
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->coordX:[F

    aget p1, p1, v2

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->coordY:[F

    aget v1, v1, v4

    invoke-direct {p0, v2, p1, v1}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->startThread2(IFF)V

    .line 719
    :cond_4
    :goto_1
    iget p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->curAction_1:I

    iput p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preAction_1:I

    .line 720
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->coordX:[F

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preCoordX:[F

    .line 721
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->coordY:[F

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->preCoordY:[F

    return-void
.end method

.method public startTest()V
    .locals 1

    .line 588
    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch$2;

    invoke-direct {v0, p0}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch$2;-><init>(Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;)V

    .line 611
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
