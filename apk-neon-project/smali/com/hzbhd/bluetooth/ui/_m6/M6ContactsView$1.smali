.class Lcom/hzbhd/bluetooth/ui/_m6/M6ContactsView$1;
.super Landroid/os/Handler;
.source "M6ContactsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/bluetooth/ui/_m6/M6ContactsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/bluetooth/ui/_m6/M6ContactsView;


# direct methods
.method constructor <init>(Lcom/hzbhd/bluetooth/ui/_m6/M6ContactsView;Landroid/os/Looper;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/hzbhd/bluetooth/ui/_m6/M6ContactsView$1;->this$0:Lcom/hzbhd/bluetooth/ui/_m6/M6ContactsView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 49
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/bluetooth/ui/_m6/M6ContactsView$1;->this$0:Lcom/hzbhd/bluetooth/ui/_m6/M6ContactsView;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/ui/_m6/M6ContactsView;->access$000(Lcom/hzbhd/bluetooth/ui/_m6/M6ContactsView;)Lcom/hzbhd/bluetooth/ui/_m6/AdapterContract;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/ui/_m6/AdapterContract;->notifyDataSetChanged()V

    .line 52
    iget-object p1, p0, Lcom/hzbhd/bluetooth/ui/_m6/M6ContactsView$1;->this$0:Lcom/hzbhd/bluetooth/ui/_m6/M6ContactsView;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/ui/_m6/M6ContactsView;->access$100(Lcom/hzbhd/bluetooth/ui/_m6/M6ContactsView;)V

    .line 54
    iget-object p1, p0, Lcom/hzbhd/bluetooth/ui/_m6/M6ContactsView$1;->this$0:Lcom/hzbhd/bluetooth/ui/_m6/M6ContactsView;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/ui/_m6/M6ContactsView;->access$000(Lcom/hzbhd/bluetooth/ui/_m6/M6ContactsView;)Lcom/hzbhd/bluetooth/ui/_m6/AdapterContract;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/ui/_m6/AdapterContract;->getItemCount()I

    move-result p1

    if-gtz p1, :cond_1

    .line 55
    iget-object p1, p0, Lcom/hzbhd/bluetooth/ui/_m6/M6ContactsView$1;->this$0:Lcom/hzbhd/bluetooth/ui/_m6/M6ContactsView;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/ui/_m6/M6ContactsView;->access$200(Lcom/hzbhd/bluetooth/ui/_m6/M6ContactsView;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
