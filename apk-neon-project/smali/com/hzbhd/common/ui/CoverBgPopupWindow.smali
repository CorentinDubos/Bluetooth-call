.class public Lcom/hzbhd/common/ui/CoverBgPopupWindow;
.super Landroid/widget/PopupWindow;
.source "CoverBgPopupWindow.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 12
    invoke-direct {p0, p2, p3}, Landroid/widget/PopupWindow;-><init>(II)V

    .line 13
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/hzbhd/common/ui/R$layout;->popup_menu_cover_bg:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 14
    invoke-virtual {p0, p1}, Lcom/hzbhd/common/ui/CoverBgPopupWindow;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x1

    .line 15
    invoke-virtual {p0, p1}, Lcom/hzbhd/common/ui/CoverBgPopupWindow;->setOutsideTouchable(Z)V

    return-void
.end method
