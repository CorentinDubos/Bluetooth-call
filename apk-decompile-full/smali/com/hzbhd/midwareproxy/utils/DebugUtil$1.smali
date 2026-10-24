.class Lcom/hzbhd/midwareproxy/utils/DebugUtil$1;
.super Ljava/lang/Object;
.source "DebugUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/midwareproxy/utils/DebugUtil;->showInputDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/midwareproxy/utils/DebugUtil;

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/hzbhd/midwareproxy/utils/DebugUtil;Landroid/widget/EditText;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/utils/DebugUtil$1;->this$0:Lcom/hzbhd/midwareproxy/utils/DebugUtil;

    iput-object p2, p0, Lcom/hzbhd/midwareproxy/utils/DebugUtil$1;->val$editText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 94
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/utils/DebugUtil$1;->val$editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, ""

    .line 95
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 96
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/utils/DebugUtil$1;->this$0:Lcom/hzbhd/midwareproxy/utils/DebugUtil;

    invoke-virtual {p2, p1}, Lcom/hzbhd/midwareproxy/utils/DebugUtil;->SwitchToDebugDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/utils/DebugUtil$1;->this$0:Lcom/hzbhd/midwareproxy/utils/DebugUtil;

    iget-object p1, p1, Lcom/hzbhd/midwareproxy/utils/DebugUtil;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/hzbhd/midwareproxy/utils/DebugUtil$1;->val$editText:Landroid/widget/EditText;

    .line 99
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 98
    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 100
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
