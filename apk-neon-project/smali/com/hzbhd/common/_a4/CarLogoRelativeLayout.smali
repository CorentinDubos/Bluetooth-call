.class public Lcom/hzbhd/common/_a4/CarLogoRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "CarLogoRelativeLayout.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private IDS:[I

.field private final TAG:Ljava/lang/String;

.field private currentPos:I

.field private firstX:F

.field private final iconStatus:Ljava/lang/String;

.field private iconView:Landroid/view/View;

.field private lastX:F

.field private mContext:Landroid/content/Context;

.field private mDetector:Landroid/view/GestureDetector;

.field private final mObserver:Landroid/database/ContentObserver;

.field private final mStatusHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, v0}, Lcom/hzbhd/common/_a4/CarLogoRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, p2, v0}, Lcom/hzbhd/common/_a4/CarLogoRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/hzbhd/common/_a4/CarLogoRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 67
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 22
    const-class p2, Lcom/hzbhd/common/_a4/CarLogoRelativeLayout;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/hzbhd/common/_a4/CarLogoRelativeLayout;->TAG:Ljava/lang/String;

    .line 24
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/hzbhd/common/_a4/CarLogoRelativeLayout;->mStatusHandler:Landroid/os/Handler;

    const-string p2, "com.carview.a4.car.icon"

    .line 25
    iput-object p2, p0, Lcom/hzbhd/common/_a4/CarLogoRelativeLayout;->iconStatus:Ljava/lang/String;

    const/16 p3, 0x16

    new-array p3, p3, [I

    .line 27
    sget p4, Lcom/hzbhd/common/ui/R$drawable;->__a4__car_0:I

    const/4 v0, 0x0

    aput p4, p3, v0

    sget p4, Lcom/hzbhd/common/ui/R$drawable;->__a4__car_1:I

    const/4 v1, 0x1

    aput p4, p3, v1

    sget p4, Lcom/hzbhd/common/ui/R$drawable;->__a4__car_2:I

    const/4 v1, 0x2

    aput p4, p3, v1

    sget p4, Lcom/hzbhd/common/ui/R$drawable;->__a4__car_3:I

    const/4 v1, 0x3

    aput p4, p3, v1

    sget p4, Lcom/hzbhd/common/ui/R$drawable;->__a4__car_4:I

    const/4 v1, 0x4

    aput p4, p3, v1

    sget p4, Lcom/hzbhd/common/ui/R$drawable;->__a4__car_5:I

    const/4 v1, 0x5

    aput p4, p3, v1

    sget p4, Lcom/hzbhd/common/ui/R$drawable;->__a4__car_6:I

    const/4 v1, 0x6

    aput p4, p3, v1

    sget p4, Lcom/hzbhd/common/ui/R$drawable;->__a4__car_7:I

    const/4 v1, 0x7

    aput p4, p3, v1

    sget p4, Lcom/hzbhd/common/ui/R$drawable;->__a4__car_8:I

    const/16 v1, 0x8

    aput p4, p3, v1

    sget p4, Lcom/hzbhd/common/ui/R$drawable;->__a4__car_9:I

    const/16 v1, 0x9

    aput p4, p3, v1

    sget p4, Lcom/hzbhd/common/ui/R$drawable;->__a4__car_10:I

    const/16 v1, 0xa

    aput p4, p3, v1

    sget p4, Lcom/hzbhd/common/ui/R$drawable;->__a4__car_11:I

    const/16 v1, 0xb

    aput p4, p3, v1

    sget p4, Lcom/hzbhd/common/ui/R$drawable;->__a4__car_12:I

    const/16 v1, 0xc

    aput p4, p3, v1

    sget p4, Lcom/hzbhd/common/ui/R$drawable;->__a4__car_13:I

    const/16 v1, 0xd

    aput p4, p3, v1

    sget p4, Lcom/hzbhd/common/ui/R$drawable;->__a4__car_14:I

    const/16 v1, 0xe

    aput p4, p3, v1

    sget p4, Lcom/hzbhd/common/ui/R$drawable;->__a4__car_15:I

    const/16 v1, 0xf

    aput p4, p3, v1

    sget p4, Lcom/hzbhd/common/ui/R$drawable;->__a4__car_16:I

    const/16 v1, 0x10

    aput p4, p3, v1

    sget p4, Lcom/hzbhd/common/ui/R$drawable;->__a4__car_17:I

    const/16 v1, 0x11

    aput p4, p3, v1

    sget p4, Lcom/hzbhd/common/ui/R$drawable;->__a4__car_18:I

    const/16 v1, 0x12

    aput p4, p3, v1

    sget p4, Lcom/hzbhd/common/ui/R$drawable;->__a4__car_19:I

    const/16 v1, 0x13

    aput p4, p3, v1

    sget p4, Lcom/hzbhd/common/ui/R$drawable;->__a4__car_20:I

    const/16 v1, 0x14

    aput p4, p3, v1

    sget p4, Lcom/hzbhd/common/ui/R$drawable;->__a4__ashux_main_mid_img_car13:I

    const/16 v1, 0x15

    aput p4, p3, v1

    iput-object p3, p0, Lcom/hzbhd/common/_a4/CarLogoRelativeLayout;->IDS:[I

    .line 50
    iput v0, p0, Lcom/hzbhd/common/_a4/CarLogoRelativeLayout;->currentPos:I

    const/4 p3, 0x0

    .line 106
    iput p3, p0, Lcom/hzbhd/common/_a4/CarLogoRelativeLayout;->firstX:F

    iput p3, p0, Lcom/hzbhd/common/_a4/CarLogoRelativeLayout;->lastX:F

    .line 194
    new-instance p3, Lcom/hzbhd/common/_a4/CarLogoRelativeLayout$1;

    iget-object p4, p0, Lcom/hzbhd/common/_a4/CarLogoRelativeLayout;->mStatusHandler:Landroid/os/Handler;

    invoke-direct {p3, p0, p4}, Lcom/hzbhd/common/_a4/CarLogoRelativeLayout$1;-><init>(Lcom/hzbhd/common/_a4/CarLogoRelativeLayout;Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/hzbhd/common/_a4/CarLogoRelativeLayout;->mObserver:Landroid/database/ContentObserver;

    .line 68
    new-instance p3, Landroid/view/GestureDetector;

    invoke-direct {p3, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p3, p0, Lcom/hzbhd/common/_a4/CarLogoRelativeLayout;->mDetector:Landroid/view/GestureDetector;

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-static {p3, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/hzbhd/common/_a4/CarLogoRelativeLayout;->currentPos:I

    .line 70
    iput-object p1, p0, Lcom/hzbhd/common/_a4/CarLogoRelativeLayout;->mContext:Landroid/content/Context;

    .line 71
    invoke-virtual {p0, p0}, Lcom/hzbhd/common/_a4/CarLogoRelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/hzbhd/common/_a4/CarLogoRelativeLayout;)Landroid/content/Context;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/hzbhd/common/_a4/CarLogoRelativeLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/hzbhd/common/_a4/CarLogoRelativeLayout;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/hzbhd/common/_a4/CarLogoRelativeLayout;->currentPos:I

    return p0
.end method

.method static synthetic access$200(Lcom/hzbhd/common/_a4/CarLogoRelativeLayout;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/hzbhd/common/_a4/CarLogoRelativeLayout;->setIconView(I)V

    return-void
.end method

.method private setIcon(FF)V
    .locals 2

    sub-float/2addr p2, p1

    const/high16 p1, 0x42480000    # 50.0f

    cmpl-float p1, p2, p1

    const-string v0, "com.carview.a4.car.icon"

    if-ltz p1, :cond_1

    .line 176
    iget p1, p0, Lcom/hzbhd/common/_a4/CarLogoRelativeLayout;->currentPos:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/hzbhd/common/_a4/CarLogoRelativeLayout;->currentPos:I

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    .line 178
    iput p1, p0, Lcom/hzbhd/common/_a4/CarLogoRelativeLayout;->currentPos:I

    .line 180
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/common/_a4/CarLogoRelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget p2, p0, Lcom/hzbhd/common/_a4/CarLogoRelativeLayout;->currentPos:I

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 181
    iget p1, p0, Lcom/hzbhd/common/_a4/CarLogoRelativeLayout;->currentPos:I

    invoke-direct {p0, p1}, Lcom/hzbhd/common/_a4/CarLogoRelativeLayout;->setIconView(I)V

    goto :goto_0

    :cond_1
    const/high16 p1, -0x3db80000    # -50.0f

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_3

    .line 185
    iget p1, p0, Lcom/hzbhd/common/_a4/CarLogoRelativeLayout;->currentPos:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/hzbhd/common/_a4/CarLogoRelativeLayout;->currentPos:I

    .line 186
    iget-object p2, p0, Lcom/hzbhd/common/_a4/CarLogoRelativeLayout;->IDS:[I

    array-length v1, p2

    if-lt p1, v1, :cond_2

    .line 187
    array-length p1, p2

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/hzbhd/common/_a4/CarLogoRelativeLayout;->currentPos:I

    .line 189
    :cond_2
    iget-object p1, p0, Lcom/hzbhd/common/_a4/CarLogoRelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget p2, p0, Lcom/hzbhd/common/_a4/CarLogoRelativeLayout;->currentPos:I

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 190
    iget p1, p0, Lcom/hzbhd/common/_a4/CarLogoRelativeLayout;->currentPos:I

    invoke-direct {p0, p1}, Lcom/hzbhd/common/_a4/CarLogoRelativeLayout;->setIconView(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private setIconView(I)V
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/hzbhd/common/_a4/CarLogoRelativeLayout;->iconView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 210
    iget-object v1, p0, Lcom/hzbhd/common/_a4/CarLogoRelativeLayout;->IDS:[I

    aget p1, v1, p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 4

    .line 85
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 86
    iget-object v0, p0, Lcom/hzbhd/common/_a4/CarLogoRelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.carview.a4.car.icon"

    .line 87
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/hzbhd/common/_a4/CarLogoRelativeLayout;->mObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    .line 86
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 94
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 95
    iget-object v0, p0, Lcom/hzbhd/common/_a4/CarLogoRelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/hzbhd/common/_a4/CarLogoRelativeLayout;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 77
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 78
    sget v0, Lcom/hzbhd/common/ui/R$id;->car_main_bg:I

    invoke-virtual {p0, v0}, Lcom/hzbhd/common/_a4/CarLogoRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/hzbhd/common/_a4/CarLogoRelativeLayout;->iconView:Landroid/view/View;

    .line 79
    iget v0, p0, Lcom/hzbhd/common/_a4/CarLogoRelativeLayout;->currentPos:I

    invoke-direct {p0, v0}, Lcom/hzbhd/common/_a4/CarLogoRelativeLayout;->setIconView(I)V

    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .line 142
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p4

    sub-float/2addr p3, p4

    .line 143
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    sub-float/2addr p1, p2

    .line 144
    iget-object p2, p0, Lcom/hzbhd/common/_a4/CarLogoRelativeLayout;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onFling: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, "   ,  "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/hzbhd/common/_a4/CarLogoRelativeLayout;->TAG:Ljava/lang/String;

    const-string v1, "onInterceptTouchEvent: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/hzbhd/common/_a4/CarLogoRelativeLayout;->mDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 102
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 152
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 154
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/hzbhd/common/_a4/CarLogoRelativeLayout;->firstX:F

    return v0

    .line 156
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    return v0

    .line 158
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v0, :cond_2

    .line 160
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/hzbhd/common/_a4/CarLogoRelativeLayout;->lastX:F

    .line 161
    iget p2, p0, Lcom/hzbhd/common/_a4/CarLogoRelativeLayout;->firstX:F

    invoke-direct {p0, p2, p1}, Lcom/hzbhd/common/_a4/CarLogoRelativeLayout;->setIcon(FF)V

    const/4 p1, 0x0

    .line 164
    iput p1, p0, Lcom/hzbhd/common/_a4/CarLogoRelativeLayout;->firstX:F

    .line 165
    iput p1, p0, Lcom/hzbhd/common/_a4/CarLogoRelativeLayout;->lastX:F

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 112
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
