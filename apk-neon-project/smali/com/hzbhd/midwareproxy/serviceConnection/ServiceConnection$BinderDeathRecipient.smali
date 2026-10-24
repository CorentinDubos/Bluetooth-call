.class public Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection$BinderDeathRecipient;
.super Ljava/lang/Object;
.source "ServiceConnection.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BinderDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;


# direct methods
.method public constructor <init>(Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection$BinderDeathRecipient;->this$0:Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    const-string v0, "ServiceOperation"

    const-string v1, "ServiceConnection BinderDeathRecipient: binderDied"

    .line 30
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection$BinderDeathRecipient;->this$0:Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;->mIsConnected:Ljava/lang/Boolean;

    .line 32
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection$BinderDeathRecipient;->this$0:Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;->serviceDied()V

    .line 33
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection$BinderDeathRecipient;->this$0:Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;->access$000(Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;)Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnectionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection$BinderDeathRecipient;->this$0:Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;->getServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnectionManager;->onServiceDisconnected(Ljava/lang/String;)V

    return-void
.end method
