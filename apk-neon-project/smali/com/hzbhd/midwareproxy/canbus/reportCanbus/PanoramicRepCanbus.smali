.class public Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;
.super Ljava/lang/Object;
.source "PanoramicRepCanbus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360NewCar;,
        Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360CamNew;,
        Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360CamOld;,
        Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;
    }
.end annotation


# static fields
.field private static final GA3:I = 0x4

.field private static final GA3S:I = 0x5

.field private static final GA4:I = 0xe

.field private static final GA4_2018:I = 0x0

.field private static final GA4_HYBRID_2018:I = 0x1

.field private static final GA6:I = 0x8

.field private static final GAXL:I = 0xa

.field private static final GE3_2018:I = 0x2

.field private static final GS3:I = 0xc

.field private static final GS4:I = 0x9

.field private static final GS4_2018:I = 0x3

.field private static final GS5:I = 0x6

.field private static final GS5_SUPER:I = 0x7

.field private static final GS7:I = 0xd

.field private static final GS8:I = 0xb

.field static mRadio:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;


# instance fields
.field private reportNew:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360CamNew;

.field private reportNewCar:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360NewCar;

.field private reportOld:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360CamOld;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;

    invoke-direct {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;-><init>()V

    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->mRadio:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->reportNew:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360CamNew;

    .line 33
    iput-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->reportOld:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360CamOld;

    .line 34
    iput-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->reportNewCar:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360NewCar;

    return-void
.end method

.method static synthetic access$000(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;Landroid/content/Context;Landroid/view/MotionEvent;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;B[B)V
    .locals 0

    .line 12
    invoke-direct/range {p0 .. p5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->sndCamera360KeyWithoutKeyStatus(Landroid/content/Context;Landroid/view/MotionEvent;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;B[B)V

    return-void
.end method

.method static synthetic access$100(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;Landroid/content/Context;Landroid/view/MotionEvent;I[B)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->sndCamera360Coord(Landroid/content/Context;Landroid/view/MotionEvent;I[B)V

    return-void
.end method

.method static synthetic access$1000(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;Landroid/content/Context;Landroid/view/MotionEvent;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->sendTrumpchiBottomBtn2(Landroid/content/Context;Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;Landroid/content/Context;Landroid/view/MotionEvent;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->sendTrumpchiBottomBtn3(Landroid/content/Context;Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;Landroid/content/Context;Landroid/view/MotionEvent;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->sendTrumpchiBtnUp(Landroid/content/Context;Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;Landroid/content/Context;Landroid/view/MotionEvent;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->sendTrumpchiBtnDn(Landroid/content/Context;Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;Landroid/content/Context;Landroid/view/MotionEvent;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->sendTrumpchiBtnLeft(Landroid/content/Context;Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;Landroid/content/Context;Landroid/view/MotionEvent;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->sendTrumpchiBtnRight(Landroid/content/Context;Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;Landroid/content/Context;Landroid/view/MotionEvent;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->sendTrumpchiBtnOk(Landroid/content/Context;Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;[B[BLandroid/content/Context;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2, p3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->sndMcuDataTwoArray([B[BLandroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;Landroid/content/Context;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->isTouchInFront(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;Landroid/content/Context;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->isTouchInRear(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;Landroid/content/Context;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->isTouchInLeft(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;Landroid/content/Context;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->isTouchInRight(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;Landroid/content/Context;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->isInThrumpchiRightTouchArea(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;Landroid/content/Context;Landroid/view/MotionEvent;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->sendThrumpchiRightTouchCoord(Landroid/content/Context;Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$900(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;Landroid/content/Context;Landroid/view/MotionEvent;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->sendTrumpchiBottomBtn1(Landroid/content/Context;Landroid/view/MotionEvent;)V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;
    .locals 2

    const-class v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;

    monitor-enter v0

    .line 36
    :try_start_0
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->mRadio:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;

    if-nez v1, :cond_0

    .line 37
    new-instance v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;

    invoke-direct {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;-><init>()V

    sput-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->mRadio:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;

    .line 39
    :cond_0
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->mRadio:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private isHdDisp(Landroid/content/Context;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/hzbhd/midware/proxy/R$dimen;->dp1024:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    const/16 p2, 0x321

    if-ge p1, p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method private isInThrumpchiRightTouchArea(Landroid/content/Context;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 159
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    .line 160
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 161
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/hzbhd/midware/proxy/R$dimen;->dp1024:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    mul-int/lit8 p1, p1, 0x7

    .line 162
    div-int/lit8 p1, p1, 0xa

    int-to-float p1, p1

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isTouchInFront(Landroid/content/Context;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 279
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    .line 280
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    .line 281
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/hzbhd/midware/proxy/R$dimen;->dp1024:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 282
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v3, Lcom/hzbhd/midware/proxy/R$dimen;->dp600:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    const/high16 v3, 0x40400000    # 3.0f

    div-float v4, v2, v3

    cmpl-float v4, v0, v4

    const/4 v5, 0x0

    if-ltz v4, :cond_0

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v2, v4

    div-float/2addr v2, v3

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_0

    div-float/2addr p1, v4

    cmpg-float p1, v1, p1

    if-gtz p1, :cond_0

    .line 285
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    return p2

    :cond_0
    return v5
.end method

.method private isTouchInLeft(Landroid/content/Context;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 309
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    .line 310
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/hzbhd/midware/proxy/R$dimen;->dp1024:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    const/4 v2, 0x0

    if-ltz v1, :cond_0

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr p1, v1

    cmpg-float p1, v0, p1

    if-gez p1, :cond_0

    .line 312
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    return p2

    :cond_0
    return v2
.end method

.method private isTouchInRear(Landroid/content/Context;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 294
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    .line 295
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    .line 296
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/hzbhd/midware/proxy/R$dimen;->dp1024:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 297
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v3, Lcom/hzbhd/midware/proxy/R$dimen;->dp600:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    const/high16 v3, 0x40400000    # 3.0f

    div-float v4, v2, v3

    cmpl-float v4, v0, v4

    const/4 v5, 0x0

    if-ltz v4, :cond_0

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v2, v4

    div-float/2addr v2, v3

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    div-float v0, p1, v4

    cmpl-float v0, v1, v0

    if-lez v0, :cond_0

    cmpg-float p1, v1, p1

    if-gtz p1, :cond_0

    .line 300
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    return p2

    :cond_0
    return v5
.end method

.method private isTouchInRight(Landroid/content/Context;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 321
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    .line 322
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/hzbhd/midware/proxy/R$dimen;->dp1024:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, p1

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    cmpl-float v1, v0, v1

    const/4 v2, 0x0

    if-ltz v1, :cond_0

    cmpg-float p1, v0, p1

    if-gez p1, :cond_0

    .line 324
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    return p2

    :cond_0
    return v2
.end method

.method private sendThrumpchiRightTouchCoord(Landroid/content/Context;Landroid/view/MotionEvent;)V
    .locals 6

    .line 171
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    .line 172
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    .line 173
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/hzbhd/midware/proxy/R$dimen;->dp1024:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 174
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v3, Lcom/hzbhd/midware/proxy/R$dimen;->dp600:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    const/high16 v3, 0x40e00000    # 7.0f

    mul-float/2addr v3, v2

    const/high16 v4, 0x41200000    # 10.0f

    div-float/2addr v3, v4

    const/high16 v4, 0x44a00000    # 1280.0f

    div-float/2addr v4, v2

    float-to-int v2, v4

    const/high16 v4, 0x44340000    # 720.0f

    div-float/2addr v4, p1

    float-to-int p1, v4

    sub-float/2addr v0, v3

    int-to-float v2, v2

    mul-float/2addr v0, v2

    const/high16 v2, 0x44610000    # 900.0f

    add-float/2addr v0, v2

    float-to-int v0, v0

    int-to-float p1, p1

    mul-float/2addr v1, p1

    float-to-int p1, v1

    .line 180
    div-int/lit8 v1, p1, 0x10

    .line 181
    rem-int/lit8 p1, p1, 0x10

    const/4 v2, 0x4

    shl-int/2addr p1, v2

    div-int/lit16 v3, v0, 0x100

    or-int/2addr p1, v3

    .line 182
    rem-int/lit16 v0, v0, 0x100

    .line 183
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v3, 0x1

    if-ne p2, v3, :cond_0

    const/4 p2, 0x6

    new-array p2, p2, [B

    const/4 v4, 0x0

    const/16 v5, 0x16

    aput-byte v5, p2, v4

    const/16 v4, -0x37

    aput-byte v4, p2, v3

    const/4 v3, 0x2

    aput-byte v3, p2, v3

    const/4 v3, 0x3

    int-to-byte v1, v1

    aput-byte v1, p2, v3

    int-to-byte p1, p1

    aput-byte p1, p2, v2

    const/4 p1, 0x5

    int-to-byte v0, v0

    aput-byte v0, p2, p1

    .line 184
    invoke-static {p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    :cond_0
    return-void
.end method

.method private sendTrumpchiBottomBtn1(Landroid/content/Context;Landroid/view/MotionEvent;)V
    .locals 3

    .line 188
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    .line 189
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    .line 190
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/hzbhd/midware/proxy/R$dimen;->dp239:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_0

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_0

    const p1, 0x44048000    # 530.0f

    cmpl-float p1, v1, p1

    if-ltz p1, :cond_0

    .line 192
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x6

    new-array p1, p1, [B

    .line 193
    fill-array-data p1, :array_0

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 1
        0x16t
        -0x37t
        0x1t
        0x6t
        0x0t
        0x0t
    .end array-data
.end method

.method private sendTrumpchiBottomBtn2(Landroid/content/Context;Landroid/view/MotionEvent;)V
    .locals 3

    .line 198
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    .line 199
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    .line 200
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/hzbhd/midware/proxy/R$dimen;->dp239:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    cmpl-float v2, v0, p1

    if-lez v2, :cond_0

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr p1, v2

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_0

    const p1, 0x44048000    # 530.0f

    cmpl-float p1, v1, p1

    if-ltz p1, :cond_0

    .line 202
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x6

    new-array p1, p1, [B

    .line 203
    fill-array-data p1, :array_0

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 1
        0x16t
        -0x37t
        0x1t
        0x7t
        0x0t
        0x0t
    .end array-data
.end method

.method private sendTrumpchiBottomBtn3(Landroid/content/Context;Landroid/view/MotionEvent;)V
    .locals 3

    .line 208
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    .line 209
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    .line 210
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/hzbhd/midware/proxy/R$dimen;->dp239:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, p1

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr p1, v2

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_0

    const p1, 0x44048000    # 530.0f

    cmpl-float p1, v1, p1

    if-ltz p1, :cond_0

    .line 212
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x6

    new-array p1, p1, [B

    .line 213
    fill-array-data p1, :array_0

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    :cond_0
    return-void

    :array_0
    .array-data 1
        0x16t
        -0x37t
        0x1t
        0x8t
        0x0t
        0x0t
    .end array-data
.end method

.method private sendTrumpchiBtnDn(Landroid/content/Context;Landroid/view/MotionEvent;)V
    .locals 3

    .line 228
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 229
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    .line 230
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/hzbhd/midware/proxy/R$dimen;->dp366:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 231
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/hzbhd/midware/proxy/R$dimen;->dp485:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_0

    .line 233
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x6

    new-array p1, p1, [B

    .line 234
    fill-array-data p1, :array_0

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    :cond_0
    return-void

    :array_0
    .array-data 1
        0x16t
        -0x37t
        0x1t
        0x2t
        0x0t
        0x0t
    .end array-data
.end method

.method private sendTrumpchiBtnLeft(Landroid/content/Context;Landroid/view/MotionEvent;)V
    .locals 5

    .line 239
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    .line 240
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    .line 241
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/hzbhd/midware/proxy/R$dimen;->dp256:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 242
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/hzbhd/midware/proxy/R$dimen;->dp350:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 244
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v4, Lcom/hzbhd/midware/proxy/R$dimen;->dp282:I

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_0

    .line 246
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x6

    new-array p1, p1, [B

    .line 247
    fill-array-data p1, :array_0

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    :cond_0
    return-void

    :array_0
    .array-data 1
        0x16t
        -0x37t
        0x1t
        0x3t
        0x0t
        0x0t
    .end array-data
.end method

.method private sendTrumpchiBtnOk(Landroid/content/Context;Landroid/view/MotionEvent;)V
    .locals 6

    .line 266
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    .line 267
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    .line 268
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/hzbhd/midware/proxy/R$dimen;->dp256:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 269
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/hzbhd/midware/proxy/R$dimen;->dp366:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 270
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/hzbhd/midware/proxy/R$dimen;->dp282:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 271
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v5, Lcom/hzbhd/midware/proxy/R$dimen;->dp427:I

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_0

    cmpl-float v1, v0, v4

    if-lez v1, :cond_0

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_0

    .line 273
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x6

    new-array p1, p1, [B

    .line 274
    fill-array-data p1, :array_0

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 1
        0x16t
        -0x37t
        0x1t
        0x5t
        0x0t
        0x0t
    .end array-data
.end method

.method private sendTrumpchiBtnRight(Landroid/content/Context;Landroid/view/MotionEvent;)V
    .locals 6

    .line 252
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    .line 253
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    .line 254
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/hzbhd/midware/proxy/R$dimen;->dp256:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 255
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/hzbhd/midware/proxy/R$dimen;->dp350:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 256
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/hzbhd/midware/proxy/R$dimen;->dp427:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 257
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v5, Lcom/hzbhd/midware/proxy/R$dimen;->dp716:I

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_0

    cmpl-float v1, v0, v4

    if-lez v1, :cond_0

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_0

    .line 259
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x6

    new-array p1, p1, [B

    .line 260
    fill-array-data p1, :array_0

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 1
        0x16t
        -0x37t
        0x1t
        0x4t
        0x0t
        0x0t
    .end array-data
.end method

.method private sendTrumpchiBtnUp(Landroid/content/Context;Landroid/view/MotionEvent;)V
    .locals 2

    .line 218
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 219
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    .line 220
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/hzbhd/midware/proxy/R$dimen;->dp256:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_0

    .line 222
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x6

    new-array p1, p1, [B

    .line 223
    fill-array-data p1, :array_0

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    :cond_0
    return-void

    :array_0
    .array-data 1
        0x16t
        -0x37t
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data
.end method

.method private sndCamera360Coord(Landroid/content/Context;Landroid/view/MotionEvent;I[B)V
    .locals 5

    .line 342
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    .line 343
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    .line 345
    invoke-direct {p0, p1, p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->isHdDisp(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_0

    int-to-float p1, p3

    mul-float/2addr v0, p1

    const/high16 p3, 0x44480000    # 800.0f

    div-float/2addr v0, p3

    mul-float/2addr v1, p1

    const/high16 p1, 0x43f00000    # 480.0f

    goto :goto_0

    :cond_0
    int-to-float p1, p3

    mul-float/2addr v0, p1

    const/high16 p3, 0x44800000    # 1024.0f

    div-float/2addr v0, p3

    mul-float/2addr v1, p1

    const/high16 p1, 0x44160000    # 600.0f

    :goto_0
    div-float/2addr v1, p1

    .line 352
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p3, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez p1, :cond_1

    new-array p1, v2, [B

    float-to-int p2, v0

    int-to-byte p2, p2

    aput-byte p2, p1, v3

    float-to-int p2, v1

    int-to-byte p2, p2

    aput-byte p2, p1, v4

    aput-byte v4, p1, p3

    .line 353
    invoke-static {p4, p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object p4

    goto :goto_1

    .line 354
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v4, :cond_2

    new-array p1, v2, [B

    float-to-int p2, v0

    int-to-byte p2, p2

    aput-byte p2, p1, v3

    float-to-int p2, v1

    int-to-byte p2, p2

    aput-byte p2, p1, v4

    aput-byte v3, p1, p3

    .line 355
    invoke-static {p4, p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object p4

    :cond_2
    :goto_1
    if-eqz p4, :cond_3

    .line 359
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-void
.end method

.method private sndCamera360Key(Landroid/content/Context;Landroid/view/MotionEvent;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;ZB[B)V
    .locals 7

    .line 86
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 87
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x1

    if-eqz p4, :cond_0

    new-array p4, v2, [B

    const/4 v3, 0x0

    aput-byte p5, p4, v3

    .line 90
    invoke-static {p6, p4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object p6

    .line 95
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->isHdDisp(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result p1

    const/16 p2, 0xdc

    if-nez p1, :cond_1

    const/16 p1, 0x78

    const/16 p4, 0x320

    const/16 p5, 0x1e0

    move v3, p5

    move p5, p4

    move p4, p1

    move p1, p2

    goto :goto_0

    :cond_1
    const/16 p1, 0x104

    const/16 p4, 0x8c

    const/16 p5, 0x400

    const/16 v3, 0x258

    :goto_0
    mul-int/lit8 v4, p5, 0x3

    const/4 v5, 0x4

    .line 106
    div-int/2addr v4, v5

    sub-int/2addr v4, p1

    add-int/lit8 v4, v4, -0x3c

    if-nez p6, :cond_2

    return-void

    .line 112
    :cond_2
    :try_start_0
    sget-object v6, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY:[I

    invoke-virtual {p3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;->ordinal()I

    move-result p3

    aget p3, v6, p3

    if-eq p3, v2, :cond_7

    const/4 v2, 0x2

    if-eq p3, v2, :cond_6

    const/4 v2, 0x3

    if-eq p3, v2, :cond_5

    if-eq p3, v5, :cond_4

    const/4 p1, 0x5

    if-eq p3, p1, :cond_3

    goto/16 :goto_1

    :cond_3
    if-lt v0, v4, :cond_8

    add-int/2addr v4, p2

    if-gt v0, v4, :cond_8

    sub-int p1, v3, p4

    if-lt v1, p1, :cond_8

    if-gt v1, v3, :cond_8

    .line 142
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    invoke-virtual {p1, p6}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    .line 143
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->playBeep()V

    goto :goto_1

    :cond_4
    sub-int p1, p5, p1

    if-lt v0, p1, :cond_8

    if-gt v0, p5, :cond_8

    sub-int p1, v3, p4

    if-lt v1, p1, :cond_8

    if-gt v1, v3, :cond_8

    .line 136
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    invoke-virtual {p1, p6}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    .line 137
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->playBeep()V

    goto :goto_1

    :cond_5
    if-ltz v0, :cond_8

    if-gt v0, p1, :cond_8

    sub-int p1, v3, p4

    if-lt v1, p1, :cond_8

    if-gt v1, v3, :cond_8

    .line 130
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    invoke-virtual {p1, p6}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    .line 131
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->playBeep()V

    goto :goto_1

    :cond_6
    sub-int p1, p5, p1

    if-lt v0, p1, :cond_8

    if-gt v0, p5, :cond_8

    if-ltz v1, :cond_8

    if-gt v1, p4, :cond_8

    .line 122
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    invoke-virtual {p1, p6}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    .line 123
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->playBeep()V

    goto :goto_1

    :cond_7
    if-ltz v0, :cond_8

    if-gt v0, p1, :cond_8

    if-ltz v1, :cond_8

    if-gt v1, p4, :cond_8

    .line 115
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    invoke-virtual {p1, p6}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    .line 116
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->playBeep()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_8
    :goto_1
    return-void
.end method

.method private sndCamera360KeyAndKeyStatus(Landroid/content/Context;Landroid/view/MotionEvent;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;B[B)V
    .locals 7

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move-object v6, p5

    .line 155
    invoke-direct/range {v0 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->sndCamera360Key(Landroid/content/Context;Landroid/view/MotionEvent;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;ZB[B)V

    return-void
.end method

.method private sndCamera360KeyWithoutKeyStatus(Landroid/content/Context;Landroid/view/MotionEvent;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;B[B)V
    .locals 7

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move-object v6, p5

    .line 152
    invoke-direct/range {v0 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->sndCamera360Key(Landroid/content/Context;Landroid/view/MotionEvent;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;ZB[B)V

    return-void
.end method

.method private sndCanCmd([B)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    .line 56
    invoke-static {v0, p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object p1

    .line 58
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 60
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private sndMcuDataTwoArray([B[BLandroid/content/Context;)V
    .locals 0

    .line 65
    :try_start_0
    invoke-static {p3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isCanbusCmdPorting(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 66
    invoke-direct {p0, p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->sndCanCmd([B)V

    goto :goto_0

    .line 68
    :cond_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reqCanbusInfo([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method


# virtual methods
.method public reportCanbusInfo(Landroid/view/MotionEvent;Landroid/content/Context;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1045
    invoke-static {p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isCanbusCmdPorting(Landroid/content/Context;)Z

    move-result v0

    const-string/jumbo v1, "reportCanbusInfo"

    if-eqz v0, :cond_1

    .line 1046
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->reportNew:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360CamNew;

    if-nez v0, :cond_0

    const-string/jumbo v0, "report360CamNew"

    .line 1047
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360CamNew;

    invoke-direct {v0, p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360CamNew;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;)V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->reportNew:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360CamNew;

    .line 1050
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->reportNew:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360CamNew;

    invoke-virtual {v0, p1, p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360CamNew;->reportCanbusInfo(Landroid/view/MotionEvent;Landroid/content/Context;)Z

    goto :goto_0

    .line 1052
    :cond_1
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->reportOld:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360CamOld;

    if-nez v0, :cond_2

    const-string/jumbo v0, "reportOld"

    .line 1053
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360CamOld;

    invoke-direct {v0, p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360CamOld;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;)V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->reportOld:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360CamOld;

    .line 1056
    :cond_2
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->reportOld:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360CamOld;

    invoke-virtual {v0, p1, p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360CamOld;->reportCanbusInfo(Landroid/view/MotionEvent;Landroid/content/Context;)Z

    .line 1059
    :goto_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->reportNewCar:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360NewCar;

    if-nez v0, :cond_3

    .line 1060
    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360NewCar;

    invoke-direct {v0, p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360NewCar;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;)V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->reportNewCar:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360NewCar;

    .line 1061
    invoke-virtual {v0, p1, p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360NewCar;->reportCanbusInfo(Landroid/view/MotionEvent;Landroid/content/Context;)Z

    move-result p1

    goto :goto_1

    .line 1063
    :cond_3
    invoke-virtual {v0, p1, p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360NewCar;->reportCanbusInfo(Landroid/view/MotionEvent;Landroid/content/Context;)Z

    move-result p1

    :goto_1
    return p1
.end method
