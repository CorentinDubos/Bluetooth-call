.class Lcom/hzbhd/common/_c2/CarView$LocChange;
.super Lcom/hzbhd/midwareproxy/location/LocationChange;
.source "CarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/common/_c2/CarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocChange"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/common/_c2/CarView;


# direct methods
.method private constructor <init>(Lcom/hzbhd/common/_c2/CarView;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/hzbhd/common/_c2/CarView$LocChange;->this$0:Lcom/hzbhd/common/_c2/CarView;

    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/location/LocationChange;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hzbhd/common/_c2/CarView;Lcom/hzbhd/common/_c2/CarView$1;)V
    .locals 0

    .line 143
    invoke-direct {p0, p1}, Lcom/hzbhd/common/_c2/CarView$LocChange;-><init>(Lcom/hzbhd/common/_c2/CarView;)V

    return-void
.end method


# virtual methods
.method public getAltitude(D)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 198
    invoke-super {p0, p1, p2}, Lcom/hzbhd/midwareproxy/location/LocationChange;->getAltitude(D)V

    .line 200
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "Altitude"

    .line 201
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 202
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/16 p2, 0x3ec

    .line 203
    iput p2, p1, Landroid/os/Message;->what:I

    .line 204
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 206
    iget-object p2, p0, Lcom/hzbhd/common/_c2/CarView$LocChange;->this$0:Lcom/hzbhd/common/_c2/CarView;

    invoke-static {p2}, Lcom/hzbhd/common/_c2/CarView;->access$300(Lcom/hzbhd/common/_c2/CarView;)Landroid/os/Handler;

    move-result-object p2

    const-wide/16 v0, 0x32

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public getBear(F)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 159
    invoke-super {p0, p1}, Lcom/hzbhd/midwareproxy/location/LocationChange;->getBear(F)V

    .line 160
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    float-to-int p1, p1

    const-string v1, "bear"

    .line 161
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 162
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x3e9

    .line 163
    iput v1, p1, Landroid/os/Message;->what:I

    .line 164
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 165
    iget-object v0, p0, Lcom/hzbhd/common/_c2/CarView$LocChange;->this$0:Lcom/hzbhd/common/_c2/CarView;

    invoke-static {v0}, Lcom/hzbhd/common/_c2/CarView;->access$300(Lcom/hzbhd/common/_c2/CarView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 166
    iget-object v0, p0, Lcom/hzbhd/common/_c2/CarView$LocChange;->this$0:Lcom/hzbhd/common/_c2/CarView;

    invoke-static {v0}, Lcom/hzbhd/common/_c2/CarView;->access$300(Lcom/hzbhd/common/_c2/CarView;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x32

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public getLoc(DD)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 172
    invoke-super {p0, p1, p2, p3, p4}, Lcom/hzbhd/midwareproxy/location/LocationChange;->getLoc(DD)V

    .line 173
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "Longitude"

    .line 174
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string p1, "Latitude"

    .line 175
    invoke-virtual {v0, p1, p3, p4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 176
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/16 p2, 0x3ea

    .line 177
    iput p2, p1, Landroid/os/Message;->what:I

    .line 178
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 179
    iget-object p3, p0, Lcom/hzbhd/common/_c2/CarView$LocChange;->this$0:Lcom/hzbhd/common/_c2/CarView;

    invoke-static {p3}, Lcom/hzbhd/common/_c2/CarView;->access$300(Lcom/hzbhd/common/_c2/CarView;)Landroid/os/Handler;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 180
    iget-object p2, p0, Lcom/hzbhd/common/_c2/CarView$LocChange;->this$0:Lcom/hzbhd/common/_c2/CarView;

    invoke-static {p2}, Lcom/hzbhd/common/_c2/CarView;->access$300(Lcom/hzbhd/common/_c2/CarView;)Landroid/os/Handler;

    move-result-object p2

    const-wide/16 p3, 0x32

    invoke-virtual {p2, p1, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public getMaxSatelliteCount(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 186
    invoke-super {p0, p1}, Lcom/hzbhd/midwareproxy/location/LocationChange;->getMaxSatelliteCount(I)V

    .line 187
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "count"

    .line 188
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 189
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x3eb

    .line 190
    iput v1, p1, Landroid/os/Message;->what:I

    .line 191
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 192
    iget-object v0, p0, Lcom/hzbhd/common/_c2/CarView$LocChange;->this$0:Lcom/hzbhd/common/_c2/CarView;

    invoke-static {v0}, Lcom/hzbhd/common/_c2/CarView;->access$300(Lcom/hzbhd/common/_c2/CarView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 193
    iget-object v0, p0, Lcom/hzbhd/common/_c2/CarView$LocChange;->this$0:Lcom/hzbhd/common/_c2/CarView;

    invoke-static {v0}, Lcom/hzbhd/common/_c2/CarView;->access$300(Lcom/hzbhd/common/_c2/CarView;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x32

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public getSpeed(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 146
    invoke-super {p0, p1}, Lcom/hzbhd/midwareproxy/location/LocationChange;->getSpeed(I)V

    .line 147
    iget-object v0, p0, Lcom/hzbhd/common/_c2/CarView$LocChange;->this$0:Lcom/hzbhd/common/_c2/CarView;

    invoke-static {v0}, Lcom/hzbhd/common/_c2/CarView;->access$200(Lcom/hzbhd/common/_c2/CarView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSpeed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "speed"

    .line 149
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 150
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x3e8

    .line 151
    iput v1, p1, Landroid/os/Message;->what:I

    .line 152
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 153
    iget-object v0, p0, Lcom/hzbhd/common/_c2/CarView$LocChange;->this$0:Lcom/hzbhd/common/_c2/CarView;

    invoke-static {v0}, Lcom/hzbhd/common/_c2/CarView;->access$300(Lcom/hzbhd/common/_c2/CarView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 154
    iget-object v0, p0, Lcom/hzbhd/common/_c2/CarView$LocChange;->this$0:Lcom/hzbhd/common/_c2/CarView;

    invoke-static {v0}, Lcom/hzbhd/common/_c2/CarView;->access$300(Lcom/hzbhd/common/_c2/CarView;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
