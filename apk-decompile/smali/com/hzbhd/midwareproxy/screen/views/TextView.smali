.class public Lcom/hzbhd/midwareproxy/screen/views/TextView;
.super Landroid/widget/TextView;
.source "TextView.java"


# instance fields
.field mIFreshUICallback:Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$IFreshUICallback;

.field text:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1, v0}, Lcom/hzbhd/midwareproxy/screen/views/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, p2, v0}, Lcom/hzbhd/midwareproxy/screen/views/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/hzbhd/midwareproxy/screen/views/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p3, 0x0

    .line 27
    iput p3, p0, Lcom/hzbhd/midwareproxy/screen/views/TextView;->text:I

    .line 61
    new-instance p4, Lcom/hzbhd/midwareproxy/screen/views/TextView$1;

    invoke-direct {p4, p0}, Lcom/hzbhd/midwareproxy/screen/views/TextView$1;-><init>(Lcom/hzbhd/midwareproxy/screen/views/TextView;)V

    iput-object p4, p0, Lcom/hzbhd/midwareproxy/screen/views/TextView;->mIFreshUICallback:Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$IFreshUICallback;

    const/4 p4, 0x1

    new-array p4, p4, [I

    .line 30
    sget-object v0, Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$MSG;->REFRESH_UI:Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$MSG;

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$MSG;->ordinal()I

    move-result v0

    aput v0, p4, p3

    .line 31
    invoke-static {}, Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils;->getInstance()Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/screen/views/TextView;->mIFreshUICallback:Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$IFreshUICallback;

    invoke-virtual {v0, v1, p4}, Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils;->registerCallBack(Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$IFreshUICallback;[I)V

    .line 32
    sget-object p4, Lcom/android/internal/R$styleable;->TextView:[I

    invoke-virtual {p1, p2, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0x12

    .line 33
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/screen/views/TextView;->text:I

    return-void
.end method


# virtual methods
.method public initResourceForAndroidDefine(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 57
    sget-object v0, Lcom/android/internal/R$styleable;->TextView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0x12

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/hzbhd/midwareproxy/screen/views/TextView;->text:I

    .line 59
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public initResourceForSelfDefine(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 43
    sget-object v0, Lcom/hzbhd/midware/proxy/R$styleable;->img_attr:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 44
    sget p2, Lcom/hzbhd/midware/proxy/R$styleable;->img_attr_n:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 45
    sget p2, Lcom/hzbhd/midware/proxy/R$styleable;->img_attr_p:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 46
    sget p2, Lcom/hzbhd/midware/proxy/R$styleable;->img_attr_click_action:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 47
    sget p2, Lcom/hzbhd/midware/proxy/R$styleable;->img_attr_is_color_view:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 48
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 72
    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 73
    iget p1, p0, Lcom/hzbhd/midwareproxy/screen/views/TextView;->text:I

    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/screen/views/TextView;->setText(I)V

    const-string p1, "mww"

    const-string v0, "TextView callback onConfigurationChanged 22"

    .line 74
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
