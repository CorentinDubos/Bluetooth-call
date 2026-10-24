.class public Lcom/hzbhd/common/ui/PopupMenuButton;
.super Landroid/widget/ImageButton;
.source "PopupMenuButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/common/ui/PopupMenuButton$OnSwitchClickListenerB;,
        Lcom/hzbhd/common/ui/PopupMenuButton$OnSwitchClickListener;,
        Lcom/hzbhd/common/ui/PopupMenuButton$OnTimeoutResetListener;,
        Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter;,
        Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;,
        Lcom/hzbhd/common/ui/PopupMenuButton$OnShowingListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mTimeoutForWindowDismiss:I


# instance fields
.field private final MSG_TIMEOUT_DISMISS:I

.field private mContext:Landroid/content/Context;

.field private mCoverBgPopupWindow:Landroid/widget/PopupWindow;

.field private mHandler:Landroid/os/Handler;

.field private mMenuListItemAdapter:Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter;

.field private mMenuPopupWindow:Lcom/hzbhd/common/ui/MenuPopupWindow;

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mOnShowingListener:Lcom/hzbhd/common/ui/PopupMenuButton$OnShowingListener;

.field private mOnSwitchClickListener:Lcom/hzbhd/common/ui/PopupMenuButton$OnSwitchClickListener;

.field private mOnSwitchClickListenerB:Lcom/hzbhd/common/ui/PopupMenuButton$OnSwitchClickListenerB;

.field private mOnTimeoutResetListener:Lcom/hzbhd/common/ui/PopupMenuButton$OnTimeoutResetListener;

.field private mPopupMenuListDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private mPopupMenuListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mPopupWindowVerticalOffset:I

.field private mPopupWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/PopupWindow;",
            ">;"
        }
    .end annotation
.end field

.field private mShowCoverBg:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-class v0, Lcom/hzbhd/common/ui/PopupMenuButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/common/ui/PopupMenuButton;->TAG:Ljava/lang/String;

    const/16 v0, 0x2710

    .line 642
    sput v0, Lcom/hzbhd/common/ui/PopupMenuButton;->mTimeoutForWindowDismiss:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, p1, v0}, Lcom/hzbhd/common/ui/PopupMenuButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 93
    invoke-direct {p0, p1, p2, v0}, Lcom/hzbhd/common/ui/PopupMenuButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 52
    iput p2, p0, Lcom/hzbhd/common/ui/PopupMenuButton;->mPopupWindowVerticalOffset:I

    const/4 p3, 0x1

    .line 60
    iput-boolean p3, p0, Lcom/hzbhd/common/ui/PopupMenuButton;->mShowCoverBg:Z

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/common/ui/PopupMenuButton;->mPopupWindows:Ljava/util/ArrayList;

    .line 252
    new-instance v0, Lcom/hzbhd/common/ui/PopupMenuButton$1;

    invoke-direct {v0, p0}, Lcom/hzbhd/common/ui/PopupMenuButton$1;-><init>(Lcom/hzbhd/common/ui/PopupMenuButton;)V

    iput-object v0, p0, Lcom/hzbhd/common/ui/PopupMenuButton;->mPopupMenuListDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 262
    new-instance v0, Lcom/hzbhd/common/ui/PopupMenuButton$2;

    invoke-direct {v0, p0}, Lcom/hzbhd/common/ui/PopupMenuButton$2;-><init>(Lcom/hzbhd/common/ui/PopupMenuButton;)V

    iput-object v0, p0, Lcom/hzbhd/common/ui/PopupMenuButton;->mPopupMenuListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 641
    iput p2, p0, Lcom/hzbhd/common/ui/PopupMenuButton;->MSG_TIMEOUT_DISMISS:I

    const/4 p2, 0x0

    .line 643
    iput-object p2, p0, Lcom/hzbhd/common/ui/PopupMenuButton;->mOnTimeoutResetListener:Lcom/hzbhd/common/ui/PopupMenuButton$OnTimeoutResetListener;

    .line 644
    new-instance v0, Lcom/hzbhd/common/ui/PopupMenuButton$4;

    invoke-direct {v0, p0}, Lcom/hzbhd/common/ui/PopupMenuButton$4;-><init>(Lcom/hzbhd/common/ui/PopupMenuButton;)V

    iput-object v0, p0, Lcom/hzbhd/common/ui/PopupMenuButton;->mHandler:Landroid/os/Handler;

    .line 683
    iput-object p2, p0, Lcom/hzbhd/common/ui/PopupMenuButton;->mOnSwitchClickListener:Lcom/hzbhd/common/ui/PopupMenuButton$OnSwitchClickListener;

    .line 684
    iput-object p2, p0, Lcom/hzbhd/common/ui/PopupMenuButton;->mOnSwitchClickListenerB:Lcom/hzbhd/common/ui/PopupMenuButton$OnSwitchClickListenerB;

    .line 70
    iput-object p1, p0, Lcom/hzbhd/common/ui/PopupMenuButton;->mContext:Landroid/content/Context;

    .line 72
    new-instance v0, Lcom/hzbhd/common/ui/MenuPopupWindow;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/hzbhd/common/ui/MenuPopupWindow;-><init>(Lcom/hzbhd/common/ui/PopupMenuButton;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/hzbhd/common/ui/PopupMenuButton;->mMenuPopupWindow:Lcom/hzbhd/common/ui/MenuPopupWindow;

    .line 74
    iget-object v1, p0, Lcom/hzbhd/common/ui/PopupMenuButton;->mPopupMenuListDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v0, v1}, Lcom/hzbhd/common/ui/MenuPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 75
    iget-object v0, p0, Lcom/hzbhd/common/ui/PopupMenuButton;->mMenuPopupWindow:Lcom/hzbhd/common/ui/MenuPopupWindow;

    iget-object v1, p0, Lcom/hzbhd/common/ui/PopupMenuButton;->mPopupMenuListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/hzbhd/common/ui/MenuPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 77
    new-instance v0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter;

    invoke-direct {v0, p0}, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter;-><init>(Lcom/hzbhd/common/ui/PopupMenuButton;)V

    iput-object v0, p0, Lcom/hzbhd/common/ui/PopupMenuButton;->mMenuListItemAdapter:Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter;

    .line 78
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getDeviceInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XPH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getDeviceInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "M2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    sget v0, Lcom/hzbhd/common/ui/R$drawable;->__m2__selector_menu_icon:I

    invoke-virtual {p0, v0}, Lcom/hzbhd/common/ui/PopupMenuButton;->setImageResource(I)V

    goto :goto_0

    .line 81
    :cond_0
    sget v0, Lcom/hzbhd/common/ui/R$attr;->selector_menu_icon:I

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hzbhd/common/ui/PopupMenuButton;->setImageResource(I)V

    :goto_0
    const v0, 0x106000d

    .line 84
    invoke-virtual {p0, v0}, Lcom/hzbhd/common/ui/PopupMenuButton;->setBackgroundResource(I)V

    .line 86
    new-instance v0, Landroid/widget/PopupWindow;

    const/16 v1, 0x320

    const/16 v2, 0x154

    invoke-direct {v0, v1, v2}, Landroid/widget/PopupWindow;-><init>(II)V

    iput-object v0, p0, Lcom/hzbhd/common/ui/PopupMenuButton;->mCoverBgPopupWindow:Landroid/widget/PopupWindow;

    .line 87
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/hzbhd/common/ui/R$layout;->popup_menu_cover_bg:I

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 88
    iget-object p2, p0, Lcom/hzbhd/common/ui/PopupMenuButton;->mCoverBgPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p2, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 89
    iget-object p1, p0, Lcom/hzbhd/common/ui/PopupMenuButton;->mCoverBgPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1, p3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/hzbhd/common/ui/PopupMenuButton;)Landroid/widget/PopupWindow$OnDismissListener;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/hzbhd/common/ui/PopupMenuButton;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/hzbhd/common/ui/PopupMenuButton;)Landroid/widget/PopupWindow;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/hzbhd/common/ui/PopupMenuButton;->mCoverBgPopupWindow:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic access$200(Lcom/hzbhd/common/ui/PopupMenuButton;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/hzbhd/common/ui/PopupMenuButton;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/hzbhd/common/ui/PopupMenuButton;)Landroid/content/Context;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/hzbhd/common/ui/PopupMenuButton;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private needExtraWidth()Z
    .locals 1

    .line 306
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/PopupMenuButton;->hasSwitchButton()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/hzbhd/common/ui/PopupMenuButton;->hasItemInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private notifyShowing()V
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/hzbhd/common/ui/PopupMenuButton;->mOnShowingListener:Lcom/hzbhd/common/ui/PopupMenuButton$OnShowingListener;

    if-eqz v0, :cond_0

    .line 350
    invoke-interface {v0}, Lcom/hzbhd/common/ui/PopupMenuButton$OnShowingListener;->onShowing()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected addDismissTogetherPoppupWindow(Landroid/widget/PopupWindow;)V
    .locals 1

    .line 272
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/PopupMenuButton;->resetTimeout()V

    .line 273
    iget-object v0, p0, Lcom/hzbhd/common/ui/PopupMenuButton;->mPopupWindows:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/hzbhd/common/ui/PopupMenuButton;->mPopupWindows:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addListItem(II)V
    .locals 3

    .line 146
    iget-object v0, p0, Lcom/hzbhd/common/ui/PopupMenuButton;->mMenuListItemAdapter:Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter;

    new-instance v1, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;

    iget-object v2, p0, Lcom/hzbhd/common/ui/PopupMenuButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p0, p1, p2}, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;-><init>(Lcom/hzbhd/common/ui/PopupMenuButton;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter;->addItem(Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;)V

    return-void
.end method

.method public addListItem(III)V
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/hzbhd/common/ui/PopupMenuButton;->mMenuListItemAdapter:Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter;

    new-instance v1, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;

    iget-object v2, p0, Lcom/hzbhd/common/ui/PopupMenuButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;-><init>(Lcom/hzbhd/common/ui/PopupMenuButton;ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter;->addItem(Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;)V

    return-void
.end method

.method public addListItem(IIZ)V
    .locals 8

    .line 176
    iget-object v0, p0, Lcom/hzbhd/common/ui/PopupMenuButton;->mMenuListItemAdapter:Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter;

    new-instance v7, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;

    iget-object v1, p0, Lcom/hzbhd/common/ui/PopupMenuButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;-><init>(Lcom/hzbhd/common/ui/PopupMenuButton;ILjava/lang/String;ZZ)V

    invoke-virtual {v0, v7}, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter;->addItem(Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;)V

    return-void
.end method

.method public addListItem(IIZLjava/lang/String;)V
    .locals 8

    .line 215
    iget-object v0, p0, Lcom/hzbhd/common/ui/PopupMenuButton;->mMenuListItemAdapter:Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter;

    new-instance v7, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;

    iget-object v1, p0, Lcom/hzbhd/common/ui/PopupMenuButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-nez p4, :cond_0

    const-string p4, ""

    :cond_0
    move-object v6, p4

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v5, p3

    .line 216
    invoke-direct/range {v1 .. v6}, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;-><init>(Lcom/hzbhd/common/ui/PopupMenuButton;ILjava/lang/String;ZLjava/lang/String;)V

    .line 215
    invoke-virtual {v0, v7}, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter;->addItem(Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;)V

    return-void
.end method

.method public addListItem(IIZLjava/lang/String;I)V
    .locals 9

    .line 234
    iget-object v0, p0, Lcom/hzbhd/common/ui/PopupMenuButton;->mMenuListItemAdapter:Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter;

    new-instance v8, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;

    iget-object v1, p0, Lcom/hzbhd/common/ui/PopupMenuButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-nez p4, :cond_0

    const-string p4, ""

    :cond_0
    move-object v6, p4

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move v5, p3

    move v7, p5

    .line 235
    invoke-direct/range {v1 .. v7}, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;-><init>(Lcom/hzbhd/common/ui/PopupMenuButton;ILjava/lang/String;ZLjava/lang/String;I)V

    .line 234
    invoke-virtual {v0, v8}, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter;->addItem(Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;)V

    return-void
.end method

.method public addListItem(IIZZ)V
    .locals 8

    .line 187
    iget-object v0, p0, Lcom/hzbhd/common/ui/PopupMenuButton;->mMenuListItemAdapter:Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter;

    new-instance v7, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;

    iget-object v1, p0, Lcom/hzbhd/common/ui/PopupMenuButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;-><init>(Lcom/hzbhd/common/ui/PopupMenuButton;ILjava/lang/String;ZZ)V

    invoke-virtual {v0, v7}, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter;->addItem(Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;)V

    return-void
.end method

.method public addListItem(IIZZI)V
    .locals 9

    .line 199
    iget-object v0, p0, Lcom/hzbhd/common/ui/PopupMenuButton;->mMenuListItemAdapter:Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter;

    new-instance v8, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;

    iget-object v1, p0, Lcom/hzbhd/common/ui/PopupMenuButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;-><init>(Lcom/hzbhd/common/ui/PopupMenuButton;ILjava/lang/String;ZZI)V

    invoke-virtual {v0, v8}, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter;->addItem(Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;)V

    return-void
.end method

.method public addListItem(ILjava/lang/String;)V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/hzbhd/common/ui/PopupMenuButton;->mMenuListItemAdapter:Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter;

    new-instance v1, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;

    invoke-direct {v1, p0, p1, p2}, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;-><init>(Lcom/hzbhd/common/ui/PopupMenuButton;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter;->addItem(Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;)V

    return-void
.end method

.method public addListItem(ILjava/lang/String;I)V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/hzbhd/common/ui/PopupMenuButton;->mMenuListItemAdapter:Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter;

    new-instance v1, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;-><init>(Lcom/hzbhd/common/ui/PopupMenuButton;ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter;->addItem(Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;)V

    return-void
.end method

.method public dismiss()V
    .locals 3

    .line 321
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/PopupMenuButton;->stopTimeout()V

    .line 322
    iget-object v0, p0, Lcom/hzbhd/common/ui/PopupMenuButton;->mMenuPopupWindow:Lcom/hzbhd/common/ui/MenuPopupWindow;

    invoke-virtual {v0}, Lcom/hzbhd/common/ui/MenuPopupWindow;->dismiss()V

    .line 323
    iget-boolean v0, p0, Lcom/hzbhd/common/ui/PopupMenuButton;->mShowCoverBg:Z

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/hzbhd/common/ui/PopupMenuButton;->mCoverBgPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/common/ui/PopupMenuButton;->mPopupWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/PopupWindow;

    .line 326
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 327
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method hasItemInfo()Z
    .locals 4

    .line 742
    iget-object v0, p0, Lcom/hzbhd/common/ui/PopupMenuButton;->mMenuListItemAdapter:Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter;

    invoke-virtual {v0}, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 744
    iget-object v3, p0, Lcom/hzbhd/common/ui/PopupMenuButton;->mMenuListItemAdapter:Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter;

    invoke-virtual {v3, v2}, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;

    .line 745
    iget-boolean v3, v3, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->mHasInfo:Z

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method hasSwitchButton()Z
    .locals 4

    .line 699
    iget-object v0, p0, Lcom/hzbhd/common/ui/PopupMenuButton;->mMenuListItemAdapter:Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter;

    invoke-virtual {v0}, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 701
    iget-object v3, p0, Lcom/hzbhd/common/ui/PopupMenuButton;->mMenuListItemAdapter:Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter;

    invoke-virtual {v3, v2}, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;

    .line 702
    iget-boolean v3, v3, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->mHasSwitch:Z

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public init()V
    .locals 2

    const/4 v0, 0x7

    const/4 v1, 0x1

    .line 282
    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/common/ui/PopupMenuButton;->init(IZ)V

    return-void
.end method

.method public init(IZ)V
    .locals 0

    .line 294
    iput-boolean p2, p0, Lcom/hzbhd/common/ui/PopupMenuButton;->mShowCoverBg:Z

    .line 295
    iget-object p2, p0, Lcom/hzbhd/common/ui/PopupMenuButton;->mMenuPopupWindow:Lcom/hzbhd/common/ui/MenuPopupWindow;

    invoke-virtual {p2, p1}, Lcom/hzbhd/common/ui/MenuPopupWindow;->setMaxItemCountForDisplay(I)V

    .line 296
    iget-object p1, p0, Lcom/hzbhd/common/ui/PopupMenuButton;->mMenuPopupWindow:Lcom/hzbhd/common/ui/MenuPopupWindow;

    iget-object p2, p0, Lcom/hzbhd/common/ui/PopupMenuButton;->mMenuListItemAdapter:Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter;

    invoke-virtual {p1, p2}, Lcom/hzbhd/common/ui/MenuPopupWindow;->setAdapter(Landroid/widget/BaseAdapter;)V

    .line 297
    new-instance p1, Lcom/hzbhd/common/ui/PopupMenuButton$3;

    invoke-direct {p1, p0}, Lcom/hzbhd/common/ui/PopupMenuButton$3;-><init>(Lcom/hzbhd/common/ui/PopupMenuButton;)V

    invoke-virtual {p0, p1}, Lcom/hzbhd/common/ui/PopupMenuButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/hzbhd/common/ui/PopupMenuButton;->mMenuPopupWindow:Lcom/hzbhd/common/ui/MenuPopupWindow;

    invoke-virtual {v0}, Lcom/hzbhd/common/ui/MenuPopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method protected notifySwitchClick(IZLandroid/view/View;)V
    .locals 1

    .line 726
    iget-object v0, p0, Lcom/hzbhd/common/ui/PopupMenuButton;->mOnSwitchClickListener:Lcom/hzbhd/common/ui/PopupMenuButton$OnSwitchClickListener;

    if-eqz v0, :cond_0

    .line 727
    invoke-interface {v0, p1, p2}, Lcom/hzbhd/common/ui/PopupMenuButton$OnSwitchClickListener;->onSwitchClick(IZ)V

    .line 729
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/common/ui/PopupMenuButton;->mOnSwitchClickListenerB:Lcom/hzbhd/common/ui/PopupMenuButton$OnSwitchClickListenerB;

    if-eqz p1, :cond_1

    .line 730
    invoke-interface {p1, p3, p2}, Lcom/hzbhd/common/ui/PopupMenuButton$OnSwitchClickListenerB;->onSwitchClick(Landroid/view/View;Z)V

    :cond_1
    return-void
.end method

.method public reset()V
    .locals 2

    .line 239
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/PopupMenuButton;->dismiss()V

    .line 240
    iget-object v0, p0, Lcom/hzbhd/common/ui/PopupMenuButton;->mMenuListItemAdapter:Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter;

    invoke-virtual {v0}, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter;->reset()V

    const/4 v0, 0x0

    .line 241
    invoke-virtual {p0, v0}, Lcom/hzbhd/common/ui/PopupMenuButton;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 242
    invoke-virtual {p0, v0}, Lcom/hzbhd/common/ui/PopupMenuButton;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 243
    sget v1, Lcom/hzbhd/common/ui/PopupMenuButton;->mTimeoutForWindowDismiss:I

    invoke-virtual {p0, v1}, Lcom/hzbhd/common/ui/PopupMenuButton;->setTimeoutMs(I)V

    .line 244
    invoke-virtual {p0, v0}, Lcom/hzbhd/common/ui/PopupMenuButton;->setOnSwitchClickListener(Lcom/hzbhd/common/ui/PopupMenuButton$OnSwitchClickListener;)V

    .line 245
    invoke-virtual {p0, v0}, Lcom/hzbhd/common/ui/PopupMenuButton;->setOnSwitchClickListenerB(Lcom/hzbhd/common/ui/PopupMenuButton$OnSwitchClickListenerB;)V

    return-void
.end method

.method public resetTimeout()V
    .locals 1

    .line 662
    iget-object v0, p0, Lcom/hzbhd/common/ui/PopupMenuButton;->mOnTimeoutResetListener:Lcom/hzbhd/common/ui/PopupMenuButton$OnTimeoutResetListener;

    if-eqz v0, :cond_0

    .line 663
    invoke-interface {v0}, Lcom/hzbhd/common/ui/PopupMenuButton$OnTimeoutResetListener;->timeoutReset()V

    :cond_0
    return-void
.end method

.method public setMaxItemCountForDisplay(I)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/hzbhd/common/ui/PopupMenuButton;->mMenuPopupWindow:Lcom/hzbhd/common/ui/MenuPopupWindow;

    invoke-virtual {v0, p1}, Lcom/hzbhd/common/ui/MenuPopupWindow;->setMaxItemCountForDisplay(I)V

    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    .line 337
    iput-object p1, p0, Lcom/hzbhd/common/ui/PopupMenuButton;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/hzbhd/common/ui/PopupMenuButton;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public setOnShowingListener(Lcom/hzbhd/common/ui/PopupMenuButton$OnShowingListener;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lcom/hzbhd/common/ui/PopupMenuButton;->mOnShowingListener:Lcom/hzbhd/common/ui/PopupMenuButton$OnShowingListener;

    return-void
.end method

.method public setOnSwitchClickListener(Lcom/hzbhd/common/ui/PopupMenuButton$OnSwitchClickListener;)V
    .locals 0

    .line 718
    iput-object p1, p0, Lcom/hzbhd/common/ui/PopupMenuButton;->mOnSwitchClickListener:Lcom/hzbhd/common/ui/PopupMenuButton$OnSwitchClickListener;

    return-void
.end method

.method public setOnSwitchClickListenerB(Lcom/hzbhd/common/ui/PopupMenuButton$OnSwitchClickListenerB;)V
    .locals 0

    .line 722
    iput-object p1, p0, Lcom/hzbhd/common/ui/PopupMenuButton;->mOnSwitchClickListenerB:Lcom/hzbhd/common/ui/PopupMenuButton$OnSwitchClickListenerB;

    return-void
.end method

.method public setTimeoutMs(I)V
    .locals 0

    .line 672
    sput p1, Lcom/hzbhd/common/ui/PopupMenuButton;->mTimeoutForWindowDismiss:I

    .line 673
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/PopupMenuButton;->resetTimeout()V

    return-void
.end method

.method public setTimeoutResetListener(Lcom/hzbhd/common/ui/PopupMenuButton$OnTimeoutResetListener;)V
    .locals 0

    .line 677
    iput-object p1, p0, Lcom/hzbhd/common/ui/PopupMenuButton;->mOnTimeoutResetListener:Lcom/hzbhd/common/ui/PopupMenuButton$OnTimeoutResetListener;

    return-void
.end method

.method public show()V
    .locals 4

    .line 310
    iget-object v0, p0, Lcom/hzbhd/common/ui/PopupMenuButton;->mMenuListItemAdapter:Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter;

    invoke-virtual {v0}, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 313
    :cond_0
    iget-boolean v0, p0, Lcom/hzbhd/common/ui/PopupMenuButton;->mShowCoverBg:Z

    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/hzbhd/common/ui/PopupMenuButton;->mCoverBgPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 315
    :cond_1
    iget-object v0, p0, Lcom/hzbhd/common/ui/PopupMenuButton;->mMenuPopupWindow:Lcom/hzbhd/common/ui/MenuPopupWindow;

    invoke-direct {p0}, Lcom/hzbhd/common/ui/PopupMenuButton;->needExtraWidth()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hzbhd/common/ui/MenuPopupWindow;->show(Z)V

    .line 316
    iget-object v0, p0, Lcom/hzbhd/common/ui/PopupMenuButton;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 317
    invoke-direct {p0}, Lcom/hzbhd/common/ui/PopupMenuButton;->notifyShowing()V

    return-void
.end method

.method stopTimeout()V
    .locals 2

    .line 668
    iget-object v0, p0, Lcom/hzbhd/common/ui/PopupMenuButton;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public updateItemInfo(ILjava/lang/String;)V
    .locals 1

    .line 738
    iget-object v0, p0, Lcom/hzbhd/common/ui/PopupMenuButton;->mMenuListItemAdapter:Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter;->updateItemInfo(ILjava/lang/String;)V

    return-void
.end method

.method public updateSwitchOff(IZ)V
    .locals 1

    .line 714
    iget-object v0, p0, Lcom/hzbhd/common/ui/PopupMenuButton;->mMenuListItemAdapter:Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter;->updateSwitchOnOff(IZ)V

    return-void
.end method

.method public updateSwitchOffbyId(IZ)V
    .locals 1

    .line 710
    iget-object v0, p0, Lcom/hzbhd/common/ui/PopupMenuButton;->mMenuListItemAdapter:Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter;->updateSwitchOnOffbyId(IZ)V

    return-void
.end method
