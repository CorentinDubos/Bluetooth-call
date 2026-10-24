.class Lcom/hzbhd/midwareproxy/park/ParkManager$1;
.super Ljava/lang/Object;
.source "ParkManager.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/binder/callback/IParkCallBackInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/park/ParkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/midwareproxy/park/ParkManager;


# direct methods
.method constructor <init>(Lcom/hzbhd/midwareproxy/park/ParkManager;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/park/ParkManager$1;->this$0:Lcom/hzbhd/midwareproxy/park/ParkManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onParkOrbitAngleChange(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    invoke-static {}, Lcom/hzbhd/midwareproxy/park/ParkManager;->access$000()Lcom/hzbhd/midware/constant/ParkClient;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/hzbhd/midware/constant/ParkClient;->onParkOrbitAngleChange(I)V

    return-void
.end method
