.class public Lcom/hzbhd/midwareproxy/CommonUI/N49_windowManager;
.super Landroid/widget/LinearLayout;
.source "N49_windowManager.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 21
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 23
    sget v0, Lcom/hzbhd/midware/proxy/R$layout;->status_top_bar:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 24
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/CommonUI/N49_windowManager;->addView(Landroid/view/View;)V

    return-void
.end method
