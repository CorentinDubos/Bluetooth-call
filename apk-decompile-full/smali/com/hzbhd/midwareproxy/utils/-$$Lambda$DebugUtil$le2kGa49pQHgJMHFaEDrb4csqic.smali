.class public final synthetic Lcom/hzbhd/midwareproxy/utils/-$$Lambda$DebugUtil$le2kGa49pQHgJMHFaEDrb4csqic;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/hzbhd/midwareproxy/utils/DebugUtil;

.field public final synthetic f$1:Landroid/view/WindowManager;

.field public final synthetic f$2:Landroid/widget/LinearLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/hzbhd/midwareproxy/utils/DebugUtil;Landroid/view/WindowManager;Landroid/widget/LinearLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/utils/-$$Lambda$DebugUtil$le2kGa49pQHgJMHFaEDrb4csqic;->f$0:Lcom/hzbhd/midwareproxy/utils/DebugUtil;

    iput-object p2, p0, Lcom/hzbhd/midwareproxy/utils/-$$Lambda$DebugUtil$le2kGa49pQHgJMHFaEDrb4csqic;->f$1:Landroid/view/WindowManager;

    iput-object p3, p0, Lcom/hzbhd/midwareproxy/utils/-$$Lambda$DebugUtil$le2kGa49pQHgJMHFaEDrb4csqic;->f$2:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/hzbhd/midwareproxy/utils/-$$Lambda$DebugUtil$le2kGa49pQHgJMHFaEDrb4csqic;->f$0:Lcom/hzbhd/midwareproxy/utils/DebugUtil;

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/utils/-$$Lambda$DebugUtil$le2kGa49pQHgJMHFaEDrb4csqic;->f$1:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/hzbhd/midwareproxy/utils/-$$Lambda$DebugUtil$le2kGa49pQHgJMHFaEDrb4csqic;->f$2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v2, p1}, Lcom/hzbhd/midwareproxy/utils/DebugUtil;->lambda$reBootSystemDialog$0$DebugUtil(Landroid/view/WindowManager;Landroid/widget/LinearLayout;Landroid/view/View;)V

    return-void
.end method
