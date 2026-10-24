.class Lcom/hzbhd/midwareproxy/radio/RadioManager$RadioInfoChangeListenerTransport$1;
.super Landroid/os/Handler;
.source "RadioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/midwareproxy/radio/RadioManager$RadioInfoChangeListenerTransport;-><init>(Lcom/hzbhd/midwareproxy/radio/RadioManager;Lcom/hzbhd/midwareproxy/radio/aidl/RadioInfoChangeListener;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hzbhd/midwareproxy/radio/RadioManager$RadioInfoChangeListenerTransport;

.field final synthetic val$this$0:Lcom/hzbhd/midwareproxy/radio/RadioManager;


# direct methods
.method constructor <init>(Lcom/hzbhd/midwareproxy/radio/RadioManager$RadioInfoChangeListenerTransport;Landroid/os/Looper;Lcom/hzbhd/midwareproxy/radio/RadioManager;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RadioInfoChangeListenerTransport$1;->this$1:Lcom/hzbhd/midwareproxy/radio/RadioManager$RadioInfoChangeListenerTransport;

    iput-object p3, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RadioInfoChangeListenerTransport$1;->val$this$0:Lcom/hzbhd/midwareproxy/radio/RadioManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RadioInfoChangeListenerTransport$1;->this$1:Lcom/hzbhd/midwareproxy/radio/RadioManager$RadioInfoChangeListenerTransport;

    invoke-static {v0, p1}, Lcom/hzbhd/midwareproxy/radio/RadioManager$RadioInfoChangeListenerTransport;->access$000(Lcom/hzbhd/midwareproxy/radio/RadioManager$RadioInfoChangeListenerTransport;Landroid/os/Message;)V

    return-void
.end method
