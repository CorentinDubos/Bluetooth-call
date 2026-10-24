.class Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager$INMEACallbackTransport;
.super Lcom/hzbhd/midwareproxy/misc/aidl/INMEACallback$Stub;
.source "RemoteDrServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "INMEACallbackTransport"
.end annotation


# instance fields
.field private mListener:Lcom/hzbhd/midwareproxy/misc/INMEAListener;

.field private final mListenerHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager;


# direct methods
.method constructor <init>(Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager;Lcom/hzbhd/midwareproxy/misc/INMEAListener;Landroid/os/Looper;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager$INMEACallbackTransport;->this$0:Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager;

    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/misc/aidl/INMEACallback$Stub;-><init>()V

    .line 138
    iput-object p2, p0, Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager$INMEACallbackTransport;->mListener:Lcom/hzbhd/midwareproxy/misc/INMEAListener;

    if-nez p3, :cond_0

    .line 141
    new-instance p2, Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager$INMEACallbackTransport$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p0, p3, p1}, Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager$INMEACallbackTransport$1;-><init>(Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager$INMEACallbackTransport;Landroid/os/Looper;Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager;)V

    iput-object p2, p0, Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager$INMEACallbackTransport;->mListenerHandler:Landroid/os/Handler;

    goto :goto_0

    .line 148
    :cond_0
    new-instance p2, Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager$INMEACallbackTransport$2;

    invoke-direct {p2, p0, p3, p1}, Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager$INMEACallbackTransport$2;-><init>(Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager$INMEACallbackTransport;Landroid/os/Looper;Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager;)V

    iput-object p2, p0, Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager$INMEACallbackTransport;->mListenerHandler:Landroid/os/Handler;

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager$INMEACallbackTransport;Landroid/os/Message;)V
    .locals 0

    .line 133
    invoke-direct {p0, p1}, Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager$INMEACallbackTransport;->dealMessage(Landroid/os/Message;)V

    return-void
.end method

.method private dealMessage(Landroid/os/Message;)V
    .locals 3

    .line 160
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3ea

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 165
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    .line 166
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager$INMEACallbackTransport;->mListener:Lcom/hzbhd/midwareproxy/misc/INMEAListener;

    const-string v1, "WHEEL_SPEED"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "GEAR_REVERSE"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/hzbhd/midwareproxy/misc/INMEAListener;->onPASCDChange(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager$INMEACallbackTransport;->mListener:Lcom/hzbhd/midwareproxy/misc/INMEAListener;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/misc/INMEAListener;->onNMEAChange(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 170
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onNMEAChange(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 175
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x3e9

    .line 176
    iput v1, v0, Landroid/os/Message;->what:I

    .line 177
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 178
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager$INMEACallbackTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onPASCDChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 182
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x3ea

    .line 183
    iput v1, v0, Landroid/os/Message;->what:I

    .line 184
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "WHEEL_SPEED"

    .line 185
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "GEAR_REVERSE"

    .line 186
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 188
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager$INMEACallbackTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
