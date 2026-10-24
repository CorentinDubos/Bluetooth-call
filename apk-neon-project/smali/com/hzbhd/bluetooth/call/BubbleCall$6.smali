.class Lcom/hzbhd/bluetooth/call/BubbleCall$6;
.super Landroid/os/Handler;
.source "BubbleCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/bluetooth/call/BubbleCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;


# direct methods
.method constructor <init>(Lcom/hzbhd/bluetooth/call/BubbleCall;)V
    .locals 0

    .line 673
    iput-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$6;->this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    const-string p1, "bubblecall"

    const-string v0, "mHandupHandler"

    .line 675
    invoke-static {p1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$6;->this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/call/BubbleCall;->removeCallView()V

    .line 678
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.bhd.bluetooth.CLOSE_BUBBLECALL_SERVICES"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 679
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$6;->this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, v1}, Lcom/hzbhd/bluetooth/call/BubbleCall;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method
