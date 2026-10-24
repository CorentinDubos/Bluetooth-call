.class public Lcom/hzbhd/common/ui/PopupInfoView;
.super Landroid/widget/RelativeLayout;
.source "PopupInfoView.java"


# instance fields
.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, v0}, Lcom/hzbhd/common/ui/PopupInfoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2, v0}, Lcom/hzbhd/common/ui/PopupInfoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/hzbhd/common/ui/R$layout;->popup_info_layout:I

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 56
    sget p2, Lcom/hzbhd/common/ui/R$id;->tv_info:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/hzbhd/common/ui/PopupInfoView;->mTextView:Landroid/widget/TextView;

    const/4 p1, 0x1

    .line 57
    invoke-virtual {p0, p1}, Lcom/hzbhd/common/ui/PopupInfoView;->setClickable(Z)V

    return-void
.end method


# virtual methods
.method public setText(I)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/hzbhd/common/ui/PopupInfoView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
