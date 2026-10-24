.class public Lcom/hzbhd/common/ui/MenuPopupWindow;
.super Landroid/widget/PopupWindow;
.source "MenuPopupWindow.java"


# static fields
.field public static final MAX_ITEM_COUNT_DEFAULT:I = 0x7


# instance fields
.field private mAdapter:Landroid/widget/BaseAdapter;

.field private mArrowIv:Landroid/widget/ImageView;

.field private mArrowStubHeight:I

.field private mContext:Landroid/content/Context;

.field private mExtraWidth:I

.field private mItemIsTooMore:Z

.field private mListPaddingBottom:I

.field private mListPaddingTop:I

.field private mMaxItemCount:I

.field private mMenuItemListDividerHeight:I

.field private mPopupMenuButton:Lcom/hzbhd/common/ui/PopupMenuButton;

.field private mPopupMenuLv:Landroid/widget/ListView;

.field private mPopupWindowHeight:I

.field private mPopupWindowWidth:I

.field private mSpaceOfEdge:I

.field private mWidthOfButtonInBottomBar:I


# direct methods
.method public constructor <init>(Lcom/hzbhd/common/ui/PopupMenuButton;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 62
    sget p5, Lcom/hzbhd/common/ui/R$style;->CustomDialogTheme:I

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p3, 0x6

    .line 38
    iput p3, p0, Lcom/hzbhd/common/ui/MenuPopupWindow;->mSpaceOfEdge:I

    const/16 p4, 0x4c

    .line 40
    iput p4, p0, Lcom/hzbhd/common/ui/MenuPopupWindow;->mWidthOfButtonInBottomBar:I

    add-int/2addr p4, p3

    .line 41
    iput p4, p0, Lcom/hzbhd/common/ui/MenuPopupWindow;->mExtraWidth:I

    const/4 p4, 0x0

    .line 47
    iput p4, p0, Lcom/hzbhd/common/ui/MenuPopupWindow;->mPopupWindowWidth:I

    .line 48
    iput p4, p0, Lcom/hzbhd/common/ui/MenuPopupWindow;->mPopupWindowHeight:I

    .line 112
    iput-boolean p4, p0, Lcom/hzbhd/common/ui/MenuPopupWindow;->mItemIsTooMore:Z

    const/4 p5, 0x2

    .line 113
    iput p5, p0, Lcom/hzbhd/common/ui/MenuPopupWindow;->mMenuItemListDividerHeight:I

    .line 114
    iput p3, p0, Lcom/hzbhd/common/ui/MenuPopupWindow;->mListPaddingTop:I

    .line 115
    iput p4, p0, Lcom/hzbhd/common/ui/MenuPopupWindow;->mListPaddingBottom:I

    const/16 p3, 0x14

    .line 116
    iput p3, p0, Lcom/hzbhd/common/ui/MenuPopupWindow;->mArrowStubHeight:I

    const/4 p3, 0x7

    .line 117
    iput p3, p0, Lcom/hzbhd/common/ui/MenuPopupWindow;->mMaxItemCount:I

    .line 63
    iput-object p2, p0, Lcom/hzbhd/common/ui/MenuPopupWindow;->mContext:Landroid/content/Context;

    .line 64
    iput-object p1, p0, Lcom/hzbhd/common/ui/MenuPopupWindow;->mPopupMenuButton:Lcom/hzbhd/common/ui/PopupMenuButton;

    .line 66
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/hzbhd/common/ui/R$attr;->popup_menu_window_layout:I

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResId(I)I

    move-result p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 67
    sget p2, Lcom/hzbhd/common/ui/R$id;->iv_popup_arrow:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/hzbhd/common/ui/MenuPopupWindow;->mArrowIv:Landroid/widget/ImageView;

    .line 68
    sget p2, Lcom/hzbhd/common/ui/R$id;->lv_popup_menu:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/hzbhd/common/ui/MenuPopupWindow;->mPopupMenuLv:Landroid/widget/ListView;

    .line 69
    new-instance p3, Lcom/hzbhd/common/ui/MenuPopupWindow$1;

    invoke-direct {p3, p0}, Lcom/hzbhd/common/ui/MenuPopupWindow$1;-><init>(Lcom/hzbhd/common/ui/MenuPopupWindow;)V

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 77
    invoke-virtual {p0, p1}, Lcom/hzbhd/common/ui/MenuPopupWindow;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x1

    .line 78
    invoke-virtual {p0, p1}, Lcom/hzbhd/common/ui/MenuPopupWindow;->setFocusable(Z)V

    return-void
.end method

.method private calcPopupWindowHeight()I
    .locals 4

    .line 126
    iget-object v0, p0, Lcom/hzbhd/common/ui/MenuPopupWindow;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    .line 127
    iget v1, p0, Lcom/hzbhd/common/ui/MenuPopupWindow;->mMaxItemCount:I

    const/4 v2, 0x1

    if-le v0, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/hzbhd/common/ui/MenuPopupWindow;->mItemIsTooMore:Z

    if-eqz v1, :cond_1

    .line 129
    iget v0, p0, Lcom/hzbhd/common/ui/MenuPopupWindow;->mMaxItemCount:I

    .line 131
    :cond_1
    sget v1, Lcom/hzbhd/common/ui/R$attr;->item_height:I

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResDimen(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/2addr v1, v0

    .line 132
    iget v3, p0, Lcom/hzbhd/common/ui/MenuPopupWindow;->mMenuItemListDividerHeight:I

    sub-int/2addr v0, v2

    mul-int/2addr v3, v0

    add-int/2addr v1, v3

    iget v0, p0, Lcom/hzbhd/common/ui/MenuPopupWindow;->mListPaddingTop:I

    add-int/2addr v1, v0

    iget v0, p0, Lcom/hzbhd/common/ui/MenuPopupWindow;->mListPaddingBottom:I

    add-int/2addr v1, v0

    iget v0, p0, Lcom/hzbhd/common/ui/MenuPopupWindow;->mArrowStubHeight:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/hzbhd/common/ui/MenuPopupWindow;->mPopupWindowHeight:I

    return v1
.end method

.method private calcPopupWindowWidth(Z)I
    .locals 1

    .line 120
    sget v0, Lcom/hzbhd/common/ui/R$attr;->item_width:I

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResDimen(I)F

    move-result v0

    float-to-int v0, v0

    if-eqz p1, :cond_0

    .line 121
    iget p1, p0, Lcom/hzbhd/common/ui/MenuPopupWindow;->mExtraWidth:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/hzbhd/common/ui/MenuPopupWindow;->mSpaceOfEdge:I

    :goto_0
    add-int/2addr v0, p1

    iput v0, p0, Lcom/hzbhd/common/ui/MenuPopupWindow;->mPopupWindowWidth:I

    return v0
.end method

.method private handleArrowDisplay()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/hzbhd/common/ui/MenuPopupWindow;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    iget v1, p0, Lcom/hzbhd/common/ui/MenuPopupWindow;->mMaxItemCount:I

    if-le v0, v1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/hzbhd/common/ui/MenuPopupWindow;->mArrowIv:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/common/ui/MenuPopupWindow;->mArrowIv:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public setAdapter(Landroid/widget/BaseAdapter;)V
    .locals 1

    .line 84
    iput-object p1, p0, Lcom/hzbhd/common/ui/MenuPopupWindow;->mAdapter:Landroid/widget/BaseAdapter;

    .line 85
    iget-object v0, p0, Lcom/hzbhd/common/ui/MenuPopupWindow;->mPopupMenuLv:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setMaxItemCountForDisplay(I)V
    .locals 1

    if-lez p1, :cond_1

    const/4 v0, 0x7

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    iput p1, p0, Lcom/hzbhd/common/ui/MenuPopupWindow;->mMaxItemCount:I

    :cond_1
    :goto_0
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/hzbhd/common/ui/MenuPopupWindow;->mPopupMenuLv:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public show(Z)V
    .locals 3

    .line 89
    invoke-direct {p0, p1}, Lcom/hzbhd/common/ui/MenuPopupWindow;->calcPopupWindowWidth(Z)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/hzbhd/common/ui/MenuPopupWindow;->setWidth(I)V

    .line 90
    invoke-direct {p0}, Lcom/hzbhd/common/ui/MenuPopupWindow;->calcPopupWindowHeight()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/hzbhd/common/ui/MenuPopupWindow;->setHeight(I)V

    .line 94
    iget-object p1, p0, Lcom/hzbhd/common/ui/MenuPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x106000d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hzbhd/common/ui/MenuPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    .line 95
    invoke-virtual {p0, p1}, Lcom/hzbhd/common/ui/MenuPopupWindow;->setOutsideTouchable(Z)V

    .line 96
    sget p1, Lcom/hzbhd/common/ui/R$attr;->popup_window_x_offset:I

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResDimen(I)F

    move-result p1

    float-to-int p1, p1

    .line 97
    sget v0, Lcom/hzbhd/common/ui/R$attr;->popup_window_y_offset:I

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResDimen(I)F

    move-result v0

    float-to-int v0, v0

    .line 100
    iget-object v1, p0, Lcom/hzbhd/common/ui/MenuPopupWindow;->mPopupMenuButton:Lcom/hzbhd/common/ui/PopupMenuButton;

    const v2, 0x800053

    invoke-virtual {p0, v1, v2, p1, v0}, Lcom/hzbhd/common/ui/MenuPopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method
