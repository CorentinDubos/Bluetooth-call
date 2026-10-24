.class public Lcom/hzbhd/common/ui/TopBar;
.super Landroid/widget/RelativeLayout;
.source "TopBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/common/ui/TopBar$RelativeLayoutClickable;,
        Lcom/hzbhd/common/ui/TopBar$SXMSignal;,
        Lcom/hzbhd/common/ui/TopBar$Repeat;,
        Lcom/hzbhd/common/ui/TopBar$Shuffle;
    }
.end annotation


# static fields
.field private static final DELAY_HIDE_SYSTEM_STATUS_BAR:I = 0x1f40

.field private static final MSG_HIDE_SYSTEM_STATUS_BAR_DELAY:I


# instance fields
.field private mActionLayout:Landroid/widget/LinearLayout;

.field private mActivity:Landroid/app/Activity;

.field private mBack:Landroid/widget/ImageView;

.field private mClock:Lcom/hzbhd/common/ui/Clock;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLoadAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRepeatIv:Landroid/widget/ImageView;

.field private mRootView:Landroid/widget/RelativeLayout;

.field private mSXMSignalIv:Landroid/widget/ImageView;

.field private mShuffleIv:Landroid/widget/ImageView;

.field private mTitleIconIv:Landroid/widget/ImageView;

.field private mTitleLayout:Landroid/widget/RelativeLayout;

.field private mTitleTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1, v0}, Lcom/hzbhd/common/ui/TopBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, p1, p2, v0}, Lcom/hzbhd/common/ui/TopBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 101
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 108
    new-instance p2, Lcom/hzbhd/common/ui/TopBar$1;

    invoke-direct {p2, p0}, Lcom/hzbhd/common/ui/TopBar$1;-><init>(Lcom/hzbhd/common/ui/TopBar;)V

    iput-object p2, p0, Lcom/hzbhd/common/ui/TopBar;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 p2, 0x0

    .line 551
    iput-object p2, p0, Lcom/hzbhd/common/ui/TopBar;->mActivity:Landroid/app/Activity;

    .line 574
    new-instance p2, Lcom/hzbhd/common/ui/TopBar$5;

    invoke-direct {p2, p0}, Lcom/hzbhd/common/ui/TopBar$5;-><init>(Lcom/hzbhd/common/ui/TopBar;)V

    iput-object p2, p0, Lcom/hzbhd/common/ui/TopBar;->mHandler:Landroid/os/Handler;

    .line 102
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    iput-object p2, p0, Lcom/hzbhd/common/ui/TopBar;->mIntentFilter:Landroid/content/IntentFilter;

    const-string p3, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 103
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    iget-object p2, p0, Lcom/hzbhd/common/ui/TopBar;->mIntentFilter:Landroid/content/IntentFilter;

    const-string p3, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    invoke-direct {p0, p1}, Lcom/hzbhd/common/ui/TopBar;->initLayout(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/hzbhd/common/ui/TopBar;)Landroid/app/Activity;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/hzbhd/common/ui/TopBar;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method private hideActionButton()V
    .locals 2

    .line 381
    iget-object v0, p0, Lcom/hzbhd/common/ui/TopBar;->mActionLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private initLayout(Landroid/content/Context;)V
    .locals 1

    .line 229
    iput-object p1, p0, Lcom/hzbhd/common/ui/TopBar;->mContext:Landroid/content/Context;

    .line 230
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/common/ui/TopBar;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 231
    sget v0, Lcom/hzbhd/common/ui/R$layout;->top_bar_layout:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/hzbhd/common/ui/TopBar;->mRootView:Landroid/widget/RelativeLayout;

    .line 232
    sget v0, Lcom/hzbhd/common/ui/R$id;->tv_title:I

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/hzbhd/common/ui/TopBar;->mTitleTv:Landroid/widget/TextView;

    .line 233
    sget p1, Lcom/hzbhd/common/ui/R$id;->iv_title_icon:I

    invoke-virtual {p0, p1}, Lcom/hzbhd/common/ui/TopBar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/hzbhd/common/ui/TopBar;->mTitleIconIv:Landroid/widget/ImageView;

    .line 234
    iget-object p1, p0, Lcom/hzbhd/common/ui/TopBar;->mRootView:Landroid/widget/RelativeLayout;

    sget v0, Lcom/hzbhd/common/ui/R$id;->ll_action_btn:I

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/hzbhd/common/ui/TopBar;->mActionLayout:Landroid/widget/LinearLayout;

    .line 235
    iget-object p1, p0, Lcom/hzbhd/common/ui/TopBar;->mRootView:Landroid/widget/RelativeLayout;

    sget v0, Lcom/hzbhd/common/ui/R$id;->rl_top_bar_title:I

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/hzbhd/common/ui/TopBar;->mTitleLayout:Landroid/widget/RelativeLayout;

    .line 236
    new-instance v0, Lcom/hzbhd/common/ui/TopBar$2;

    invoke-direct {v0, p0}, Lcom/hzbhd/common/ui/TopBar$2;-><init>(Lcom/hzbhd/common/ui/TopBar;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    sget p1, Lcom/hzbhd/common/ui/R$id;->iv_top_bar_shuffle_mode:I

    invoke-virtual {p0, p1}, Lcom/hzbhd/common/ui/TopBar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/hzbhd/common/ui/TopBar;->mShuffleIv:Landroid/widget/ImageView;

    .line 268
    sget p1, Lcom/hzbhd/common/ui/R$id;->iv_top_bar_repeat_mode:I

    invoke-virtual {p0, p1}, Lcom/hzbhd/common/ui/TopBar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/hzbhd/common/ui/TopBar;->mRepeatIv:Landroid/widget/ImageView;

    .line 269
    sget p1, Lcom/hzbhd/common/ui/R$id;->iv_top_bar_sxm_signal:I

    invoke-virtual {p0, p1}, Lcom/hzbhd/common/ui/TopBar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/hzbhd/common/ui/TopBar;->mSXMSignalIv:Landroid/widget/ImageView;

    .line 270
    sget p1, Lcom/hzbhd/common/ui/R$id;->iv_topbar_back:I

    invoke-virtual {p0, p1}, Lcom/hzbhd/common/ui/TopBar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/hzbhd/common/ui/TopBar;->mBack:Landroid/widget/ImageView;

    .line 271
    new-instance v0, Lcom/hzbhd/common/ui/TopBar$3;

    invoke-direct {v0, p0}, Lcom/hzbhd/common/ui/TopBar$3;-><init>(Lcom/hzbhd/common/ui/TopBar;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    sget p1, Lcom/hzbhd/common/ui/R$id;->clock_top_bar_time:I

    invoke-virtual {p0, p1}, Lcom/hzbhd/common/ui/TopBar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/hzbhd/common/ui/Clock;

    iput-object p1, p0, Lcom/hzbhd/common/ui/TopBar;->mClock:Lcom/hzbhd/common/ui/Clock;

    .line 281
    new-instance v0, Lcom/hzbhd/common/ui/TopBar$4;

    invoke-direct {v0, p0}, Lcom/hzbhd/common/ui/TopBar$4;-><init>(Lcom/hzbhd/common/ui/TopBar;)V

    invoke-virtual {p1, v0}, Lcom/hzbhd/common/ui/Clock;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 289
    invoke-direct {p0}, Lcom/hzbhd/common/ui/TopBar;->hideActionButton()V

    .line 291
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/TopBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/hzbhd/common/ui/R$anim;->bt_indicator_progress:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lcom/hzbhd/common/ui/TopBar;->mLoadAnimation:Landroid/graphics/drawable/AnimationDrawable;

    return-void
.end method

.method private showActionButton()V
    .locals 2

    .line 377
    iget-object v0, p0, Lcom/hzbhd/common/ui/TopBar;->mActionLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 4

    .line 305
    invoke-direct {p0}, Lcom/hzbhd/common/ui/TopBar;->showActionButton()V

    .line 306
    iget-object v0, p0, Lcom/hzbhd/common/ui/TopBar;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/hzbhd/common/ui/R$layout;->top_bar_btn_layout:I

    iget-object v2, p0, Lcom/hzbhd/common/ui/TopBar;->mActionLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 307
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    const-string p1, "SEGOEUI"

    .line 308
    invoke-static {p1, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 309
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    iget-object p1, p0, Lcom/hzbhd/common/ui/TopBar;->mActionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    return-object v0
.end method

.method public addButton(I)V
    .locals 1

    const/4 v0, 0x0

    .line 315
    invoke-virtual {p0, p1, v0}, Lcom/hzbhd/common/ui/TopBar;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    return-void
.end method

.method public addImageButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 4

    .line 295
    invoke-direct {p0}, Lcom/hzbhd/common/ui/TopBar;->showActionButton()V

    .line 296
    iget-object v0, p0, Lcom/hzbhd/common/ui/TopBar;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/hzbhd/common/ui/R$layout;->top_bar_image_btn_layout:I

    iget-object v2, p0, Lcom/hzbhd/common/ui/TopBar;->mActionLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 298
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 299
    invoke-virtual {v0, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    iget-object p1, p0, Lcom/hzbhd/common/ui/TopBar;->mActionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    return-object v0
.end method

.method public clearAllButton()V
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/hzbhd/common/ui/TopBar;->mActionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    return-void
.end method

.method public disableAllButton()V
    .locals 4

    .line 361
    iget-object v0, p0, Lcom/hzbhd/common/ui/TopBar;->mActionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 363
    iget-object v3, p0, Lcom/hzbhd/common/ui/TopBar;->mActionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 364
    invoke-virtual {v3, v1}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public enableAllButton()V
    .locals 4

    .line 369
    iget-object v0, p0, Lcom/hzbhd/common/ui/TopBar;->mActionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 371
    iget-object v2, p0, Lcom/hzbhd/common/ui/TopBar;->mActionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    .line 372
    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getAllActionButton()[Landroid/view/View;
    .locals 4

    .line 485
    iget-object v0, p0, Lcom/hzbhd/common/ui/TopBar;->mActionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 487
    new-array v1, v0, [Landroid/view/View;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 489
    iget-object v3, p0, Lcom/hzbhd/common/ui/TopBar;->mActionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFirstActionButton()Landroid/view/View;
    .locals 2

    .line 507
    iget-object v0, p0, Lcom/hzbhd/common/ui/TopBar;->mActionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/hzbhd/common/ui/TopBar;->mActionLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLastActionButton()Landroid/view/View;
    .locals 2

    .line 497
    iget-object v0, p0, Lcom/hzbhd/common/ui/TopBar;->mActionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 499
    iget-object v1, p0, Lcom/hzbhd/common/ui/TopBar;->mActionLayout:Landroid/widget/LinearLayout;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitleView()Landroid/view/View;
    .locals 1

    .line 517
    iget-object v0, p0, Lcom/hzbhd/common/ui/TopBar;->mTitleLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public goHome()V
    .locals 2

    .line 420
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.MAIN"

    .line 421
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.HOME"

    .line 422
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 423
    iget-object v1, p0, Lcom/hzbhd/common/ui/TopBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method handleStateChanged(I)V
    .locals 0

    return-void
.end method

.method public hideRepeatIcon()V
    .locals 2

    .line 478
    iget-object v0, p0, Lcom/hzbhd/common/ui/TopBar;->mRepeatIv:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public hideSXMSignalIcon()V
    .locals 2

    .line 545
    iget-object v0, p0, Lcom/hzbhd/common/ui/TopBar;->mSXMSignalIv:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public hideShuffleIcon()V
    .locals 2

    .line 449
    iget-object v0, p0, Lcom/hzbhd/common/ui/TopBar;->mShuffleIv:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public hideSystemStatusBar()V
    .locals 3

    .line 565
    iget-object v0, p0, Lcom/hzbhd/common/ui/TopBar;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 566
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, -0x801

    const/16 v2, 0x800

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    .line 568
    iget-object v0, p0, Lcom/hzbhd/common/ui/TopBar;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 194
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 219
    iget-object v0, p0, Lcom/hzbhd/common/ui/TopBar;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/hzbhd/common/ui/TopBar;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/hzbhd/common/ui/TopBar;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 224
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 225
    iget-object v0, p0, Lcom/hzbhd/common/ui/TopBar;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/hzbhd/common/ui/TopBar;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public removeImageButton(I)V
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/hzbhd/common/ui/TopBar;->mActionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ltz p1, :cond_1

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/common/ui/TopBar;->mActionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public selectButton(I)V
    .locals 4

    .line 331
    iget-object v0, p0, Lcom/hzbhd/common/ui/TopBar;->mActionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ltz p1, :cond_2

    if-lt p1, v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 337
    iget-object v2, p0, Lcom/hzbhd/common/ui/TopBar;->mActionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v1, p1, :cond_1

    .line 339
    sget v3, Lcom/hzbhd/common/ui/R$drawable;->top_bar_btn_bg_s:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 341
    :cond_1
    sget v3, Lcom/hzbhd/common/ui/R$drawable;->selector_top_bar_btn_bg:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0

    .line 553
    iput-object p1, p0, Lcom/hzbhd/common/ui/TopBar;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public setRepeat(Lcom/hzbhd/common/ui/TopBar$Repeat;)V
    .locals 2

    .line 453
    iget-object v0, p0, Lcom/hzbhd/common/ui/TopBar;->mRepeatIv:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/hzbhd/common/ui/TopBar;->mRepeatIv:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 457
    :cond_0
    sget-object v0, Lcom/hzbhd/common/ui/TopBar$6;->$SwitchMap$com$hzbhd$common$ui$TopBar$Repeat:[I

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/TopBar$Repeat;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 468
    :cond_1
    iget-object p1, p0, Lcom/hzbhd/common/ui/TopBar;->mRepeatIv:Landroid/widget/ImageView;

    sget v0, Lcom/hzbhd/common/ui/R$drawable;->repeat_off:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 465
    :cond_2
    iget-object p1, p0, Lcom/hzbhd/common/ui/TopBar;->mRepeatIv:Landroid/widget/ImageView;

    sget v0, Lcom/hzbhd/common/ui/R$drawable;->repeat_folder:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 462
    :cond_3
    iget-object p1, p0, Lcom/hzbhd/common/ui/TopBar;->mRepeatIv:Landroid/widget/ImageView;

    sget v0, Lcom/hzbhd/common/ui/R$drawable;->repeat_all_tracks:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 459
    :cond_4
    iget-object p1, p0, Lcom/hzbhd/common/ui/TopBar;->mRepeatIv:Landroid/widget/ImageView;

    sget v0, Lcom/hzbhd/common/ui/R$drawable;->repeat_one_track:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public setRepeatClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/hzbhd/common/ui/TopBar;->mRepeatIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setSXMSignal(Lcom/hzbhd/common/ui/TopBar$SXMSignal;)V
    .locals 2

    .line 524
    iget-object v0, p0, Lcom/hzbhd/common/ui/TopBar;->mSXMSignalIv:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/hzbhd/common/ui/TopBar;->mSXMSignalIv:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 528
    :cond_0
    sget-object v0, Lcom/hzbhd/common/ui/TopBar$6;->$SwitchMap$com$hzbhd$common$ui$TopBar$SXMSignal:[I

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/TopBar$SXMSignal;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 539
    :cond_1
    iget-object p1, p0, Lcom/hzbhd/common/ui/TopBar;->mSXMSignalIv:Landroid/widget/ImageView;

    sget v0, Lcom/hzbhd/common/ui/R$drawable;->sxm_signal_level_3:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 536
    :cond_2
    iget-object p1, p0, Lcom/hzbhd/common/ui/TopBar;->mSXMSignalIv:Landroid/widget/ImageView;

    sget v0, Lcom/hzbhd/common/ui/R$drawable;->sxm_signal_level_2:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 533
    :cond_3
    iget-object p1, p0, Lcom/hzbhd/common/ui/TopBar;->mSXMSignalIv:Landroid/widget/ImageView;

    sget v0, Lcom/hzbhd/common/ui/R$drawable;->sxm_signal_level_1:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 530
    :cond_4
    iget-object p1, p0, Lcom/hzbhd/common/ui/TopBar;->mSXMSignalIv:Landroid/widget/ImageView;

    sget v0, Lcom/hzbhd/common/ui/R$drawable;->sxm_signal_level_0:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public setShuffle(Lcom/hzbhd/common/ui/TopBar$Shuffle;)V
    .locals 2

    .line 430
    iget-object v0, p0, Lcom/hzbhd/common/ui/TopBar;->mShuffleIv:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/hzbhd/common/ui/TopBar;->mShuffleIv:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 434
    :cond_0
    sget-object v0, Lcom/hzbhd/common/ui/TopBar$6;->$SwitchMap$com$hzbhd$common$ui$TopBar$Shuffle:[I

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/TopBar$Shuffle;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 439
    :cond_1
    iget-object p1, p0, Lcom/hzbhd/common/ui/TopBar;->mShuffleIv:Landroid/widget/ImageView;

    sget v0, Lcom/hzbhd/common/ui/R$drawable;->shuffle_off:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 436
    :cond_2
    iget-object p1, p0, Lcom/hzbhd/common/ui/TopBar;->mShuffleIv:Landroid/widget/ImageView;

    sget v0, Lcom/hzbhd/common/ui/R$drawable;->shuffle_on:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public setShuffleClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/hzbhd/common/ui/TopBar;->mShuffleIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/hzbhd/common/ui/TopBar;->mTitleTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/hzbhd/common/ui/TopBar;->mTitleTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/hzbhd/common/ui/TopBar;->mTitleLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setTitleIcon(I)V
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/hzbhd/common/ui/TopBar;->mTitleIconIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public showSystemStatusBar()V
    .locals 4

    .line 557
    iget-object v0, p0, Lcom/hzbhd/common/ui/TopBar;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 558
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x800

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 560
    iget-object v0, p0, Lcom/hzbhd/common/ui/TopBar;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public startAnimation(Landroid/widget/ImageView;)V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/hzbhd/common/ui/TopBar;->mLoadAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 133
    iget-object p1, p0, Lcom/hzbhd/common/ui/TopBar;->mLoadAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 134
    iget-object p1, p0, Lcom/hzbhd/common/ui/TopBar;->mLoadAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_0
    return-void
.end method

.method public stopAnimation()V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/hzbhd/common/ui/TopBar;->mLoadAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_0
    return-void
.end method

.method public unSelectButton(I)V
    .locals 3

    .line 347
    iget-object v0, p0, Lcom/hzbhd/common/ui/TopBar;->mActionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ltz p1, :cond_1

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/common/ui/TopBar;->mActionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 357
    sget v0, Lcom/hzbhd/common/ui/R$drawable;->selector_top_bar_btn_bg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    if-ge p1, v0, :cond_2

    .line 350
    iget-object v1, p0, Lcom/hzbhd/common/ui/TopBar;->mActionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 351
    sget v2, Lcom/hzbhd/common/ui/R$drawable;->selector_top_bar_btn_bg:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method
