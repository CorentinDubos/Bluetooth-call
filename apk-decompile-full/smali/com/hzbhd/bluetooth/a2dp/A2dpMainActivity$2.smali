.class Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity$2;
.super Landroid/os/Handler;
.source "A2dpMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;


# direct methods
.method constructor <init>(Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;Landroid/os/Looper;)V
    .locals 0

    .line 569
    iput-object p1, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity$2;->this$0:Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 572
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 574
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 575
    iget-object v0, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity$2;->this$0:Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;

    const v1, 0x7f0901e2

    invoke-virtual {v0, v1}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method
