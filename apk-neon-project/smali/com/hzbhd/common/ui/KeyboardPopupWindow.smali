.class public Lcom/hzbhd/common/ui/KeyboardPopupWindow;
.super Landroid/widget/PopupWindow;
.source "KeyboardPopupWindow.java"


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private mDismissTouchListener:Landroid/view/View$OnTouchListener;

.field private mInputView:Landroid/view/View;

.field private mKeyboard:Lcom/hzbhd/common/ui/Keyboard;

.field private mOnGotoKeyboardClickListener:Lcom/hzbhd/common/ui/Keyboard$OnGotoKeyboardClickListener;

.field private mOnGotoKeyboardLongClickListener:Lcom/hzbhd/common/ui/Keyboard$OnGotoKeyboardLongClickListener;

.field private mOnPhoneKeyboardClickListener:Lcom/hzbhd/common/ui/Keyboard$OnPhoneKeyboardClickListener;

.field private mOnPhoneKeyboardLongClickListener:Lcom/hzbhd/common/ui/Keyboard$OnPhoneKeyboardLongClickListener;

.field private mPopupMenuButton:Lcom/hzbhd/common/ui/PopupMenuButton;

.field private maxWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hzbhd/common/ui/Keyboard$KeyboardMode;)V
    .locals 3

    .line 48
    sget v0, Lcom/hzbhd/common/ui/R$style;->CustomDialogTheme:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 317
    iput-object v1, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->mOnGotoKeyboardLongClickListener:Lcom/hzbhd/common/ui/Keyboard$OnGotoKeyboardLongClickListener;

    .line 318
    iput-object v1, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->mOnPhoneKeyboardLongClickListener:Lcom/hzbhd/common/ui/Keyboard$OnPhoneKeyboardLongClickListener;

    .line 330
    iput-object v1, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->mOnGotoKeyboardClickListener:Lcom/hzbhd/common/ui/Keyboard$OnGotoKeyboardClickListener;

    .line 331
    iput-object v1, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->mOnPhoneKeyboardClickListener:Lcom/hzbhd/common/ui/Keyboard$OnPhoneKeyboardClickListener;

    .line 341
    new-instance v0, Lcom/hzbhd/common/ui/KeyboardPopupWindow$5;

    invoke-direct {v0, p0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow$5;-><init>(Lcom/hzbhd/common/ui/KeyboardPopupWindow;)V

    iput-object v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->mDismissTouchListener:Landroid/view/View$OnTouchListener;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/hzbhd/common/ui/R$dimen;->dp1024:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->maxWidth:F

    .line 51
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/hzbhd/common/ui/R$layout;->keyboard_popup_window_layout:I

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 52
    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->mDismissTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 53
    invoke-virtual {p0, p1}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->setContentView(Landroid/view/View;)V

    .line 54
    iget v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->maxWidth:F

    invoke-virtual {p0, v0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->getWidowHeight(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->setHeight(I)V

    .line 55
    iget v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->maxWidth:F

    invoke-virtual {p0, v0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->getWidowWidth(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->setWidth(I)V

    const/4 v0, 0x1

    .line 56
    invoke-virtual {p0, v0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->setFocusable(Z)V

    .line 57
    sget v0, Lcom/hzbhd/common/ui/R$id;->keyboard_popup:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/hzbhd/common/ui/Keyboard;

    iput-object p1, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->mKeyboard:Lcom/hzbhd/common/ui/Keyboard;

    .line 58
    invoke-virtual {p1, p2}, Lcom/hzbhd/common/ui/Keyboard;->setMode(Lcom/hzbhd/common/ui/Keyboard$KeyboardMode;)V

    .line 59
    iget-object p1, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->mKeyboard:Lcom/hzbhd/common/ui/Keyboard;

    new-instance p2, Lcom/hzbhd/common/ui/KeyboardPopupWindow$1;

    invoke-direct {p2, p0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow$1;-><init>(Lcom/hzbhd/common/ui/KeyboardPopupWindow;)V

    invoke-virtual {p1, p2}, Lcom/hzbhd/common/ui/Keyboard;->setOnGotoKeyboardClickListener(Lcom/hzbhd/common/ui/Keyboard$OnGotoKeyboardClickListener;)V

    .line 101
    iget-object p1, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->mKeyboard:Lcom/hzbhd/common/ui/Keyboard;

    new-instance p2, Lcom/hzbhd/common/ui/KeyboardPopupWindow$2;

    invoke-direct {p2, p0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow$2;-><init>(Lcom/hzbhd/common/ui/KeyboardPopupWindow;)V

    invoke-virtual {p1, p2}, Lcom/hzbhd/common/ui/Keyboard;->setOnGotoKeyboardLongClickListener(Lcom/hzbhd/common/ui/Keyboard$OnGotoKeyboardLongClickListener;)V

    .line 148
    iget-object p1, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->mKeyboard:Lcom/hzbhd/common/ui/Keyboard;

    new-instance p2, Lcom/hzbhd/common/ui/KeyboardPopupWindow$3;

    invoke-direct {p2, p0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow$3;-><init>(Lcom/hzbhd/common/ui/KeyboardPopupWindow;)V

    invoke-virtual {p1, p2}, Lcom/hzbhd/common/ui/Keyboard;->setOnPhoneKeyboardClickListener(Lcom/hzbhd/common/ui/Keyboard$OnPhoneKeyboardClickListener;)V

    .line 191
    iget-object p1, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->mKeyboard:Lcom/hzbhd/common/ui/Keyboard;

    new-instance p2, Lcom/hzbhd/common/ui/KeyboardPopupWindow$4;

    invoke-direct {p2, p0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow$4;-><init>(Lcom/hzbhd/common/ui/KeyboardPopupWindow;)V

    invoke-virtual {p1, p2}, Lcom/hzbhd/common/ui/Keyboard;->setOnPhoneKeyboardLongClickListener(Lcom/hzbhd/common/ui/Keyboard$OnPhoneKeyboardLongClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/hzbhd/common/ui/KeyboardPopupWindow;)Lcom/hzbhd/common/ui/PopupMenuButton;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->mPopupMenuButton:Lcom/hzbhd/common/ui/PopupMenuButton;

    return-object p0
.end method

.method static synthetic access$100(Lcom/hzbhd/common/ui/KeyboardPopupWindow;)Lcom/hzbhd/common/ui/Keyboard$OnGotoKeyboardClickListener;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->mOnGotoKeyboardClickListener:Lcom/hzbhd/common/ui/Keyboard$OnGotoKeyboardClickListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/hzbhd/common/ui/KeyboardPopupWindow;)Lcom/hzbhd/common/ui/Keyboard$OnGotoKeyboardLongClickListener;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->mOnGotoKeyboardLongClickListener:Lcom/hzbhd/common/ui/Keyboard$OnGotoKeyboardLongClickListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/hzbhd/common/ui/KeyboardPopupWindow;)Lcom/hzbhd/common/ui/Keyboard$OnPhoneKeyboardClickListener;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->mOnPhoneKeyboardClickListener:Lcom/hzbhd/common/ui/Keyboard$OnPhoneKeyboardClickListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/hzbhd/common/ui/KeyboardPopupWindow;)Lcom/hzbhd/common/ui/Keyboard$OnPhoneKeyboardLongClickListener;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->mOnPhoneKeyboardLongClickListener:Lcom/hzbhd/common/ui/Keyboard$OnPhoneKeyboardLongClickListener;

    return-object p0
.end method

.method private canHandleClick()Z
    .locals 1

    .line 356
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->mPopupMenuButton:Lcom/hzbhd/common/ui/PopupMenuButton;

    invoke-virtual {v0}, Lcom/hzbhd/common/ui/PopupMenuButton;->resetTimeout()V

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public clickCancel()V
    .locals 1

    .line 378
    invoke-direct {p0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->canHandleClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->mKeyboard:Lcom/hzbhd/common/ui/Keyboard;

    invoke-virtual {v0}, Lcom/hzbhd/common/ui/Keyboard;->clickCancel()V

    :cond_0
    return-void
.end method

.method public clickDel()V
    .locals 1

    .line 368
    invoke-direct {p0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->canHandleClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->mKeyboard:Lcom/hzbhd/common/ui/Keyboard;

    invoke-virtual {v0}, Lcom/hzbhd/common/ui/Keyboard;->clickDel()V

    :cond_0
    return-void
.end method

.method public clickKey(I)V
    .locals 1

    .line 363
    invoke-direct {p0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->canHandleClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->mKeyboard:Lcom/hzbhd/common/ui/Keyboard;

    invoke-virtual {v0, p1}, Lcom/hzbhd/common/ui/Keyboard;->clickKey(I)V

    :cond_0
    return-void
.end method

.method public clickOk()V
    .locals 1

    .line 373
    invoke-direct {p0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->canHandleClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->mKeyboard:Lcom/hzbhd/common/ui/Keyboard;

    invoke-virtual {v0}, Lcom/hzbhd/common/ui/Keyboard;->clickOk()V

    :cond_0
    return-void
.end method

.method public enableCancelButton(Z)V
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->mKeyboard:Lcom/hzbhd/common/ui/Keyboard;

    invoke-virtual {v0, p1}, Lcom/hzbhd/common/ui/Keyboard;->enableCancelButton(Z)V

    return-void
.end method

.method public enableOkButton(Z)V
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->mKeyboard:Lcom/hzbhd/common/ui/Keyboard;

    invoke-virtual {v0, p1}, Lcom/hzbhd/common/ui/Keyboard;->enableOkButton(Z)V

    return-void
.end method

.method public enableStarButton(Z)V
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->mKeyboard:Lcom/hzbhd/common/ui/Keyboard;

    invoke-virtual {v0, p1}, Lcom/hzbhd/common/ui/Keyboard;->enableStarButton(Z)V

    return-void
.end method

.method public enableWellButton(Z)V
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->mKeyboard:Lcom/hzbhd/common/ui/Keyboard;

    invoke-virtual {v0, p1}, Lcom/hzbhd/common/ui/Keyboard;->enableWellButton(Z)V

    return-void
.end method

.method public getCancelButton()Landroid/widget/Button;
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->mKeyboard:Lcom/hzbhd/common/ui/Keyboard;

    invoke-virtual {v0}, Lcom/hzbhd/common/ui/Keyboard;->getCancelButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public getOKButton()Landroid/widget/Button;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->mKeyboard:Lcom/hzbhd/common/ui/Keyboard;

    invoke-virtual {v0}, Lcom/hzbhd/common/ui/Keyboard;->getOKButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public getWidowHeight(F)I
    .locals 1

    const v0, 0x44484000    # 801.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    const/16 p1, 0x1e0

    return p1

    :cond_0
    const/16 p1, 0x258

    return p1
.end method

.method public getWidowWidth(F)I
    .locals 1

    const v0, 0x44484000    # 801.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    const/16 p1, 0x320

    return p1

    :cond_0
    const/16 p1, 0x400

    return p1
.end method

.method public setMode(Lcom/hzbhd/common/ui/Keyboard$KeyboardMode;)V
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->mKeyboard:Lcom/hzbhd/common/ui/Keyboard;

    invoke-virtual {v0, p1}, Lcom/hzbhd/common/ui/Keyboard;->setMode(Lcom/hzbhd/common/ui/Keyboard$KeyboardMode;)V

    return-void
.end method

.method public setOnGotoKeyboardClickListener(Lcom/hzbhd/common/ui/Keyboard$OnGotoKeyboardClickListener;)V
    .locals 0

    .line 334
    iput-object p1, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->mOnGotoKeyboardClickListener:Lcom/hzbhd/common/ui/Keyboard$OnGotoKeyboardClickListener;

    return-void
.end method

.method public setOnGotoKeyboardLongClickListener(Lcom/hzbhd/common/ui/Keyboard$OnGotoKeyboardLongClickListener;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->mOnGotoKeyboardLongClickListener:Lcom/hzbhd/common/ui/Keyboard$OnGotoKeyboardLongClickListener;

    return-void
.end method

.method public setOnPhoneKeyboardClickListener(Lcom/hzbhd/common/ui/Keyboard$OnPhoneKeyboardClickListener;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->mOnPhoneKeyboardClickListener:Lcom/hzbhd/common/ui/Keyboard$OnPhoneKeyboardClickListener;

    return-void
.end method

.method public setOnPhoneKeyboardLongClickListener(Lcom/hzbhd/common/ui/Keyboard$OnPhoneKeyboardLongClickListener;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->mOnPhoneKeyboardLongClickListener:Lcom/hzbhd/common/ui/Keyboard$OnPhoneKeyboardLongClickListener;

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->mKeyboard:Lcom/hzbhd/common/ui/Keyboard;

    invoke-virtual {v0, p1}, Lcom/hzbhd/common/ui/Keyboard;->setView(Landroid/view/View;)V

    return-void
.end method

.method public show(Lcom/hzbhd/common/ui/PopupMenuButton;)V
    .locals 1

    const/4 v0, 0x0

    .line 240
    invoke-virtual {p0, p1, v0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->show(Lcom/hzbhd/common/ui/PopupMenuButton;Landroid/view/View;)V

    return-void
.end method

.method public show(Lcom/hzbhd/common/ui/PopupMenuButton;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 244
    invoke-virtual {p0, p1, p2, v0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->show(Lcom/hzbhd/common/ui/PopupMenuButton;Landroid/view/View;Z)V

    return-void
.end method

.method public show(Lcom/hzbhd/common/ui/PopupMenuButton;Landroid/view/View;Z)V
    .locals 1

    .line 264
    iput-object p1, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->mPopupMenuButton:Lcom/hzbhd/common/ui/PopupMenuButton;

    if-eqz p3, :cond_0

    .line 266
    invoke-virtual {p1, p0}, Lcom/hzbhd/common/ui/PopupMenuButton;->addDismissTogetherPoppupWindow(Landroid/widget/PopupWindow;)V

    :cond_0
    const/4 p3, 0x1

    .line 267
    invoke-virtual {p0, p3}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->setOutsideTouchable(Z)V

    .line 268
    iget p3, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->maxWidth:F

    invoke-virtual {p0, p3}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->getWidowWidth(F)I

    move-result p3

    iget v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->maxWidth:F

    invoke-virtual {p0, v0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->getWidowHeight(F)I

    move-result v0

    invoke-virtual {p0, p1, p3, v0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->update(Landroid/view/View;II)V

    .line 269
    invoke-virtual {p0, p1}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 270
    iget-object p1, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->mKeyboard:Lcom/hzbhd/common/ui/Keyboard;

    invoke-virtual {p1, p2}, Lcom/hzbhd/common/ui/Keyboard;->setView(Landroid/view/View;)V

    return-void
.end method
