.class Lcom/hzbhd/midwareproxy/utils/FocusLoopManager$2;
.super Ljava/lang/Object;
.source "FocusLoopManager.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/midwareproxy/utils/FocusLoopManager;->setAllChangeListener(ZLcom/hzbhd/midwareproxy/utils/ItfcFocusLoop;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/midwareproxy/utils/FocusLoopManager;


# direct methods
.method constructor <init>(Lcom/hzbhd/midwareproxy/utils/FocusLoopManager;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/utils/FocusLoopManager$2;->this$0:Lcom/hzbhd/midwareproxy/utils/FocusLoopManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const/high16 p2, 0x3fa00000    # 1.25f

    .line 73
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 74
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    const/high16 p2, 0x428c0000    # 70.0f

    .line 75
    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotY(F)V

    goto :goto_0

    :cond_0
    const/high16 p2, 0x3f800000    # 1.0f

    .line 77
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 78
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    const/4 p2, 0x0

    .line 79
    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotY(F)V

    :goto_0
    return-void
.end method
