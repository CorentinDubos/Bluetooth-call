.class public Lcom/hzbhd/common/_c2/CarLogoRelativeLayout;
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

.field private lastX:F

.field private mContext:Landroid/content/Context;

.field private mDetector:Landroid/view/GestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, v0}, Lcom/hzbhd/common/_c2/CarLogoRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2, v0}, Lcom/hzbhd/common/_c2/CarLogoRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/hzbhd/common/_c2/CarLogoRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 18
    const-class p2, Lcom/hzbhd/common/_c2/CarLogoRelativeLayout;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/hzbhd/common/_c2/CarLogoRelativeLayout;->TAG:Ljava/lang/String;

    const/16 p2, 0x14

    new-array p2, p2, [I

    .line 20
    sget p3, Lcom/hzbhd/common/ui/R$drawable;->__a4__shux_main_mid_img_sanling1:I

    const/4 p4, 0x0

    aput p3, p2, p4

    sget p3, Lcom/hzbhd/common/ui/R$drawable;->__c2__car_0:I

    const/4 v0, 0x1

    aput p3, p2, v0

    sget p3, Lcom/hzbhd/common/ui/R$drawable;->__c2__car_1:I

    const/4 v0, 0x2

    aput p3, p2, v0

    sget p3, Lcom/hzbhd/common/ui/R$drawable;->__c2__car_2:I

    const/4 v0, 0x3

    aput p3, p2, v0

    sget p3, Lcom/hzbhd/common/ui/R$drawable;->__c2__car_3:I

    const/4 v0, 0x4

    aput p3, p2, v0

    sget p3, Lcom/hzbhd/common/ui/R$drawable;->__c2__car_4:I

    const/4 v0, 0x5

    aput p3, p2, v0

    sget p3, Lcom/hzbhd/common/ui/R$drawable;->__c2__car_5:I

    const/4 v0, 0x6

    aput p3, p2, v0

    sget p3, Lcom/hzbhd/common/ui/R$drawable;->__c2__car_7:I

    const/4 v0, 0x7

    aput p3, p2, v0

    sget p3, Lcom/hzbhd/common/ui/R$drawable;->__c2__car_8:I

    const/16 v0, 0x8

    aput p3, p2, v0

    sget p3, Lcom/hzbhd/common/ui/R$drawable;->__c2__car_9:I

    const/16 v0, 0x9

    aput p3, p2, v0

    sget p3, Lcom/hzbhd/common/ui/R$drawable;->__c2__car_10:I

    const/16 v0, 0xa

    aput p3, p2, v0

    sget p3, Lcom/hzbhd/common/ui/R$drawable;->__c2__car_11:I

    const/16 v0, 0xb

    aput p3, p2, v0

    sget p3, Lcom/hzbhd/common/ui/R$drawable;->__c2__car_12:I

    const/16 v0, 0xc

    aput p3, p2, v0

    sget p3, Lcom/hzbhd/common/ui/R$drawable;->__c2__car_13:I

    const/16 v0, 0xd

    aput p3, p2, v0

    sget p3, Lcom/hzbhd/common/ui/R$drawable;->__c2__car_14:I

    const/16 v0, 0xe

    aput p3, p2, v0

    sget p3, Lcom/hzbhd/common/ui/R$drawable;->__c2__car_15:I

    const/16 v0, 0xf

    aput p3, p2, v0

    sget p3, Lcom/hzbhd/common/ui/R$drawable;->__c2__car_16:I

    const/16 v0, 0x10

    aput p3, p2, v0

    sget p3, Lcom/hzbhd/common/ui/R$drawable;->__c2__car_17:I

    const/16 v0, 0x11

    aput p3, p2, v0

    sget p3, Lcom/hzbhd/common/ui/R$drawable;->__c2__car_18:I

    const/16 v0, 0x12

    aput p3, p2, v0

    sget p3, Lcom/hzbhd/common/ui/R$drawable;->__c2__car_19:I

    const/16 v0, 0x13

    aput p3, p2, v0

    iput-object p2, p0, Lcom/hzbhd/common/_c2/CarLogoRelativeLayout;->IDS:[I

    .line 42
    iput p4, p0, Lcom/hzbhd/common/_c2/CarLogoRelativeLayout;->currentPos:I

    const/4 p2, 0x0

    .line 81
    iput p2, p0, Lcom/hzbhd/common/_c2/CarLogoRelativeLayout;->firstX:F

    iput p2, p0, Lcom/hzbhd/common/_c2/CarLogoRelativeLayout;->lastX:F

    .line 60
    new-instance p2, Landroid/view/GestureDetector;

    invoke-direct {p2, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/hzbhd/common/_c2/CarLogoRelativeLayout;->mDetector:Landroid/view/GestureDetector;

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string p3, "com.carview.a4.car.icon"

    invoke-static {p2, p3, p4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/hzbhd/common/_c2/CarLogoRelativeLayout;->currentPos:I

    .line 62
    iput-object p1, p0, Lcom/hzbhd/common/_c2/CarLogoRelativeLayout;->mContext:Landroid/content/Context;

    .line 63
    invoke-virtual {p0, p0}, Lcom/hzbhd/common/_c2/CarLogoRelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private setIcon(FF)V
    .locals 2

    sub-float/2addr p2, p1

    const/high16 p1, 0x42480000    # 50.0f

    cmpl-float p1, p2, p1

    const-string v0, "com.carview.a4.car.icon"

    if-ltz p1, :cond_1

    .line 151
    iget p1, p0, Lcom/hzbhd/common/_c2/CarLogoRelativeLayout;->currentPos:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/hzbhd/common/_c2/CarLogoRelativeLayout;->currentPos:I

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    .line 153
    iput p1, p0, Lcom/hzbhd/common/_c2/CarLogoRelativeLayout;->currentPos:I

    .line 155
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/common/_c2/CarLogoRelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget p2, p0, Lcom/hzbhd/common/_c2/CarLogoRelativeLayout;->currentPos:I

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 156
    sget p1, Lcom/hzbhd/common/ui/R$id;->car_main_bg:I

    invoke-virtual {p0, p1}, Lcom/hzbhd/common/_c2/CarLogoRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/hzbhd/common/_c2/CarLogoRelativeLayout;->IDS:[I

    iget v0, p0, Lcom/hzbhd/common/_c2/CarLogoRelativeLayout;->currentPos:I

    aget p2, p2, v0

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    const/high16 p1, -0x3db80000    # -50.0f

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_3

    .line 160
    iget p1, p0, Lcom/hzbhd/common/_c2/CarLogoRelativeLayout;->currentPos:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/hzbhd/common/_c2/CarLogoRelativeLayout;->currentPos:I

    .line 161
    iget-object p2, p0, Lcom/hzbhd/common/_c2/CarLogoRelativeLayout;->IDS:[I

    array-length v1, p2

    if-lt p1, v1, :cond_2

    .line 162
    array-length p1, p2

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/hzbhd/common/_c2/CarLogoRelativeLayout;->currentPos:I

    .line 164
    :cond_2
    iget-object p1, p0, Lcom/hzbhd/common/_c2/CarLogoRelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget p2, p0, Lcom/hzbhd/common/_c2/CarLogoRelativeLayout;->currentPos:I

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 165
    sget p1, Lcom/hzbhd/common/ui/R$id;->car_main_bg:I

    invoke-virtual {p0, p1}, Lcom/hzbhd/common/_c2/CarLogoRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/hzbhd/common/_c2/CarLogoRelativeLayout;->IDS:[I

    iget v0, p0, Lcom/hzbhd/common/_c2/CarLogoRelativeLayout;->currentPos:I

    aget p2, p2, v0

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 69
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 70
    sget v0, Lcom/hzbhd/common/ui/R$id;->car_main_bg:I

    invoke-virtual {p0, v0}, Lcom/hzbhd/common/_c2/CarLogoRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/hzbhd/common/_c2/CarLogoRelativeLayout;->IDS:[I

    iget v2, p0, Lcom/hzbhd/common/_c2/CarLogoRelativeLayout;->currentPos:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .line 117
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p4

    sub-float/2addr p3, p4

    .line 118
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    sub-float/2addr p1, p2

    .line 119
    iget-object p2, p0, Lcom/hzbhd/common/_c2/CarLogoRelativeLayout;->TAG:Ljava/lang/String;

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

    .line 75
    iget-object v0, p0, Lcom/hzbhd/common/_c2/CarLogoRelativeLayout;->TAG:Ljava/lang/String;

    const-string v1, "onInterceptTouchEvent: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v0, p0, Lcom/hzbhd/common/_c2/CarLogoRelativeLayout;->mDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 77
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

    .line 127
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 129
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/hzbhd/common/_c2/CarLogoRelativeLayout;->firstX:F

    return v0

    .line 131
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    return v0

    .line 133
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v0, :cond_2

    .line 135
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/hzbhd/common/_c2/CarLogoRelativeLayout;->lastX:F

    .line 136
    iget p2, p0, Lcom/hzbhd/common/_c2/CarLogoRelativeLayout;->firstX:F

    invoke-direct {p0, p2, p1}, Lcom/hzbhd/common/_c2/CarLogoRelativeLayout;->setIcon(FF)V

    const/4 p1, 0x0

    .line 139
    iput p1, p0, Lcom/hzbhd/common/_c2/CarLogoRelativeLayout;->firstX:F

    .line 140
    iput p1, p0, Lcom/hzbhd/common/_c2/CarLogoRelativeLayout;->lastX:F

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 87
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
