.class Lcom/hzbhd/midwareproxy/radio/RadioManager$RDSInfoChangeListenerTransport$2;
.super Landroid/os/Handler;
.source "RadioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/midwareproxy/radio/RadioManager$RDSInfoChangeListenerTransport;-><init>(Lcom/hzbhd/midwareproxy/radio/RadioManager;Lcom/hzbhd/midwareproxy/radio/aidl/RDSInfoChangeListener;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hzbhd/midwareproxy/radio/RadioManager$RDSInfoChangeListenerTransport;

.field final synthetic val$this$0:Lcom/hzbhd/midwareproxy/radio/RadioManager;


# direct methods
.method constructor <init>(Lcom/hzbhd/midwareproxy/radio/RadioManager$RDSInfoChangeListenerTransport;Landroid/os/Looper;Lcom/hzbhd/midwareproxy/radio/RadioManager;)V
    .locals 0

    .line 397
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RDSInfoChangeListenerTransport$2;->this$1:Lcom/hzbhd/midwareproxy/radio/RadioManager$RDSInfoChangeListenerTransport;

    iput-object p3, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RDSInfoChangeListenerTransport$2;->val$this$0:Lcom/hzbhd/midwareproxy/radio/RadioManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RDSInfoChangeListenerTransport$2;->this$1:Lcom/hzbhd/midwareproxy/radio/RadioManager$RDSInfoChangeListenerTransport;

    invoke-static {v0, p1}, Lcom/hzbhd/midwareproxy/radio/RadioManager$RDSInfoChangeListenerTransport;->access$100(Lcom/hzbhd/midwareproxy/radio/RadioManager$RDSInfoChangeListenerTransport;Landroid/os/Message;)V

    return-void
.end method
