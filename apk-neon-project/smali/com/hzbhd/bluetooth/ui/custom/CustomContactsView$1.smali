.class Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView$1;
.super Landroid/os/Handler;
.source "CustomContactsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;


# direct methods
.method constructor <init>(Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;Landroid/os/Looper;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView$1;->this$0:Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 54
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView$1;->this$0:Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;->access$000(Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;)Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract;->notifyDataSetChanged()V

    .line 57
    iget-object p1, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView$1;->this$0:Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;->access$100(Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;)V

    .line 59
    iget-object p1, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView$1;->this$0:Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;->access$000(Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;)Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract;->getItemCount()I

    move-result p1

    if-gtz p1, :cond_1

    .line 60
    iget-object p1, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView$1;->this$0:Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;->access$200(Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
