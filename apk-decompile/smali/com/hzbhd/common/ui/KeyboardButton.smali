.class public Lcom/hzbhd/common/ui/KeyboardButton;
.super Landroid/widget/RelativeLayout;
.source "KeyboardButton.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "KeyboardButton"


# instance fields
.field private mCharTv:Landroid/widget/TextView;

.field private mKeyChar:Ljava/lang/String;

.field private mKeyNumber:I

.field private mNumberTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, v0}, Lcom/hzbhd/common/ui/KeyboardButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2, v0}, Lcom/hzbhd/common/ui/KeyboardButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    sget-object p3, Lcom/hzbhd/common/ui/R$styleable;->keyboard_button:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 43
    sget p3, Lcom/hzbhd/common/ui/R$styleable;->keyboard_button_key_number:I

    const/4 v0, -0x1

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/hzbhd/common/ui/KeyboardButton;->mKeyNumber:I

    .line 44
    sget p3, Lcom/hzbhd/common/ui/R$styleable;->keyboard_button_key_char:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/hzbhd/common/ui/KeyboardButton;->mKeyChar:Ljava/lang/String;

    .line 45
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 47
    invoke-virtual {p0, p1}, Lcom/hzbhd/common/ui/KeyboardButton;->initLayout(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public hideChar()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardButton;->mCharTv:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public initLayout(Landroid/content/Context;)V
    .locals 2

    .line 59
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/hzbhd/common/ui/R$layout;->keyboard_button_layout:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 60
    sget v0, Lcom/hzbhd/common/ui/R$id;->tv_keyboard_button_num:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hzbhd/common/ui/KeyboardButton;->mNumberTv:Landroid/widget/TextView;

    .line 61
    sget v0, Lcom/hzbhd/common/ui/R$id;->tv_keyboard_button_char:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/hzbhd/common/ui/KeyboardButton;->mCharTv:Landroid/widget/TextView;

    .line 63
    iget p1, p0, Lcom/hzbhd/common/ui/KeyboardButton;->mKeyNumber:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 64
    iget-object p1, p0, Lcom/hzbhd/common/ui/KeyboardButton;->mNumberTv:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hzbhd/common/ui/KeyboardButton;->mKeyNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/common/ui/KeyboardButton;->mKeyChar:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 67
    iget-object p1, p0, Lcom/hzbhd/common/ui/KeyboardButton;->mCharTv:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardButton;->mKeyChar:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    :cond_1
    sget p1, Lcom/hzbhd/common/ui/R$drawable;->selector_keyboard_button_bg:I

    invoke-virtual {p0, p1}, Lcom/hzbhd/common/ui/KeyboardButton;->setBackgroundResource(I)V

    const/4 p1, 0x1

    .line 71
    invoke-virtual {p0, p1}, Lcom/hzbhd/common/ui/KeyboardButton;->setClickable(Z)V

    .line 72
    invoke-virtual {p0, p1}, Lcom/hzbhd/common/ui/KeyboardButton;->setLongClickable(Z)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public showChar()V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardButton;->mCharTv:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
