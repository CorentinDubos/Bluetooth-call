.class Lcom/hzbhd/midwareproxy/atv/AtvManager$2;
.super Lcom/hzbhd/midwareproxy/binder/callback/IAtvCallBackInterface$Stub;
.source "AtvManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/atv/AtvManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/midwareproxy/atv/AtvManager;


# direct methods
.method constructor <init>(Lcom/hzbhd/midwareproxy/atv/AtvManager;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/atv/AtvManager$2;->this$0:Lcom/hzbhd/midwareproxy/atv/AtvManager;

    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/binder/callback/IAtvCallBackInterface$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public reportChannelFrequncy(F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----reportChannelFrequncy----frequency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AtvManager"

    invoke-static {v1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-static {}, Lcom/hzbhd/midwareproxy/atv/AtvManager;->access$100()Lcom/hzbhd/midware/constant/AtvClient;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/hzbhd/midware/constant/AtvClient;->reportChannelFrequncy(F)V

    return-void
.end method

.method public reportChannelList(F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----reportChannelList----frequency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AtvManager"

    invoke-static {v1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-static {}, Lcom/hzbhd/midwareproxy/atv/AtvManager;->access$100()Lcom/hzbhd/midware/constant/AtvClient;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/hzbhd/midware/constant/AtvClient;->reportChannelList(F)V

    return-void
.end method

.method public reportChannelStatus(IIII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----reportChannelStatus----currentCh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " totalCh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AtvManager"

    invoke-static {v1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lcom/hzbhd/midwareproxy/atv/AtvManager;->access$100()Lcom/hzbhd/midware/constant/AtvClient;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/hzbhd/midware/constant/AtvClient;->reportChannelStatus(IIII)V

    return-void
.end method

.method public reportParkingState(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----reportParkingState----parkingState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AtvManager"

    invoke-static {v1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-static {}, Lcom/hzbhd/midwareproxy/atv/AtvManager;->access$100()Lcom/hzbhd/midware/constant/AtvClient;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/hzbhd/midware/constant/AtvClient;->reportParkingState(Z)V

    return-void
.end method

.method public reportVideoStatus(III)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/atv/AtvManager$2;->this$0:Lcom/hzbhd/midwareproxy/atv/AtvManager;

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/atv/AtvManager;->access$000(Lcom/hzbhd/midwareproxy/atv/AtvManager;)Landroid/os/Handler;

    move-result-object p1

    sget-object v0, Lcom/hzbhd/midwareproxy/atv/AtvManager$HANDLER_MSG;->reportVideoStatus:Lcom/hzbhd/midwareproxy/atv/AtvManager$HANDLER_MSG;

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/atv/AtvManager$HANDLER_MSG;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 71
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "videoType"

    .line 72
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "videoState"

    .line 73
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p2, "videoFormat"

    .line 74
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 75
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/atv/AtvManager$2;->this$0:Lcom/hzbhd/midwareproxy/atv/AtvManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/atv/AtvManager;->access$000(Lcom/hzbhd/midwareproxy/atv/AtvManager;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
