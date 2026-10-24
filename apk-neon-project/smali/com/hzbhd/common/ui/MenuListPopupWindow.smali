.class public Lcom/hzbhd/common/ui/MenuListPopupWindow;
.super Landroid/widget/ListPopupWindow;
.source "MenuListPopupWindow.java"


# static fields
.field private static final POPUP_LIST_HEIGHT_MAX:I = 0x1a0

.field private static final POPUP_LIST_WIDTH_MAX:I = 0x122

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mArrowLayout:Landroid/widget/RelativeLayout;

.field private mArrowStubHeight:I

.field private mContext:Landroid/content/Context;

.field private mExtraWidth:I

.field private mItemIsTooMore:Z

.field private mListPaddingBottom:I

.field private mListPaddingLeft:I

.field private mListPaddingRight:I

.field private mListPaddingTop:I

.field private mMenuItemHeight:I

.field private mMenuItemListDividerHeight:I

.field private mPopupMenuButton:Lcom/hzbhd/common/ui/PopupMenuButton;

.field private mPopupWindowHorizontalOffset:I

.field private mTempRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lcom/hzbhd/common/ui/MenuListPopupWindow;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/common/ui/MenuListPopupWindow;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/hzbhd/common/ui/PopupMenuButton;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 70
    sget p5, Lcom/hzbhd/common/ui/R$style;->CustomDialogTheme:I

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/16 p3, 0x36

    .line 45
    iput p3, p0, Lcom/hzbhd/common/ui/MenuListPopupWindow;->mMenuItemHeight:I

    const/4 p3, 0x2

    .line 46
    iput p3, p0, Lcom/hzbhd/common/ui/MenuListPopupWindow;->mMenuItemListDividerHeight:I

    const/4 p4, 0x6

    .line 47
    iput p4, p0, Lcom/hzbhd/common/ui/MenuListPopupWindow;->mListPaddingLeft:I

    .line 48
    iput p4, p0, Lcom/hzbhd/common/ui/MenuListPopupWindow;->mListPaddingRight:I

    .line 49
    iput p4, p0, Lcom/hzbhd/common/ui/MenuListPopupWindow;->mListPaddingTop:I

    .line 50
    iput p3, p0, Lcom/hzbhd/common/ui/MenuListPopupWindow;->mListPaddingBottom:I

    const/16 p3, 0x14

    .line 51
    iput p3, p0, Lcom/hzbhd/common/ui/MenuListPopupWindow;->mArrowStubHeight:I

    const/16 p3, 0x9e

    .line 54
    iput p3, p0, Lcom/hzbhd/common/ui/MenuListPopupWindow;->mPopupWindowHorizontalOffset:I

    const/16 p3, 0x52

    .line 55
    iput p3, p0, Lcom/hzbhd/common/ui/MenuListPopupWindow;->mExtraWidth:I

    const/4 p3, 0x0

    .line 58
    iput-boolean p3, p0, Lcom/hzbhd/common/ui/MenuListPopupWindow;->mItemIsTooMore:Z

    .line 60
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/hzbhd/common/ui/MenuListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 71
    iput-object p2, p0, Lcom/hzbhd/common/ui/MenuListPopupWindow;->mContext:Landroid/content/Context;

    .line 72
    iput-object p1, p0, Lcom/hzbhd/common/ui/MenuListPopupWindow;->mPopupMenuButton:Lcom/hzbhd/common/ui/PopupMenuButton;

    .line 73
    invoke-virtual {p0, p1}, Lcom/hzbhd/common/ui/MenuListPopupWindow;->setAnchorView(Landroid/view/View;)V

    const/4 p1, 0x1

    .line 74
    invoke-virtual {p0, p1}, Lcom/hzbhd/common/ui/MenuListPopupWindow;->setModal(Z)V

    .line 75
    invoke-virtual {p0, p1}, Lcom/hzbhd/common/ui/MenuListPopupWindow;->setPromptPosition(I)V

    .line 76
    new-instance p1, Lcom/hzbhd/common/ui/MenuListPopupWindow$1;

    invoke-direct {p1, p0}, Lcom/hzbhd/common/ui/MenuListPopupWindow$1;-><init>(Lcom/hzbhd/common/ui/MenuListPopupWindow;)V

    invoke-virtual {p0, p1}, Lcom/hzbhd/common/ui/MenuListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 83
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/hzbhd/common/ui/R$layout;->menu_arrow_layout:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/hzbhd/common/ui/MenuListPopupWindow;->mArrowLayout:Landroid/widget/RelativeLayout;

    return-void
.end method

.method static synthetic access$000(Lcom/hzbhd/common/ui/MenuListPopupWindow;)Lcom/hzbhd/common/ui/PopupMenuButton;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/hzbhd/common/ui/MenuListPopupWindow;->mPopupMenuButton:Lcom/hzbhd/common/ui/PopupMenuButton;

    return-object p0
.end method

.method private calcListHeight()I
    .locals 4

    .line 157
    iget-object v0, p0, Lcom/hzbhd/common/ui/MenuListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x7

    if-le v0, v2, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 158
    :goto_0
    iput-boolean v3, p0, Lcom/hzbhd/common/ui/MenuListPopupWindow;->mItemIsTooMore:Z

    if-nez v3, :cond_2

    if-ne v0, v2, :cond_1

    goto :goto_1

    .line 162
    :cond_1
    iget v2, p0, Lcom/hzbhd/common/ui/MenuListPopupWindow;->mMenuItemHeight:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/hzbhd/common/ui/MenuListPopupWindow;->mMenuItemListDividerHeight:I

    sub-int/2addr v0, v1

    mul-int/2addr v3, v0

    add-int/2addr v2, v3

    iget v0, p0, Lcom/hzbhd/common/ui/MenuListPopupWindow;->mListPaddingTop:I

    add-int/2addr v2, v0

    iget v0, p0, Lcom/hzbhd/common/ui/MenuListPopupWindow;->mListPaddingBottom:I

    add-int/2addr v2, v0

    iget v0, p0, Lcom/hzbhd/common/ui/MenuListPopupWindow;->mArrowStubHeight:I

    add-int/2addr v2, v0

    return v2

    :cond_2
    :goto_1
    const/16 v0, 0x1a0

    return v0
.end method

.method private firstSelection(II)V
    .locals 2

    .line 130
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/MenuListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 131
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/MenuListPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0, p1, p2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 133
    invoke-virtual {v0}, Landroid/widget/ListView;->getChoiceMode()I

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 134
    invoke-virtual {v0, p1, p2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public init(Landroid/widget/ListAdapter;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/hzbhd/common/ui/MenuListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    .line 147
    invoke-virtual {p0, p1}, Lcom/hzbhd/common/ui/MenuListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 148
    invoke-direct {p0}, Lcom/hzbhd/common/ui/MenuListPopupWindow;->calcListHeight()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/hzbhd/common/ui/MenuListPopupWindow;->setHeight(I)V

    .line 150
    iget-boolean p1, p0, Lcom/hzbhd/common/ui/MenuListPopupWindow;->mItemIsTooMore:Z

    if-eqz p1, :cond_0

    .line 151
    iget-object p1, p0, Lcom/hzbhd/common/ui/MenuListPopupWindow;->mArrowLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1}, Lcom/hzbhd/common/ui/MenuListPopupWindow;->setPromptView(Landroid/view/View;)V

    const/4 p1, 0x1

    .line 152
    invoke-virtual {p0, p1}, Lcom/hzbhd/common/ui/MenuListPopupWindow;->setPromptPosition(I)V

    :cond_0
    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 0

    .line 141
    invoke-super {p0, p1}, Landroid/widget/ListPopupWindow;->setHorizontalOffset(I)V

    .line 142
    iput p1, p0, Lcom/hzbhd/common/ui/MenuListPopupWindow;->mPopupWindowHorizontalOffset:I

    return-void
.end method

.method public show(Z)V
    .locals 7

    .line 87
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/MenuListPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 90
    iget-object v2, p0, Lcom/hzbhd/common/ui/MenuListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 91
    iget-object v0, p0, Lcom/hzbhd/common/ui/MenuListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    goto :goto_0

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/common/ui/MenuListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    move v0, v1

    .line 96
    :goto_0
    iget v2, p0, Lcom/hzbhd/common/ui/MenuListPopupWindow;->mPopupWindowHorizontalOffset:I

    const/16 v3, 0x122

    if-eqz p1, :cond_1

    .line 97
    iget p1, p0, Lcom/hzbhd/common/ui/MenuListPopupWindow;->mExtraWidth:I

    add-int/2addr v3, p1

    .line 98
    :cond_1
    invoke-virtual {p0, v3}, Lcom/hzbhd/common/ui/MenuListPopupWindow;->setContentWidth(I)V

    add-int/2addr v0, v2

    .line 99
    invoke-super {p0, v0}, Landroid/widget/ListPopupWindow;->setHorizontalOffset(I)V

    .line 100
    iget-object p1, p0, Lcom/hzbhd/common/ui/MenuListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result p1

    .line 101
    iget-boolean v0, p0, Lcom/hzbhd/common/ui/MenuListPopupWindow;->mItemIsTooMore:Z

    const/4 v2, 0x6

    if-nez v0, :cond_4

    const/4 v0, 0x7

    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    if-ne p1, v2, :cond_3

    const/16 p1, -0x3b

    .line 104
    invoke-virtual {p0, p1}, Lcom/hzbhd/common/ui/MenuListPopupWindow;->setVerticalOffset(I)V

    goto :goto_2

    .line 106
    :cond_3
    iget p1, p0, Lcom/hzbhd/common/ui/MenuListPopupWindow;->mArrowStubHeight:I

    rsub-int/lit8 p1, p1, -0x36

    iget v0, p0, Lcom/hzbhd/common/ui/MenuListPopupWindow;->mListPaddingBottom:I

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/hzbhd/common/ui/MenuListPopupWindow;->setVerticalOffset(I)V

    goto :goto_2

    :cond_4
    :goto_1
    const/16 p1, -0x20

    .line 102
    invoke-virtual {p0, p1}, Lcom/hzbhd/common/ui/MenuListPopupWindow;->setVerticalOffset(I)V

    :goto_2
    const/4 p1, 0x2

    .line 108
    invoke-virtual {p0, p1}, Lcom/hzbhd/common/ui/MenuListPopupWindow;->setInputMethodMode(I)V

    .line 109
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/MenuListPopupWindow;->show()V

    .line 110
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/MenuListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 111
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/MenuListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    sget v3, Lcom/hzbhd/common/ui/R$drawable;->menu_list_bg:I

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setBackgroundResource(I)V

    .line 112
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/MenuListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget v3, p0, Lcom/hzbhd/common/ui/MenuListPopupWindow;->mListPaddingLeft:I

    iget v4, p0, Lcom/hzbhd/common/ui/MenuListPopupWindow;->mListPaddingTop:I

    iget v5, p0, Lcom/hzbhd/common/ui/MenuListPopupWindow;->mListPaddingRight:I

    iget v6, p0, Lcom/hzbhd/common/ui/MenuListPopupWindow;->mListPaddingBottom:I

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 113
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/MenuListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v3, p0, Lcom/hzbhd/common/ui/MenuListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/hzbhd/common/ui/R$drawable;->divider:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 114
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/MenuListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget v3, p0, Lcom/hzbhd/common/ui/MenuListPopupWindow;->mMenuItemListDividerHeight:I

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 115
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/MenuListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 116
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/MenuListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 117
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/MenuListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object p1

    sget v0, Lcom/hzbhd/common/ui/R$drawable;->selector_menu_list_item_bg:I

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setSelector(I)V

    .line 118
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/MenuListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object p1

    new-instance v0, Lcom/hzbhd/common/ui/MenuListPopupWindow$2;

    invoke-direct {v0, p0}, Lcom/hzbhd/common/ui/MenuListPopupWindow$2;-><init>(Lcom/hzbhd/common/ui/MenuListPopupWindow;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 126
    iget p1, p0, Lcom/hzbhd/common/ui/MenuListPopupWindow;->mListPaddingTop:I

    add-int/2addr p1, v2

    invoke-direct {p0, v1, p1}, Lcom/hzbhd/common/ui/MenuListPopupWindow;->firstSelection(II)V

    return-void
.end method
