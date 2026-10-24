.class public Lcom/hzbhd/common/ui/Keyboard;
.super Landroid/widget/RelativeLayout;
.source "Keyboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/common/ui/Keyboard$OnPinKeyboardClickListener;,
        Lcom/hzbhd/common/ui/Keyboard$OnPhoneKeyboardClickListener;,
        Lcom/hzbhd/common/ui/Keyboard$OnGotoKeyboardClickListener;,
        Lcom/hzbhd/common/ui/Keyboard$OnKeyboardClickListener;,
        Lcom/hzbhd/common/ui/Keyboard$OnPhoneKeyboardLongClickListener;,
        Lcom/hzbhd/common/ui/Keyboard$OnGotoKeyboardLongClickListener;,
        Lcom/hzbhd/common/ui/Keyboard$OnKeyboardLongClickListener;,
        Lcom/hzbhd/common/ui/Keyboard$KeyboardMode;
    }
.end annotation


# static fields
.field public static final MODE_DTMF:I = 0x2

.field public static final MODE_GOTO:I = 0x0

.field public static final MODE_PHONE:I = 0x1

.field public static final MODE_PIN:I = 0x3


# instance fields
.field private mCancelBtn:Landroid/widget/Button;

.field private mDelIb:Landroid/widget/ImageButton;

.field private mInputAreaRl:Landroid/widget/RelativeLayout;

.field private mKey0Btn:Lcom/hzbhd/common/ui/KeyboardButton;

.field private mKey1Btn:Lcom/hzbhd/common/ui/KeyboardButton;

.field private mKey2Btn:Lcom/hzbhd/common/ui/KeyboardButton;

.field private mKey3Btn:Lcom/hzbhd/common/ui/KeyboardButton;

.field private mKey4Btn:Lcom/hzbhd/common/ui/KeyboardButton;

.field private mKey5Btn:Lcom/hzbhd/common/ui/KeyboardButton;

.field private mKey6Btn:Lcom/hzbhd/common/ui/KeyboardButton;

.field private mKey7Btn:Lcom/hzbhd/common/ui/KeyboardButton;

.field private mKey8Btn:Lcom/hzbhd/common/ui/KeyboardButton;

.field private mKey9Btn:Lcom/hzbhd/common/ui/KeyboardButton;

.field private mKeyboardFirstLine:Landroid/widget/RelativeLayout;

.field private mKeyboardLayout:Landroid/widget/TableLayout;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mMode:Lcom/hzbhd/common/ui/Keyboard$KeyboardMode;

.field private mOkBtn:Landroid/widget/Button;

.field private mOnGotoKeyboardClickListener:Lcom/hzbhd/common/ui/Keyboard$OnGotoKeyboardClickListener;

.field private mOnGotoKeyboardLongClickListener:Lcom/hzbhd/common/ui/Keyboard$OnGotoKeyboardLongClickListener;

.field private mOnPhoneKeyboardClickListener:Lcom/hzbhd/common/ui/Keyboard$OnPhoneKeyboardClickListener;

.field private mOnPhoneKeyboardLongClickListener:Lcom/hzbhd/common/ui/Keyboard$OnPhoneKeyboardLongClickListener;

.field private mOnPinKeyboardClickListener:Lcom/hzbhd/common/ui/Keyboard$OnPinKeyboardClickListener;

.field private mRootView:Landroid/widget/RelativeLayout;

.field private mStarIb:Landroid/widget/ImageButton;

.field private mWellIb:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, p1, v0}, Lcom/hzbhd/common/ui/Keyboard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, p1, p2, v0}, Lcom/hzbhd/common/ui/Keyboard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 109
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    sget-object p3, Lcom/hzbhd/common/ui/Keyboard$KeyboardMode;->GOTO:Lcom/hzbhd/common/ui/Keyboard$KeyboardMode;

    iput-object p3, p0, Lcom/hzbhd/common/ui/Keyboard;->mMode:Lcom/hzbhd/common/ui/Keyboard$KeyboardMode;

    .line 595
    new-instance p3, Lcom/hzbhd/common/ui/Keyboard$33;

    invoke-direct {p3, p0}, Lcom/hzbhd/common/ui/Keyboard$33;-><init>(Lcom/hzbhd/common/ui/Keyboard;)V

    iput-object p3, p0, Lcom/hzbhd/common/ui/Keyboard;->mOnGotoKeyboardLongClickListener:Lcom/hzbhd/common/ui/Keyboard$OnGotoKeyboardLongClickListener;

    .line 623
    new-instance p3, Lcom/hzbhd/common/ui/Keyboard$34;

    invoke-direct {p3, p0}, Lcom/hzbhd/common/ui/Keyboard$34;-><init>(Lcom/hzbhd/common/ui/Keyboard;)V

    iput-object p3, p0, Lcom/hzbhd/common/ui/Keyboard;->mOnPhoneKeyboardLongClickListener:Lcom/hzbhd/common/ui/Keyboard$OnPhoneKeyboardLongClickListener;

    .line 688
    new-instance p3, Lcom/hzbhd/common/ui/Keyboard$35;

    invoke-direct {p3, p0}, Lcom/hzbhd/common/ui/Keyboard$35;-><init>(Lcom/hzbhd/common/ui/Keyboard;)V

    iput-object p3, p0, Lcom/hzbhd/common/ui/Keyboard;->mOnGotoKeyboardClickListener:Lcom/hzbhd/common/ui/Keyboard$OnGotoKeyboardClickListener;

    .line 711
    new-instance p3, Lcom/hzbhd/common/ui/Keyboard$36;

    invoke-direct {p3, p0}, Lcom/hzbhd/common/ui/Keyboard$36;-><init>(Lcom/hzbhd/common/ui/Keyboard;)V

    iput-object p3, p0, Lcom/hzbhd/common/ui/Keyboard;->mOnPhoneKeyboardClickListener:Lcom/hzbhd/common/ui/Keyboard$OnPhoneKeyboardClickListener;

    .line 734
    new-instance p3, Lcom/hzbhd/common/ui/Keyboard$37;

    invoke-direct {p3, p0}, Lcom/hzbhd/common/ui/Keyboard$37;-><init>(Lcom/hzbhd/common/ui/Keyboard;)V

    iput-object p3, p0, Lcom/hzbhd/common/ui/Keyboard;->mOnPinKeyboardClickListener:Lcom/hzbhd/common/ui/Keyboard$OnPinKeyboardClickListener;

    .line 111
    sget-object p3, Lcom/hzbhd/common/ui/R$styleable;->keyboard:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 112
    sget p3, Lcom/hzbhd/common/ui/R$styleable;->keyboard_keyboard_mode:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 113
    invoke-static {p3}, Lcom/hzbhd/common/ui/Keyboard$KeyboardMode;->intToKeyboardMode(I)Lcom/hzbhd/common/ui/Keyboard$KeyboardMode;

    move-result-object p3

    iput-object p3, p0, Lcom/hzbhd/common/ui/Keyboard;->mMode:Lcom/hzbhd/common/ui/Keyboard$KeyboardMode;

    .line 114
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 116
    invoke-direct {p0, p1}, Lcom/hzbhd/common/ui/Keyboard;->initLayout(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/hzbhd/common/ui/Keyboard;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/hzbhd/common/ui/Keyboard;->onNumClick(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/hzbhd/common/ui/Keyboard;I)Z
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/hzbhd/common/ui/Keyboard;->onNumLongClick(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/hzbhd/common/ui/Keyboard;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/hzbhd/common/ui/Keyboard;->onWellClick()V

    return-void
.end method

.method static synthetic access$1100(Lcom/hzbhd/common/ui/Keyboard;)Z
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/hzbhd/common/ui/Keyboard;->onWellLongClick()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/hzbhd/common/ui/Keyboard;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/hzbhd/common/ui/Keyboard;->onCancelClick()V

    return-void
.end method

.method static synthetic access$300(Lcom/hzbhd/common/ui/Keyboard;)Z
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/hzbhd/common/ui/Keyboard;->onCancelLongClick()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/hzbhd/common/ui/Keyboard;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/hzbhd/common/ui/Keyboard;->onOKClick()V

    return-void
.end method

.method static synthetic access$500(Lcom/hzbhd/common/ui/Keyboard;)Z
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/hzbhd/common/ui/Keyboard;->onOKLongClick()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/hzbhd/common/ui/Keyboard;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/hzbhd/common/ui/Keyboard;->onDelClick()V

    return-void
.end method

.method static synthetic access$700(Lcom/hzbhd/common/ui/Keyboard;)Z
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/hzbhd/common/ui/Keyboard;->onDelLongClick()Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/hzbhd/common/ui/Keyboard;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/hzbhd/common/ui/Keyboard;->onStarClick()V

    return-void
.end method

.method static synthetic access$900(Lcom/hzbhd/common/ui/Keyboard;)Z
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/hzbhd/common/ui/Keyboard;->onStarLongClick()Z

    move-result p0

    return p0
.end method

.method private applyMode(Lcom/hzbhd/common/ui/Keyboard$KeyboardMode;)V
    .locals 3

    .line 497
    iput-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mMode:Lcom/hzbhd/common/ui/Keyboard$KeyboardMode;

    .line 498
    sget-object v0, Lcom/hzbhd/common/ui/Keyboard$KeyboardMode;->PHONE:Lcom/hzbhd/common/ui/Keyboard$KeyboardMode;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    .line 499
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey0Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/KeyboardButton;->showChar()V

    .line 500
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey1Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/KeyboardButton;->showChar()V

    .line 501
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey2Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/KeyboardButton;->showChar()V

    .line 502
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey3Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/KeyboardButton;->showChar()V

    .line 503
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey4Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/KeyboardButton;->showChar()V

    .line 504
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey5Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/KeyboardButton;->showChar()V

    .line 505
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey6Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/KeyboardButton;->showChar()V

    .line 506
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey7Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/KeyboardButton;->showChar()V

    .line 507
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey8Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/KeyboardButton;->showChar()V

    .line 508
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey9Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/KeyboardButton;->showChar()V

    .line 509
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mCancelBtn:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 510
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mOkBtn:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 511
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mDelIb:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 512
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mStarIb:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 513
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mWellIb:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_0

    .line 514
    :cond_0
    sget-object v0, Lcom/hzbhd/common/ui/Keyboard$KeyboardMode;->DTMF:Lcom/hzbhd/common/ui/Keyboard$KeyboardMode;

    if-ne p1, v0, :cond_1

    .line 515
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey0Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/KeyboardButton;->hideChar()V

    .line 516
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey1Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/KeyboardButton;->hideChar()V

    .line 517
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey2Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/KeyboardButton;->hideChar()V

    .line 518
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey3Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/KeyboardButton;->hideChar()V

    .line 519
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey4Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/KeyboardButton;->hideChar()V

    .line 520
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey5Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/KeyboardButton;->hideChar()V

    .line 521
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey6Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/KeyboardButton;->hideChar()V

    .line 522
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey7Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/KeyboardButton;->hideChar()V

    .line 523
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey8Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/KeyboardButton;->hideChar()V

    .line 524
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey9Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/KeyboardButton;->hideChar()V

    .line 525
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mDelIb:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 526
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mCancelBtn:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 527
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mOkBtn:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 528
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mStarIb:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 529
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mWellIb:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_0

    .line 530
    :cond_1
    sget-object v0, Lcom/hzbhd/common/ui/Keyboard$KeyboardMode;->PIN:Lcom/hzbhd/common/ui/Keyboard$KeyboardMode;

    if-ne p1, v0, :cond_2

    .line 531
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey0Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/KeyboardButton;->hideChar()V

    .line 532
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey1Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/KeyboardButton;->hideChar()V

    .line 533
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey2Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/KeyboardButton;->hideChar()V

    .line 534
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey3Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/KeyboardButton;->hideChar()V

    .line 535
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey4Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/KeyboardButton;->hideChar()V

    .line 536
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey5Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/KeyboardButton;->hideChar()V

    .line 537
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey6Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/KeyboardButton;->hideChar()V

    .line 538
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey7Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/KeyboardButton;->hideChar()V

    .line 539
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey8Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/KeyboardButton;->hideChar()V

    .line 540
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey9Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/KeyboardButton;->hideChar()V

    .line 541
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mDelIb:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 542
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mCancelBtn:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 543
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mOkBtn:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 544
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mStarIb:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 545
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mWellIb:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 547
    :cond_2
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey0Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/KeyboardButton;->hideChar()V

    .line 548
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey1Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/KeyboardButton;->hideChar()V

    .line 549
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey2Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/KeyboardButton;->hideChar()V

    .line 550
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey3Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/KeyboardButton;->hideChar()V

    .line 551
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey4Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/KeyboardButton;->hideChar()V

    .line 552
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey5Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/KeyboardButton;->hideChar()V

    .line 553
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey6Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/KeyboardButton;->hideChar()V

    .line 554
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey7Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/KeyboardButton;->hideChar()V

    .line 555
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey8Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/KeyboardButton;->hideChar()V

    .line 556
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey9Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/KeyboardButton;->hideChar()V

    .line 557
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mDelIb:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 558
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mCancelBtn:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 559
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mOkBtn:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 560
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mStarIb:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 561
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mWellIb:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private initLayout(Landroid/content/Context;)V
    .locals 1

    .line 123
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 124
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mMode:Lcom/hzbhd/common/ui/Keyboard$KeyboardMode;

    sget-object v0, Lcom/hzbhd/common/ui/Keyboard$KeyboardMode;->PIN:Lcom/hzbhd/common/ui/Keyboard$KeyboardMode;

    if-ne p1, v0, :cond_0

    .line 125
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/hzbhd/common/ui/R$layout;->common_keyboard_layout2:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mRootView:Landroid/widget/RelativeLayout;

    goto :goto_0

    .line 127
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/hzbhd/common/ui/R$layout;->common_keyboard_layout:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mRootView:Landroid/widget/RelativeLayout;

    .line 130
    :goto_0
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mRootView:Landroid/widget/RelativeLayout;

    sget v0, Lcom/hzbhd/common/ui/R$id;->rl_keyboard_input_area_common:I

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mInputAreaRl:Landroid/widget/RelativeLayout;

    .line 131
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mRootView:Landroid/widget/RelativeLayout;

    sget v0, Lcom/hzbhd/common/ui/R$id;->btn_key_0_common:I

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/hzbhd/common/ui/KeyboardButton;

    iput-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey0Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    .line 132
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mRootView:Landroid/widget/RelativeLayout;

    sget v0, Lcom/hzbhd/common/ui/R$id;->btn_key_1_common:I

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/hzbhd/common/ui/KeyboardButton;

    iput-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey1Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    .line 133
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mRootView:Landroid/widget/RelativeLayout;

    sget v0, Lcom/hzbhd/common/ui/R$id;->btn_key_2_common:I

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/hzbhd/common/ui/KeyboardButton;

    iput-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey2Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    .line 134
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mRootView:Landroid/widget/RelativeLayout;

    sget v0, Lcom/hzbhd/common/ui/R$id;->btn_key_3_common:I

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/hzbhd/common/ui/KeyboardButton;

    iput-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey3Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    .line 135
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mRootView:Landroid/widget/RelativeLayout;

    sget v0, Lcom/hzbhd/common/ui/R$id;->btn_key_4_common:I

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/hzbhd/common/ui/KeyboardButton;

    iput-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey4Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    .line 136
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mRootView:Landroid/widget/RelativeLayout;

    sget v0, Lcom/hzbhd/common/ui/R$id;->btn_key_5_common:I

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/hzbhd/common/ui/KeyboardButton;

    iput-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey5Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    .line 137
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mRootView:Landroid/widget/RelativeLayout;

    sget v0, Lcom/hzbhd/common/ui/R$id;->btn_key_6_common:I

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/hzbhd/common/ui/KeyboardButton;

    iput-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey6Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    .line 138
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mRootView:Landroid/widget/RelativeLayout;

    sget v0, Lcom/hzbhd/common/ui/R$id;->btn_key_7_common:I

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/hzbhd/common/ui/KeyboardButton;

    iput-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey7Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    .line 139
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mRootView:Landroid/widget/RelativeLayout;

    sget v0, Lcom/hzbhd/common/ui/R$id;->btn_key_8_common:I

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/hzbhd/common/ui/KeyboardButton;

    iput-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey8Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    .line 140
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mRootView:Landroid/widget/RelativeLayout;

    sget v0, Lcom/hzbhd/common/ui/R$id;->btn_key_9_common:I

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/hzbhd/common/ui/KeyboardButton;

    iput-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey9Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    .line 141
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mRootView:Landroid/widget/RelativeLayout;

    sget v0, Lcom/hzbhd/common/ui/R$id;->btn_key_cancel_common:I

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mCancelBtn:Landroid/widget/Button;

    .line 142
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mRootView:Landroid/widget/RelativeLayout;

    sget v0, Lcom/hzbhd/common/ui/R$id;->btn_key_ok_common:I

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mOkBtn:Landroid/widget/Button;

    .line 143
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mRootView:Landroid/widget/RelativeLayout;

    sget v0, Lcom/hzbhd/common/ui/R$id;->btn_keyboard_del_common:I

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mDelIb:Landroid/widget/ImageButton;

    .line 144
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mRootView:Landroid/widget/RelativeLayout;

    sget v0, Lcom/hzbhd/common/ui/R$id;->ib_key_star_common:I

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mStarIb:Landroid/widget/ImageButton;

    .line 145
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mRootView:Landroid/widget/RelativeLayout;

    sget v0, Lcom/hzbhd/common/ui/R$id;->ib_key_well_common:I

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mWellIb:Landroid/widget/ImageButton;

    .line 146
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mRootView:Landroid/widget/RelativeLayout;

    sget v0, Lcom/hzbhd/common/ui/R$id;->tl_keyboard_layout:I

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TableLayout;

    iput-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKeyboardLayout:Landroid/widget/TableLayout;

    .line 147
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mRootView:Landroid/widget/RelativeLayout;

    sget v0, Lcom/hzbhd/common/ui/R$id;->rl_keyboard_first_line_layout:I

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKeyboardFirstLine:Landroid/widget/RelativeLayout;

    .line 149
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey0Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    new-instance v0, Lcom/hzbhd/common/ui/Keyboard$1;

    invoke-direct {v0, p0}, Lcom/hzbhd/common/ui/Keyboard$1;-><init>(Lcom/hzbhd/common/ui/Keyboard;)V

    invoke-virtual {p1, v0}, Lcom/hzbhd/common/ui/KeyboardButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey0Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    new-instance v0, Lcom/hzbhd/common/ui/Keyboard$2;

    invoke-direct {v0, p0}, Lcom/hzbhd/common/ui/Keyboard$2;-><init>(Lcom/hzbhd/common/ui/Keyboard;)V

    invoke-virtual {p1, v0}, Lcom/hzbhd/common/ui/KeyboardButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 161
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey1Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    new-instance v0, Lcom/hzbhd/common/ui/Keyboard$3;

    invoke-direct {v0, p0}, Lcom/hzbhd/common/ui/Keyboard$3;-><init>(Lcom/hzbhd/common/ui/Keyboard;)V

    invoke-virtual {p1, v0}, Lcom/hzbhd/common/ui/KeyboardButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey1Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    new-instance v0, Lcom/hzbhd/common/ui/Keyboard$4;

    invoke-direct {v0, p0}, Lcom/hzbhd/common/ui/Keyboard$4;-><init>(Lcom/hzbhd/common/ui/Keyboard;)V

    invoke-virtual {p1, v0}, Lcom/hzbhd/common/ui/KeyboardButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 174
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey2Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    new-instance v0, Lcom/hzbhd/common/ui/Keyboard$5;

    invoke-direct {v0, p0}, Lcom/hzbhd/common/ui/Keyboard$5;-><init>(Lcom/hzbhd/common/ui/Keyboard;)V

    invoke-virtual {p1, v0}, Lcom/hzbhd/common/ui/KeyboardButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey2Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    new-instance v0, Lcom/hzbhd/common/ui/Keyboard$6;

    invoke-direct {v0, p0}, Lcom/hzbhd/common/ui/Keyboard$6;-><init>(Lcom/hzbhd/common/ui/Keyboard;)V

    invoke-virtual {p1, v0}, Lcom/hzbhd/common/ui/KeyboardButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 186
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey3Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    new-instance v0, Lcom/hzbhd/common/ui/Keyboard$7;

    invoke-direct {v0, p0}, Lcom/hzbhd/common/ui/Keyboard$7;-><init>(Lcom/hzbhd/common/ui/Keyboard;)V

    invoke-virtual {p1, v0}, Lcom/hzbhd/common/ui/KeyboardButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey3Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    new-instance v0, Lcom/hzbhd/common/ui/Keyboard$8;

    invoke-direct {v0, p0}, Lcom/hzbhd/common/ui/Keyboard$8;-><init>(Lcom/hzbhd/common/ui/Keyboard;)V

    invoke-virtual {p1, v0}, Lcom/hzbhd/common/ui/KeyboardButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 198
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey4Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    new-instance v0, Lcom/hzbhd/common/ui/Keyboard$9;

    invoke-direct {v0, p0}, Lcom/hzbhd/common/ui/Keyboard$9;-><init>(Lcom/hzbhd/common/ui/Keyboard;)V

    invoke-virtual {p1, v0}, Lcom/hzbhd/common/ui/KeyboardButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey4Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    new-instance v0, Lcom/hzbhd/common/ui/Keyboard$10;

    invoke-direct {v0, p0}, Lcom/hzbhd/common/ui/Keyboard$10;-><init>(Lcom/hzbhd/common/ui/Keyboard;)V

    invoke-virtual {p1, v0}, Lcom/hzbhd/common/ui/KeyboardButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 210
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey5Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    new-instance v0, Lcom/hzbhd/common/ui/Keyboard$11;

    invoke-direct {v0, p0}, Lcom/hzbhd/common/ui/Keyboard$11;-><init>(Lcom/hzbhd/common/ui/Keyboard;)V

    invoke-virtual {p1, v0}, Lcom/hzbhd/common/ui/KeyboardButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey5Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    new-instance v0, Lcom/hzbhd/common/ui/Keyboard$12;

    invoke-direct {v0, p0}, Lcom/hzbhd/common/ui/Keyboard$12;-><init>(Lcom/hzbhd/common/ui/Keyboard;)V

    invoke-virtual {p1, v0}, Lcom/hzbhd/common/ui/KeyboardButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 222
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey6Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    new-instance v0, Lcom/hzbhd/common/ui/Keyboard$13;

    invoke-direct {v0, p0}, Lcom/hzbhd/common/ui/Keyboard$13;-><init>(Lcom/hzbhd/common/ui/Keyboard;)V

    invoke-virtual {p1, v0}, Lcom/hzbhd/common/ui/KeyboardButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey6Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    new-instance v0, Lcom/hzbhd/common/ui/Keyboard$14;

    invoke-direct {v0, p0}, Lcom/hzbhd/common/ui/Keyboard$14;-><init>(Lcom/hzbhd/common/ui/Keyboard;)V

    invoke-virtual {p1, v0}, Lcom/hzbhd/common/ui/KeyboardButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 234
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey7Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    new-instance v0, Lcom/hzbhd/common/ui/Keyboard$15;

    invoke-direct {v0, p0}, Lcom/hzbhd/common/ui/Keyboard$15;-><init>(Lcom/hzbhd/common/ui/Keyboard;)V

    invoke-virtual {p1, v0}, Lcom/hzbhd/common/ui/KeyboardButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey7Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    new-instance v0, Lcom/hzbhd/common/ui/Keyboard$16;

    invoke-direct {v0, p0}, Lcom/hzbhd/common/ui/Keyboard$16;-><init>(Lcom/hzbhd/common/ui/Keyboard;)V

    invoke-virtual {p1, v0}, Lcom/hzbhd/common/ui/KeyboardButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 246
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey8Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    new-instance v0, Lcom/hzbhd/common/ui/Keyboard$17;

    invoke-direct {v0, p0}, Lcom/hzbhd/common/ui/Keyboard$17;-><init>(Lcom/hzbhd/common/ui/Keyboard;)V

    invoke-virtual {p1, v0}, Lcom/hzbhd/common/ui/KeyboardButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey8Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    new-instance v0, Lcom/hzbhd/common/ui/Keyboard$18;

    invoke-direct {v0, p0}, Lcom/hzbhd/common/ui/Keyboard$18;-><init>(Lcom/hzbhd/common/ui/Keyboard;)V

    invoke-virtual {p1, v0}, Lcom/hzbhd/common/ui/KeyboardButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 259
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey9Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    new-instance v0, Lcom/hzbhd/common/ui/Keyboard$19;

    invoke-direct {v0, p0}, Lcom/hzbhd/common/ui/Keyboard$19;-><init>(Lcom/hzbhd/common/ui/Keyboard;)V

    invoke-virtual {p1, v0}, Lcom/hzbhd/common/ui/KeyboardButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey9Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    new-instance v0, Lcom/hzbhd/common/ui/Keyboard$20;

    invoke-direct {v0, p0}, Lcom/hzbhd/common/ui/Keyboard$20;-><init>(Lcom/hzbhd/common/ui/Keyboard;)V

    invoke-virtual {p1, v0}, Lcom/hzbhd/common/ui/KeyboardButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 272
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mCancelBtn:Landroid/widget/Button;

    new-instance v0, Lcom/hzbhd/common/ui/Keyboard$21;

    invoke-direct {v0, p0}, Lcom/hzbhd/common/ui/Keyboard$21;-><init>(Lcom/hzbhd/common/ui/Keyboard;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mCancelBtn:Landroid/widget/Button;

    new-instance v0, Lcom/hzbhd/common/ui/Keyboard$22;

    invoke-direct {v0, p0}, Lcom/hzbhd/common/ui/Keyboard$22;-><init>(Lcom/hzbhd/common/ui/Keyboard;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 284
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mOkBtn:Landroid/widget/Button;

    new-instance v0, Lcom/hzbhd/common/ui/Keyboard$23;

    invoke-direct {v0, p0}, Lcom/hzbhd/common/ui/Keyboard$23;-><init>(Lcom/hzbhd/common/ui/Keyboard;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mOkBtn:Landroid/widget/Button;

    new-instance v0, Lcom/hzbhd/common/ui/Keyboard$24;

    invoke-direct {v0, p0}, Lcom/hzbhd/common/ui/Keyboard$24;-><init>(Lcom/hzbhd/common/ui/Keyboard;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 296
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mDelIb:Landroid/widget/ImageButton;

    new-instance v0, Lcom/hzbhd/common/ui/Keyboard$25;

    invoke-direct {v0, p0}, Lcom/hzbhd/common/ui/Keyboard$25;-><init>(Lcom/hzbhd/common/ui/Keyboard;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mDelIb:Landroid/widget/ImageButton;

    new-instance v0, Lcom/hzbhd/common/ui/Keyboard$26;

    invoke-direct {v0, p0}, Lcom/hzbhd/common/ui/Keyboard$26;-><init>(Lcom/hzbhd/common/ui/Keyboard;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 309
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mStarIb:Landroid/widget/ImageButton;

    new-instance v0, Lcom/hzbhd/common/ui/Keyboard$27;

    invoke-direct {v0, p0}, Lcom/hzbhd/common/ui/Keyboard$27;-><init>(Lcom/hzbhd/common/ui/Keyboard;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mStarIb:Landroid/widget/ImageButton;

    new-instance v0, Lcom/hzbhd/common/ui/Keyboard$28;

    invoke-direct {v0, p0}, Lcom/hzbhd/common/ui/Keyboard$28;-><init>(Lcom/hzbhd/common/ui/Keyboard;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 322
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mWellIb:Landroid/widget/ImageButton;

    new-instance v0, Lcom/hzbhd/common/ui/Keyboard$29;

    invoke-direct {v0, p0}, Lcom/hzbhd/common/ui/Keyboard$29;-><init>(Lcom/hzbhd/common/ui/Keyboard;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mWellIb:Landroid/widget/ImageButton;

    new-instance v0, Lcom/hzbhd/common/ui/Keyboard$30;

    invoke-direct {v0, p0}, Lcom/hzbhd/common/ui/Keyboard$30;-><init>(Lcom/hzbhd/common/ui/Keyboard;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 337
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKeyboardLayout:Landroid/widget/TableLayout;

    new-instance v0, Lcom/hzbhd/common/ui/Keyboard$31;

    invoke-direct {v0, p0}, Lcom/hzbhd/common/ui/Keyboard$31;-><init>(Lcom/hzbhd/common/ui/Keyboard;)V

    invoke-virtual {p1, v0}, Landroid/widget/TableLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 343
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKeyboardFirstLine:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/hzbhd/common/ui/Keyboard$32;

    invoke-direct {v0, p0}, Lcom/hzbhd/common/ui/Keyboard$32;-><init>(Lcom/hzbhd/common/ui/Keyboard;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 350
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mMode:Lcom/hzbhd/common/ui/Keyboard$KeyboardMode;

    invoke-virtual {p0, p1}, Lcom/hzbhd/common/ui/Keyboard;->setMode(Lcom/hzbhd/common/ui/Keyboard$KeyboardMode;)V

    return-void
.end method

.method private onCancelClick()V
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/hzbhd/common/ui/Keyboard;->mOnGotoKeyboardClickListener:Lcom/hzbhd/common/ui/Keyboard$OnGotoKeyboardClickListener;

    invoke-interface {v0}, Lcom/hzbhd/common/ui/Keyboard$OnGotoKeyboardClickListener;->onCancel()V

    return-void
.end method

.method private onCancelLongClick()Z
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/hzbhd/common/ui/Keyboard;->mOnGotoKeyboardLongClickListener:Lcom/hzbhd/common/ui/Keyboard$OnGotoKeyboardLongClickListener;

    invoke-interface {v0}, Lcom/hzbhd/common/ui/Keyboard$OnGotoKeyboardLongClickListener;->onCancelLongClick()Z

    move-result v0

    return v0
.end method

.method private onDelClick()V
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/hzbhd/common/ui/Keyboard;->mOnGotoKeyboardClickListener:Lcom/hzbhd/common/ui/Keyboard$OnGotoKeyboardClickListener;

    invoke-interface {v0}, Lcom/hzbhd/common/ui/Keyboard$OnGotoKeyboardClickListener;->onDel()V

    .line 375
    iget-object v0, p0, Lcom/hzbhd/common/ui/Keyboard;->mOnPhoneKeyboardClickListener:Lcom/hzbhd/common/ui/Keyboard$OnPhoneKeyboardClickListener;

    invoke-interface {v0}, Lcom/hzbhd/common/ui/Keyboard$OnPhoneKeyboardClickListener;->onDel()V

    .line 376
    iget-object v0, p0, Lcom/hzbhd/common/ui/Keyboard;->mOnPinKeyboardClickListener:Lcom/hzbhd/common/ui/Keyboard$OnPinKeyboardClickListener;

    invoke-interface {v0}, Lcom/hzbhd/common/ui/Keyboard$OnPinKeyboardClickListener;->onDel()V

    return-void
.end method

.method private onDelLongClick()Z
    .locals 2

    .line 380
    iget-object v0, p0, Lcom/hzbhd/common/ui/Keyboard;->mMode:Lcom/hzbhd/common/ui/Keyboard$KeyboardMode;

    sget-object v1, Lcom/hzbhd/common/ui/Keyboard$KeyboardMode;->GOTO:Lcom/hzbhd/common/ui/Keyboard$KeyboardMode;

    if-ne v0, v1, :cond_0

    .line 381
    iget-object v0, p0, Lcom/hzbhd/common/ui/Keyboard;->mOnGotoKeyboardLongClickListener:Lcom/hzbhd/common/ui/Keyboard$OnGotoKeyboardLongClickListener;

    invoke-interface {v0}, Lcom/hzbhd/common/ui/Keyboard$OnGotoKeyboardLongClickListener;->onDelLongClick()Z

    move-result v0

    return v0

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/common/ui/Keyboard;->mMode:Lcom/hzbhd/common/ui/Keyboard$KeyboardMode;

    sget-object v1, Lcom/hzbhd/common/ui/Keyboard$KeyboardMode;->PHONE:Lcom/hzbhd/common/ui/Keyboard$KeyboardMode;

    if-ne v0, v1, :cond_1

    .line 383
    iget-object v0, p0, Lcom/hzbhd/common/ui/Keyboard;->mOnPhoneKeyboardLongClickListener:Lcom/hzbhd/common/ui/Keyboard$OnPhoneKeyboardLongClickListener;

    invoke-interface {v0}, Lcom/hzbhd/common/ui/Keyboard$OnPhoneKeyboardLongClickListener;->onDelLongClick()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private onNumClick(I)V
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/hzbhd/common/ui/Keyboard;->mOnGotoKeyboardClickListener:Lcom/hzbhd/common/ui/Keyboard$OnGotoKeyboardClickListener;

    invoke-interface {v0, p1}, Lcom/hzbhd/common/ui/Keyboard$OnGotoKeyboardClickListener;->onNumberClick(I)V

    .line 355
    iget-object v0, p0, Lcom/hzbhd/common/ui/Keyboard;->mOnPhoneKeyboardClickListener:Lcom/hzbhd/common/ui/Keyboard$OnPhoneKeyboardClickListener;

    invoke-interface {v0, p1}, Lcom/hzbhd/common/ui/Keyboard$OnPhoneKeyboardClickListener;->onNumberClick(I)V

    .line 356
    iget-object v0, p0, Lcom/hzbhd/common/ui/Keyboard;->mOnPinKeyboardClickListener:Lcom/hzbhd/common/ui/Keyboard$OnPinKeyboardClickListener;

    invoke-interface {v0, p1}, Lcom/hzbhd/common/ui/Keyboard$OnPinKeyboardClickListener;->onNumberClick(I)V

    return-void
.end method

.method private onNumLongClick(I)Z
    .locals 2

    .line 360
    iget-object v0, p0, Lcom/hzbhd/common/ui/Keyboard;->mMode:Lcom/hzbhd/common/ui/Keyboard$KeyboardMode;

    sget-object v1, Lcom/hzbhd/common/ui/Keyboard$KeyboardMode;->GOTO:Lcom/hzbhd/common/ui/Keyboard$KeyboardMode;

    if-ne v0, v1, :cond_0

    .line 361
    iget-object v0, p0, Lcom/hzbhd/common/ui/Keyboard;->mOnGotoKeyboardLongClickListener:Lcom/hzbhd/common/ui/Keyboard$OnGotoKeyboardLongClickListener;

    invoke-interface {v0, p1}, Lcom/hzbhd/common/ui/Keyboard$OnGotoKeyboardLongClickListener;->onNumberLongClick(I)Z

    move-result p1

    return p1

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/common/ui/Keyboard;->mMode:Lcom/hzbhd/common/ui/Keyboard$KeyboardMode;

    sget-object v1, Lcom/hzbhd/common/ui/Keyboard$KeyboardMode;->PHONE:Lcom/hzbhd/common/ui/Keyboard$KeyboardMode;

    if-ne v0, v1, :cond_1

    .line 363
    iget-object v0, p0, Lcom/hzbhd/common/ui/Keyboard;->mOnPhoneKeyboardLongClickListener:Lcom/hzbhd/common/ui/Keyboard$OnPhoneKeyboardLongClickListener;

    invoke-interface {v0, p1}, Lcom/hzbhd/common/ui/Keyboard$OnPhoneKeyboardLongClickListener;->onNumberLongClick(I)Z

    move-result p1

    return p1

    .line 364
    :cond_1
    iget-object v0, p0, Lcom/hzbhd/common/ui/Keyboard;->mMode:Lcom/hzbhd/common/ui/Keyboard$KeyboardMode;

    sget-object v1, Lcom/hzbhd/common/ui/Keyboard$KeyboardMode;->DTMF:Lcom/hzbhd/common/ui/Keyboard$KeyboardMode;

    if-ne v0, v1, :cond_2

    .line 365
    iget-object v0, p0, Lcom/hzbhd/common/ui/Keyboard;->mOnPhoneKeyboardLongClickListener:Lcom/hzbhd/common/ui/Keyboard$OnPhoneKeyboardLongClickListener;

    invoke-interface {v0, p1}, Lcom/hzbhd/common/ui/Keyboard$OnPhoneKeyboardLongClickListener;->onNumberLongClick(I)Z

    move-result p1

    return p1

    .line 366
    :cond_2
    iget-object v0, p0, Lcom/hzbhd/common/ui/Keyboard;->mMode:Lcom/hzbhd/common/ui/Keyboard$KeyboardMode;

    sget-object v1, Lcom/hzbhd/common/ui/Keyboard$KeyboardMode;->PIN:Lcom/hzbhd/common/ui/Keyboard$KeyboardMode;

    if-ne v0, v1, :cond_3

    .line 367
    iget-object v0, p0, Lcom/hzbhd/common/ui/Keyboard;->mOnPhoneKeyboardLongClickListener:Lcom/hzbhd/common/ui/Keyboard$OnPhoneKeyboardLongClickListener;

    invoke-interface {v0, p1}, Lcom/hzbhd/common/ui/Keyboard$OnPhoneKeyboardLongClickListener;->onNumberLongClick(I)Z

    move-result p1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private onOKClick()V
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/hzbhd/common/ui/Keyboard;->mOnGotoKeyboardClickListener:Lcom/hzbhd/common/ui/Keyboard$OnGotoKeyboardClickListener;

    invoke-interface {v0}, Lcom/hzbhd/common/ui/Keyboard$OnGotoKeyboardClickListener;->onOk()V

    .line 399
    iget-object v0, p0, Lcom/hzbhd/common/ui/Keyboard;->mOnPinKeyboardClickListener:Lcom/hzbhd/common/ui/Keyboard$OnPinKeyboardClickListener;

    invoke-interface {v0}, Lcom/hzbhd/common/ui/Keyboard$OnPinKeyboardClickListener;->onOk()V

    return-void
.end method

.method private onOKLongClick()Z
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/hzbhd/common/ui/Keyboard;->mOnGotoKeyboardLongClickListener:Lcom/hzbhd/common/ui/Keyboard$OnGotoKeyboardLongClickListener;

    invoke-interface {v0}, Lcom/hzbhd/common/ui/Keyboard$OnGotoKeyboardLongClickListener;->onOkLongClick()Z

    move-result v0

    return v0
.end method

.method private onStarClick()V
    .locals 1

    .line 407
    iget-object v0, p0, Lcom/hzbhd/common/ui/Keyboard;->mOnPhoneKeyboardClickListener:Lcom/hzbhd/common/ui/Keyboard$OnPhoneKeyboardClickListener;

    invoke-interface {v0}, Lcom/hzbhd/common/ui/Keyboard$OnPhoneKeyboardClickListener;->onStarClick()V

    .line 408
    iget-object v0, p0, Lcom/hzbhd/common/ui/Keyboard;->mOnPinKeyboardClickListener:Lcom/hzbhd/common/ui/Keyboard$OnPinKeyboardClickListener;

    invoke-interface {v0}, Lcom/hzbhd/common/ui/Keyboard$OnPinKeyboardClickListener;->onStarClick()V

    return-void
.end method

.method private onStarLongClick()Z
    .locals 1

    .line 412
    iget-object v0, p0, Lcom/hzbhd/common/ui/Keyboard;->mOnPhoneKeyboardLongClickListener:Lcom/hzbhd/common/ui/Keyboard$OnPhoneKeyboardLongClickListener;

    invoke-interface {v0}, Lcom/hzbhd/common/ui/Keyboard$OnPhoneKeyboardLongClickListener;->onStarLongClick()Z

    move-result v0

    return v0
.end method

.method private onWellClick()V
    .locals 1

    .line 416
    iget-object v0, p0, Lcom/hzbhd/common/ui/Keyboard;->mOnPhoneKeyboardClickListener:Lcom/hzbhd/common/ui/Keyboard$OnPhoneKeyboardClickListener;

    invoke-interface {v0}, Lcom/hzbhd/common/ui/Keyboard$OnPhoneKeyboardClickListener;->onWellClick()V

    .line 417
    iget-object v0, p0, Lcom/hzbhd/common/ui/Keyboard;->mOnPinKeyboardClickListener:Lcom/hzbhd/common/ui/Keyboard$OnPinKeyboardClickListener;

    invoke-interface {v0}, Lcom/hzbhd/common/ui/Keyboard$OnPinKeyboardClickListener;->onWellClick()V

    return-void
.end method

.method private onWellLongClick()Z
    .locals 1

    .line 421
    iget-object v0, p0, Lcom/hzbhd/common/ui/Keyboard;->mOnPhoneKeyboardLongClickListener:Lcom/hzbhd/common/ui/Keyboard$OnPhoneKeyboardLongClickListener;

    invoke-interface {v0}, Lcom/hzbhd/common/ui/Keyboard$OnPhoneKeyboardLongClickListener;->onWellLongClick()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public clickCancel()V
    .locals 0

    .line 849
    invoke-direct {p0}, Lcom/hzbhd/common/ui/Keyboard;->onCancelClick()V

    return-void
.end method

.method public clickDel()V
    .locals 0

    .line 839
    invoke-direct {p0}, Lcom/hzbhd/common/ui/Keyboard;->onDelClick()V

    return-void
.end method

.method public clickKey(I)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 831
    :pswitch_0
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey9Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/KeyboardButton;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x9

    .line 832
    invoke-direct {p0, p1}, Lcom/hzbhd/common/ui/Keyboard;->onNumClick(I)V

    goto/16 :goto_0

    .line 826
    :pswitch_1
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey8Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/KeyboardButton;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    .line 827
    invoke-direct {p0, p1}, Lcom/hzbhd/common/ui/Keyboard;->onNumClick(I)V

    goto/16 :goto_0

    .line 821
    :pswitch_2
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey7Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/KeyboardButton;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x7

    .line 822
    invoke-direct {p0, p1}, Lcom/hzbhd/common/ui/Keyboard;->onNumClick(I)V

    goto :goto_0

    .line 816
    :pswitch_3
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey6Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/KeyboardButton;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    .line 817
    invoke-direct {p0, p1}, Lcom/hzbhd/common/ui/Keyboard;->onNumClick(I)V

    goto :goto_0

    .line 811
    :pswitch_4
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey5Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/KeyboardButton;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    .line 812
    invoke-direct {p0, p1}, Lcom/hzbhd/common/ui/Keyboard;->onNumClick(I)V

    goto :goto_0

    .line 806
    :pswitch_5
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey4Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/KeyboardButton;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    .line 807
    invoke-direct {p0, p1}, Lcom/hzbhd/common/ui/Keyboard;->onNumClick(I)V

    goto :goto_0

    .line 801
    :pswitch_6
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey3Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/KeyboardButton;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    .line 802
    invoke-direct {p0, p1}, Lcom/hzbhd/common/ui/Keyboard;->onNumClick(I)V

    goto :goto_0

    .line 796
    :pswitch_7
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey2Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/KeyboardButton;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    .line 797
    invoke-direct {p0, p1}, Lcom/hzbhd/common/ui/Keyboard;->onNumClick(I)V

    goto :goto_0

    .line 791
    :pswitch_8
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey1Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/KeyboardButton;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 792
    invoke-direct {p0, p1}, Lcom/hzbhd/common/ui/Keyboard;->onNumClick(I)V

    goto :goto_0

    .line 786
    :pswitch_9
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey0Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/KeyboardButton;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 787
    invoke-direct {p0, p1}, Lcom/hzbhd/common/ui/Keyboard;->onNumClick(I)V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public clickOk()V
    .locals 1

    .line 843
    iget-object v0, p0, Lcom/hzbhd/common/ui/Keyboard;->mOkBtn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 844
    invoke-direct {p0}, Lcom/hzbhd/common/ui/Keyboard;->onOKClick()V

    :cond_0
    return-void
.end method

.method public enableCancelButton(Z)V
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/hzbhd/common/ui/Keyboard;->mCancelBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public enableNumberButton(IZ)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 484
    :pswitch_0
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey9Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    invoke-virtual {p1, p2}, Lcom/hzbhd/common/ui/KeyboardButton;->setEnabled(Z)V

    goto :goto_0

    .line 481
    :pswitch_1
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey8Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    invoke-virtual {p1, p2}, Lcom/hzbhd/common/ui/KeyboardButton;->setEnabled(Z)V

    goto :goto_0

    .line 478
    :pswitch_2
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey7Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    invoke-virtual {p1, p2}, Lcom/hzbhd/common/ui/KeyboardButton;->setEnabled(Z)V

    goto :goto_0

    .line 475
    :pswitch_3
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey6Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    invoke-virtual {p1, p2}, Lcom/hzbhd/common/ui/KeyboardButton;->setEnabled(Z)V

    goto :goto_0

    .line 472
    :pswitch_4
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey5Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    invoke-virtual {p1, p2}, Lcom/hzbhd/common/ui/KeyboardButton;->setEnabled(Z)V

    goto :goto_0

    .line 469
    :pswitch_5
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey4Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    invoke-virtual {p1, p2}, Lcom/hzbhd/common/ui/KeyboardButton;->setEnabled(Z)V

    goto :goto_0

    .line 466
    :pswitch_6
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey3Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    invoke-virtual {p1, p2}, Lcom/hzbhd/common/ui/KeyboardButton;->setEnabled(Z)V

    goto :goto_0

    .line 463
    :pswitch_7
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey2Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    invoke-virtual {p1, p2}, Lcom/hzbhd/common/ui/KeyboardButton;->setEnabled(Z)V

    goto :goto_0

    .line 460
    :pswitch_8
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey1Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    invoke-virtual {p1, p2}, Lcom/hzbhd/common/ui/KeyboardButton;->setEnabled(Z)V

    goto :goto_0

    .line 457
    :pswitch_9
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mKey0Btn:Lcom/hzbhd/common/ui/KeyboardButton;

    invoke-virtual {p1, p2}, Lcom/hzbhd/common/ui/KeyboardButton;->setEnabled(Z)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public enableOkButton(Z)V
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/hzbhd/common/ui/Keyboard;->mOkBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public enableStarButton(Z)V
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/hzbhd/common/ui/Keyboard;->mStarIb:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    return-void
.end method

.method public enableWellButton(Z)V
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/hzbhd/common/ui/Keyboard;->mWellIb:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    return-void
.end method

.method public getCancelButton()Landroid/widget/Button;
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/hzbhd/common/ui/Keyboard;->mCancelBtn:Landroid/widget/Button;

    return-object v0
.end method

.method public getOKButton()Landroid/widget/Button;
    .locals 1

    .line 432
    iget-object v0, p0, Lcom/hzbhd/common/ui/Keyboard;->mOkBtn:Landroid/widget/Button;

    return-object v0
.end method

.method public setMode(Lcom/hzbhd/common/ui/Keyboard$KeyboardMode;)V
    .locals 0

    .line 493
    invoke-direct {p0, p1}, Lcom/hzbhd/common/ui/Keyboard;->applyMode(Lcom/hzbhd/common/ui/Keyboard$KeyboardMode;)V

    return-void
.end method

.method public setOnGotoKeyboardClickListener(Lcom/hzbhd/common/ui/Keyboard$OnGotoKeyboardClickListener;)V
    .locals 0

    .line 769
    iput-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mOnGotoKeyboardClickListener:Lcom/hzbhd/common/ui/Keyboard$OnGotoKeyboardClickListener;

    return-void
.end method

.method public setOnGotoKeyboardLongClickListener(Lcom/hzbhd/common/ui/Keyboard$OnGotoKeyboardLongClickListener;)V
    .locals 0

    .line 652
    iput-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mOnGotoKeyboardLongClickListener:Lcom/hzbhd/common/ui/Keyboard$OnGotoKeyboardLongClickListener;

    return-void
.end method

.method public setOnPhoneKeyboardClickListener(Lcom/hzbhd/common/ui/Keyboard$OnPhoneKeyboardClickListener;)V
    .locals 0

    .line 773
    iput-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mOnPhoneKeyboardClickListener:Lcom/hzbhd/common/ui/Keyboard$OnPhoneKeyboardClickListener;

    return-void
.end method

.method public setOnPhoneKeyboardLongClickListener(Lcom/hzbhd/common/ui/Keyboard$OnPhoneKeyboardLongClickListener;)V
    .locals 0

    .line 656
    iput-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mOnPhoneKeyboardLongClickListener:Lcom/hzbhd/common/ui/Keyboard$OnPhoneKeyboardLongClickListener;

    return-void
.end method

.method public setOnPinKeyboardClickListener(Lcom/hzbhd/common/ui/Keyboard$OnPinKeyboardClickListener;)V
    .locals 0

    .line 777
    iput-object p1, p0, Lcom/hzbhd/common/ui/Keyboard;->mOnPinKeyboardClickListener:Lcom/hzbhd/common/ui/Keyboard$OnPinKeyboardClickListener;

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 570
    iget-object v0, p0, Lcom/hzbhd/common/ui/Keyboard;->mInputAreaRl:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
