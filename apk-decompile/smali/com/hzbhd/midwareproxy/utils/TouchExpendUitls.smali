.class public Lcom/hzbhd/midwareproxy/utils/TouchExpendUitls;
.super Ljava/lang/Object;
.source "TouchExpendUitls.java"


# static fields
.field static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    const-class v0, Lcom/hzbhd/midwareproxy/utils/TouchExpendUitls;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/midwareproxy/utils/TouchExpendUitls;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static expendTouchArea(Landroid/view/View;Landroid/view/ViewParent;IIII)V
    .locals 7

    .line 36
    sget-object p1, Lcom/hzbhd/midwareproxy/utils/TouchExpendUitls;->TAG:Ljava/lang/String;

    const-string v0, "expendTouchArea"

    invoke-static {p1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v6, Lcom/hzbhd/midwareproxy/utils/TouchExpendUitls$1;

    move-object v0, v6

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/hzbhd/midwareproxy/utils/TouchExpendUitls$1;-><init>(Landroid/view/View;IIII)V

    invoke-virtual {p1, v6}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
