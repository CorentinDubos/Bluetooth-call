.class public Lcom/hzbhd/common/ui/VolSettingPopupWindow;
.super Landroid/widget/PopupWindow;
.source "VolSettingPopupWindow.java"


# static fields
.field private static mTimeoutForWindowDismiss:I = 0x7530


# instance fields
.field private final MSG_TIMEOUT_DISMISS:I

.field mContext:Landroid/content/Context;

.field mCoverBgPopupWindow:Lcom/hzbhd/common/ui/CoverBgPopupWindow;

.field mCurProgressTv:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field mSeekBar:Landroid/widget/SeekBar;

.field private mThisView:Landroid/view/View;

.field mTitleTv:Landroid/widget/TextView;

.field private mWindowHeight:I

.field private mWindowWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, p1, v0}, Lcom/hzbhd/common/ui/VolSettingPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 91
    invoke-direct {p0, p1, p2, v0}, Lcom/hzbhd/common/ui/VolSettingPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 94
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p2, 0xfb

    .line 69
    iput p2, p0, Lcom/hzbhd/common/ui/VolSettingPopupWindow;->mWindowHeight:I

    const/16 p2, 0x194

    .line 70
    iput p2, p0, Lcom/hzbhd/common/ui/VolSettingPopupWindow;->mWindowWidth:I

    const/4 p2, 0x0

    .line 72
    iput p2, p0, Lcom/hzbhd/common/ui/VolSettingPopupWindow;->MSG_TIMEOUT_DISMISS:I

    .line 74
    new-instance p2, Lcom/hzbhd/common/ui/VolSettingPopupWindow$1;

    invoke-direct {p2, p0}, Lcom/hzbhd/common/ui/VolSettingPopupWindow$1;-><init>(Lcom/hzbhd/common/ui/VolSettingPopupWindow;)V

    iput-object p2, p0, Lcom/hzbhd/common/ui/VolSettingPopupWindow;->mHandler:Landroid/os/Handler;

    .line 95
    iput-object p1, p0, Lcom/hzbhd/common/ui/VolSettingPopupWindow;->mContext:Landroid/content/Context;

    .line 96
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/VolSettingPopupWindow;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/hzbhd/common/ui/VolSettingPopupWindow;)Landroid/os/Handler;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/hzbhd/common/ui/VolSettingPopupWindow;->mHandler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method init()V
    .locals 4

    .line 100
    iget-object v0, p0, Lcom/hzbhd/common/ui/VolSettingPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/hzbhd/common/ui/R$layout;->vol_setting_window:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/hzbhd/common/ui/VolSettingPopupWindow;->mThisView:Landroid/view/View;

    .line 101
    sget v1, Lcom/hzbhd/common/ui/R$id;->seekbar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/hzbhd/common/ui/VolSettingPopupWindow;->mSeekBar:Landroid/widget/SeekBar;

    .line 102
    iget-object v0, p0, Lcom/hzbhd/common/ui/VolSettingPopupWindow;->mThisView:Landroid/view/View;

    sget v1, Lcom/hzbhd/common/ui/R$id;->curr_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hzbhd/common/ui/VolSettingPopupWindow;->mCurProgressTv:Landroid/widget/TextView;

    .line 103
    iget-object v0, p0, Lcom/hzbhd/common/ui/VolSettingPopupWindow;->mThisView:Landroid/view/View;

    sget v1, Lcom/hzbhd/common/ui/R$id;->tv_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hzbhd/common/ui/VolSettingPopupWindow;->mTitleTv:Landroid/widget/TextView;

    .line 104
    iget-object v0, p0, Lcom/hzbhd/common/ui/VolSettingPopupWindow;->mThisView:Landroid/view/View;

    sget v1, Lcom/hzbhd/common/ui/R$id;->btn_vol_setting_ok:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 105
    new-instance v1, Lcom/hzbhd/common/ui/VolSettingPopupWindow$2;

    invoke-direct {v1, p0}, Lcom/hzbhd/common/ui/VolSettingPopupWindow$2;-><init>(Lcom/hzbhd/common/ui/VolSettingPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v0, p0, Lcom/hzbhd/common/ui/VolSettingPopupWindow;->mThisView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/hzbhd/common/ui/VolSettingPopupWindow;->setContentView(Landroid/view/View;)V

    .line 113
    new-instance v0, Lcom/hzbhd/common/ui/CoverBgPopupWindow;

    iget-object v1, p0, Lcom/hzbhd/common/ui/VolSettingPopupWindow;->mContext:Landroid/content/Context;

    const/16 v2, 0x320

    const/16 v3, 0x154

    invoke-direct {v0, v1, v2, v3}, Lcom/hzbhd/common/ui/CoverBgPopupWindow;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/hzbhd/common/ui/VolSettingPopupWindow;->mCoverBgPopupWindow:Lcom/hzbhd/common/ui/CoverBgPopupWindow;

    .line 114
    new-instance v0, Lcom/hzbhd/common/ui/VolSettingPopupWindow$3;

    invoke-direct {v0, p0}, Lcom/hzbhd/common/ui/VolSettingPopupWindow$3;-><init>(Lcom/hzbhd/common/ui/VolSettingPopupWindow;)V

    invoke-virtual {p0, v0}, Lcom/hzbhd/common/ui/VolSettingPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 122
    iget-object v0, p0, Lcom/hzbhd/common/ui/VolSettingPopupWindow;->mThisView:Landroid/view/View;

    new-instance v1, Lcom/hzbhd/common/ui/VolSettingPopupWindow$4;

    invoke-direct {v1, p0}, Lcom/hzbhd/common/ui/VolSettingPopupWindow$4;-><init>(Lcom/hzbhd/common/ui/VolSettingPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public resetTimeout()V
    .locals 4

    .line 133
    iget-object v0, p0, Lcom/hzbhd/common/ui/VolSettingPopupWindow;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 134
    iget-object v0, p0, Lcom/hzbhd/common/ui/VolSettingPopupWindow;->mHandler:Landroid/os/Handler;

    sget v2, Lcom/hzbhd/common/ui/VolSettingPopupWindow;->mTimeoutForWindowDismiss:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public setCurProgress(I)V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/hzbhd/common/ui/VolSettingPopupWindow;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method public setCurProgressText(I)V
    .locals 4

    int-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    .line 141
    iget-object p1, p0, Lcom/hzbhd/common/ui/VolSettingPopupWindow;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    int-to-double v2, p1

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    double-to-float p1, v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 142
    iget-object v0, p0, Lcom/hzbhd/common/ui/VolSettingPopupWindow;->mCurProgressTv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " %"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setCurProgressText(Ljava/lang/String;)V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/hzbhd/common/ui/VolSettingPopupWindow;->mCurProgressTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/hzbhd/common/ui/VolSettingPopupWindow;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public setSeekMaxProgress(I)V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/hzbhd/common/ui/VolSettingPopupWindow;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setMax(I)V

    return-void
.end method

.method public setTimeoutMs(I)V
    .locals 0

    .line 193
    sput p1, Lcom/hzbhd/common/ui/VolSettingPopupWindow;->mTimeoutForWindowDismiss:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/hzbhd/common/ui/VolSettingPopupWindow;->mTitleTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setWindowSize(II)V
    .locals 0

    add-int/lit8 p1, p1, 0x14

    .line 154
    iput p1, p0, Lcom/hzbhd/common/ui/VolSettingPopupWindow;->mWindowWidth:I

    add-int/lit8 p2, p2, 0x14

    .line 155
    iput p2, p0, Lcom/hzbhd/common/ui/VolSettingPopupWindow;->mWindowHeight:I

    return-void
.end method

.method public show(Landroid/view/View;IIILjava/lang/String;)V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/hzbhd/common/ui/VolSettingPopupWindow;->mCoverBgPopupWindow:Lcom/hzbhd/common/ui/CoverBgPopupWindow;

    invoke-virtual {v0, p1}, Lcom/hzbhd/common/ui/CoverBgPopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 170
    iget v0, p0, Lcom/hzbhd/common/ui/VolSettingPopupWindow;->mWindowWidth:I

    invoke-virtual {p0, v0}, Lcom/hzbhd/common/ui/VolSettingPopupWindow;->setWidth(I)V

    .line 171
    iget v0, p0, Lcom/hzbhd/common/ui/VolSettingPopupWindow;->mWindowHeight:I

    invoke-virtual {p0, v0}, Lcom/hzbhd/common/ui/VolSettingPopupWindow;->setHeight(I)V

    const/4 v0, 0x1

    .line 172
    invoke-virtual {p0, v0}, Lcom/hzbhd/common/ui/VolSettingPopupWindow;->setOutsideTouchable(Z)V

    .line 173
    iget-object v0, p0, Lcom/hzbhd/common/ui/VolSettingPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/hzbhd/common/ui/R$drawable;->b_popup_info_bg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hzbhd/common/ui/VolSettingPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p5, :cond_0

    .line 175
    invoke-virtual {p0, p5}, Lcom/hzbhd/common/ui/VolSettingPopupWindow;->setCurProgressText(Ljava/lang/String;)V

    goto :goto_0

    .line 177
    :cond_0
    invoke-virtual {p0, p4}, Lcom/hzbhd/common/ui/VolSettingPopupWindow;->setCurProgressText(I)V

    .line 178
    :goto_0
    invoke-virtual {p0, p4}, Lcom/hzbhd/common/ui/VolSettingPopupWindow;->setCurProgress(I)V

    .line 179
    invoke-virtual {p0, p1, p2, p3}, Lcom/hzbhd/common/ui/VolSettingPopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void
.end method

.method public show(Lcom/hzbhd/common/ui/PopupMenuButton;ILjava/lang/String;)V
    .locals 7

    .line 184
    iget v0, p0, Lcom/hzbhd/common/ui/VolSettingPopupWindow;->mWindowWidth:I

    rsub-int v0, v0, 0x320

    div-int/lit8 v3, v0, 0x2

    .line 185
    iget v0, p0, Lcom/hzbhd/common/ui/VolSettingPopupWindow;->mWindowHeight:I

    rsub-int v0, v0, 0x1e0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v4, v0, -0x4c

    move-object v1, p0

    move-object v2, p1

    move v5, p2

    move-object v6, p3

    .line 187
    invoke-virtual/range {v1 .. v6}, Lcom/hzbhd/common/ui/VolSettingPopupWindow;->show(Landroid/view/View;IIILjava/lang/String;)V

    .line 189
    iget-object p1, p0, Lcom/hzbhd/common/ui/VolSettingPopupWindow;->mHandler:Landroid/os/Handler;

    sget p2, Lcom/hzbhd/common/ui/VolSettingPopupWindow;->mTimeoutForWindowDismiss:I

    int-to-long p2, p2

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
