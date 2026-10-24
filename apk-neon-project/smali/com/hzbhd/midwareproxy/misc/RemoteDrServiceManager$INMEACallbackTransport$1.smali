.class Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager$INMEACallbackTransport$1;
.super Landroid/os/Handler;
.source "RemoteDrServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager$INMEACallbackTransport;-><init>(Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager;Lcom/hzbhd/midwareproxy/misc/INMEAListener;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager$INMEACallbackTransport;

.field final synthetic val$this$0:Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager;


# direct methods
.method constructor <init>(Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager$INMEACallbackTransport;Landroid/os/Looper;Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager$INMEACallbackTransport$1;->this$1:Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager$INMEACallbackTransport;

    iput-object p3, p0, Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager$INMEACallbackTransport$1;->val$this$0:Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager$INMEACallbackTransport$1;->this$1:Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager$INMEACallbackTransport;

    invoke-static {v0, p1}, Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager$INMEACallbackTransport;->access$000(Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager$INMEACallbackTransport;Landroid/os/Message;)V

    return-void
.end method
