.class public Lcom/hzbhd/midwareproxy/utils/StatusBarNavigationUtils;
.super Ljava/lang/Object;
.source "StatusBarNavigationUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hideSystemUIOnLifeCycle(Landroid/view/View;)V
    .locals 1

    const/16 v0, 0xf06

    .line 11
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public static hideSystemUIOnWindowFocusChanged(Landroid/view/View;)V
    .locals 1

    const/16 v0, 0x1f07

    .line 22
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public static showSystemUI(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method
