.class public Lcom/hzbhd/common/ui/paged/CellLayout;
.super Landroid/widget/RelativeLayout;
.source "CellLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CellLayout"


# instance fields
.field protected mCellHeight:I

.field protected mCellWidth:I

.field protected mMaxHeight:I

.field protected mMaxWidth:I

.field private mPage:I

.field protected mXSize:I

.field protected mYSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 25
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lcom/hzbhd/common/ui/paged/CellLayout;->mPage:I

    const/4 p1, 0x5

    .line 12
    iput p1, p0, Lcom/hzbhd/common/ui/paged/CellLayout;->mXSize:I

    const/4 v0, 0x2

    .line 13
    iput v0, p0, Lcom/hzbhd/common/ui/paged/CellLayout;->mYSize:I

    const/16 v1, 0x780

    .line 14
    iput v1, p0, Lcom/hzbhd/common/ui/paged/CellLayout;->mMaxWidth:I

    const/16 v2, 0x438

    .line 15
    iput v2, p0, Lcom/hzbhd/common/ui/paged/CellLayout;->mMaxHeight:I

    .line 16
    div-int/2addr v1, p1

    iput v1, p0, Lcom/hzbhd/common/ui/paged/CellLayout;->mCellWidth:I

    .line 17
    div-int/2addr v2, v0

    iput v2, p0, Lcom/hzbhd/common/ui/paged/CellLayout;->mCellHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 20
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lcom/hzbhd/common/ui/paged/CellLayout;->mPage:I

    const/4 p1, 0x5

    .line 12
    iput p1, p0, Lcom/hzbhd/common/ui/paged/CellLayout;->mXSize:I

    const/4 v0, 0x2

    .line 13
    iput v0, p0, Lcom/hzbhd/common/ui/paged/CellLayout;->mYSize:I

    const/16 v1, 0x780

    .line 14
    iput v1, p0, Lcom/hzbhd/common/ui/paged/CellLayout;->mMaxWidth:I

    const/16 v2, 0x438

    .line 15
    iput v2, p0, Lcom/hzbhd/common/ui/paged/CellLayout;->mMaxHeight:I

    .line 16
    div-int/2addr v1, p1

    iput v1, p0, Lcom/hzbhd/common/ui/paged/CellLayout;->mCellWidth:I

    .line 17
    div-int/2addr v2, v0

    iput v2, p0, Lcom/hzbhd/common/ui/paged/CellLayout;->mCellHeight:I

    .line 21
    iput p2, p0, Lcom/hzbhd/common/ui/paged/CellLayout;->mPage:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lcom/hzbhd/common/ui/paged/CellLayout;->mPage:I

    const/4 p1, 0x5

    .line 12
    iput p1, p0, Lcom/hzbhd/common/ui/paged/CellLayout;->mXSize:I

    const/4 p2, 0x2

    .line 13
    iput p2, p0, Lcom/hzbhd/common/ui/paged/CellLayout;->mYSize:I

    const/16 v0, 0x780

    .line 14
    iput v0, p0, Lcom/hzbhd/common/ui/paged/CellLayout;->mMaxWidth:I

    const/16 v1, 0x438

    .line 15
    iput v1, p0, Lcom/hzbhd/common/ui/paged/CellLayout;->mMaxHeight:I

    .line 16
    div-int/2addr v0, p1

    iput v0, p0, Lcom/hzbhd/common/ui/paged/CellLayout;->mCellWidth:I

    .line 17
    div-int/2addr v1, p2

    iput v1, p0, Lcom/hzbhd/common/ui/paged/CellLayout;->mCellHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lcom/hzbhd/common/ui/paged/CellLayout;->mPage:I

    const/4 p1, 0x5

    .line 12
    iput p1, p0, Lcom/hzbhd/common/ui/paged/CellLayout;->mXSize:I

    const/4 p2, 0x2

    .line 13
    iput p2, p0, Lcom/hzbhd/common/ui/paged/CellLayout;->mYSize:I

    const/16 p3, 0x780

    .line 14
    iput p3, p0, Lcom/hzbhd/common/ui/paged/CellLayout;->mMaxWidth:I

    const/16 v0, 0x438

    .line 15
    iput v0, p0, Lcom/hzbhd/common/ui/paged/CellLayout;->mMaxHeight:I

    .line 16
    div-int/2addr p3, p1

    iput p3, p0, Lcom/hzbhd/common/ui/paged/CellLayout;->mCellWidth:I

    .line 17
    div-int/2addr v0, p2

    iput v0, p0, Lcom/hzbhd/common/ui/paged/CellLayout;->mCellHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lcom/hzbhd/common/ui/paged/CellLayout;->mPage:I

    const/4 p1, 0x5

    .line 12
    iput p1, p0, Lcom/hzbhd/common/ui/paged/CellLayout;->mXSize:I

    const/4 p2, 0x2

    .line 13
    iput p2, p0, Lcom/hzbhd/common/ui/paged/CellLayout;->mYSize:I

    const/16 p3, 0x780

    .line 14
    iput p3, p0, Lcom/hzbhd/common/ui/paged/CellLayout;->mMaxWidth:I

    const/16 p4, 0x438

    .line 15
    iput p4, p0, Lcom/hzbhd/common/ui/paged/CellLayout;->mMaxHeight:I

    .line 16
    div-int/2addr p3, p1

    iput p3, p0, Lcom/hzbhd/common/ui/paged/CellLayout;->mCellWidth:I

    .line 17
    div-int/2addr p4, p2

    iput p4, p0, Lcom/hzbhd/common/ui/paged/CellLayout;->mCellHeight:I

    return-void
.end method


# virtual methods
.method public addChild(Lcom/hzbhd/common/ui/paged/CellChild;II)V
    .locals 0

    .line 54
    invoke-virtual {p1, p2, p3}, Lcom/hzbhd/common/ui/paged/CellChild;->setLoc(II)V

    .line 55
    invoke-virtual {p0, p1}, Lcom/hzbhd/common/ui/paged/CellLayout;->addChild(Lcom/hzbhd/common/ui/paged/CellChild;)Z

    return-void
.end method

.method public addChild(Lcom/hzbhd/common/ui/paged/CellChild;)Z
    .locals 4

    .line 62
    invoke-virtual {p1}, Lcom/hzbhd/common/ui/paged/CellChild;->getPageX()I

    move-result v0

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/paged/CellChild;->getXsize()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/hzbhd/common/ui/paged/CellLayout;->mXSize:I

    if-gt v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/paged/CellChild;->getPageY()I

    move-result v0

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/paged/CellChild;->getYsize()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/hzbhd/common/ui/paged/CellLayout;->mYSize:I

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/hzbhd/common/ui/paged/CellLayout;->mCellWidth:I

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/paged/CellChild;->getXsize()I

    move-result v2

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/hzbhd/common/ui/paged/CellLayout;->mCellHeight:I

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/paged/CellChild;->getYsize()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 67
    iget v1, p0, Lcom/hzbhd/common/ui/paged/CellLayout;->mCellWidth:I

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/paged/CellChild;->getPageX()I

    move-result v2

    mul-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 68
    iget v1, p0, Lcom/hzbhd/common/ui/paged/CellLayout;->mCellHeight:I

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/paged/CellChild;->getPageY()I

    move-result v2

    mul-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 69
    invoke-virtual {p0, p1, v0}, Lcom/hzbhd/common/ui/paged/CellLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    return p1

    .line 63
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addChild: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/paged/CellChild;->getPageX()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/paged/CellChild;->getXsize()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hzbhd/common/ui/paged/CellLayout;->mXSize:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "::"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/paged/CellChild;->getPageY()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/paged/CellChild;->getYsize()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/hzbhd/common/ui/paged/CellLayout;->mYSize:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " == return false"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CellLayout"

    invoke-static {v0, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public getPage()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/hzbhd/common/ui/paged/CellLayout;->mPage:I

    return v0
.end method

.method public setGridSize(IIII)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/hzbhd/common/ui/paged/CellLayout;->mXSize:I

    .line 42
    iput p2, p0, Lcom/hzbhd/common/ui/paged/CellLayout;->mYSize:I

    .line 43
    iput p3, p0, Lcom/hzbhd/common/ui/paged/CellLayout;->mMaxWidth:I

    .line 44
    iput p4, p0, Lcom/hzbhd/common/ui/paged/CellLayout;->mMaxHeight:I

    .line 45
    div-int/2addr p3, p1

    iput p3, p0, Lcom/hzbhd/common/ui/paged/CellLayout;->mCellWidth:I

    .line 46
    div-int/2addr p4, p2

    iput p4, p0, Lcom/hzbhd/common/ui/paged/CellLayout;->mCellHeight:I

    return-void
.end method
