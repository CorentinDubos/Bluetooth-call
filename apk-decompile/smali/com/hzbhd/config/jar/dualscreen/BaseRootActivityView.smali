.class public Lcom/hzbhd/config/jar/dualscreen/BaseRootActivityView;
.super Landroid/widget/RelativeLayout;
.source "BaseRootActivityView.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "BaseRootActivityView"


# instance fields
.field private child:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    .line 20
    invoke-virtual {p2, p1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 21
    iget p2, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-direct {p0, p2, p1}, Lcom/hzbhd/config/jar/dualscreen/BaseRootActivityView;->scale(II)V

    return-void
.end method

.method private scale(II)V
    .locals 0

    return-void
.end method


# virtual methods
.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/hzbhd/config/jar/dualscreen/BaseRootActivityView;->generateDefaultLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 3

    .line 46
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0x400

    const/16 v2, 0x258

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, -0x400

    .line 47
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    const/16 v1, -0x258

    .line 48
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 33
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 34
    iget-object p1, p0, Lcom/hzbhd/config/jar/dualscreen/BaseRootActivityView;->child:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 35
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "scale "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hzbhd/config/jar/dualscreen/BaseRootActivityView;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x400

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BaseRootActivityView"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object p1, p0, Lcom/hzbhd/config/jar/dualscreen/BaseRootActivityView;->child:Landroid/view/View;

    const/high16 p2, 0x3f000000    # 0.5f

    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotX(F)V

    .line 37
    iget-object p1, p0, Lcom/hzbhd/config/jar/dualscreen/BaseRootActivityView;->child:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotY(F)V

    .line 38
    iget-object p1, p0, Lcom/hzbhd/config/jar/dualscreen/BaseRootActivityView;->child:Landroid/view/View;

    invoke-virtual {p0}, Lcom/hzbhd/config/jar/dualscreen/BaseRootActivityView;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, 0x44800000    # 1024.0f

    div-float/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 39
    iget-object p1, p0, Lcom/hzbhd/config/jar/dualscreen/BaseRootActivityView;->child:Landroid/view/View;

    invoke-virtual {p0}, Lcom/hzbhd/config/jar/dualscreen/BaseRootActivityView;->getMeasuredHeight()I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, 0x44160000    # 600.0f

    div-float/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    :cond_0
    return-void
.end method

.method public setChild(Landroid/view/View;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/hzbhd/config/jar/dualscreen/BaseRootActivityView;->child:Landroid/view/View;

    if-nez p1, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/hzbhd/config/jar/dualscreen/BaseRootActivityView;->removeAllViews()V

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 58
    iget-object p1, p0, Lcom/hzbhd/config/jar/dualscreen/BaseRootActivityView;->child:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 60
    :cond_1
    iget-object p1, p0, Lcom/hzbhd/config/jar/dualscreen/BaseRootActivityView;->child:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/hzbhd/config/jar/dualscreen/BaseRootActivityView;->addView(Landroid/view/View;)V

    :goto_0
    return-void
.end method
