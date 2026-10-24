.class final Lcom/hzbhd/midwareproxy/video/VideoParkingManager$VideoCallBackImpl;
.super Lcom/hzbhd/midwareproxy/binder/callback/IAuxVideoCallBackInterface$Stub;
.source "VideoParkingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/video/VideoParkingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VideoCallBackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/midwareproxy/video/VideoParkingManager;


# direct methods
.method private constructor <init>(Lcom/hzbhd/midwareproxy/video/VideoParkingManager;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/video/VideoParkingManager$VideoCallBackImpl;->this$0:Lcom/hzbhd/midwareproxy/video/VideoParkingManager;

    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/binder/callback/IAuxVideoCallBackInterface$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hzbhd/midwareproxy/video/VideoParkingManager;Lcom/hzbhd/midwareproxy/video/VideoParkingManager$1;)V
    .locals 0

    .line 136
    invoke-direct {p0, p1}, Lcom/hzbhd/midwareproxy/video/VideoParkingManager$VideoCallBackImpl;-><init>(Lcom/hzbhd/midwareproxy/video/VideoParkingManager;)V

    return-void
.end method


# virtual methods
.method public onParkingStateChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/video/VideoParkingManager$VideoCallBackImpl;->this$0:Lcom/hzbhd/midwareproxy/video/VideoParkingManager;

    invoke-static {v0, p1}, Lcom/hzbhd/midwareproxy/video/VideoParkingManager;->access$300(Lcom/hzbhd/midwareproxy/video/VideoParkingManager;I)V

    return-void
.end method

.method public reportVideoStatus(III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/video/VideoParkingManager$VideoCallBackImpl;->this$0:Lcom/hzbhd/midwareproxy/video/VideoParkingManager;

    invoke-static {v0, p1, p2, p3}, Lcom/hzbhd/midwareproxy/video/VideoParkingManager;->access$200(Lcom/hzbhd/midwareproxy/video/VideoParkingManager;III)V

    return-void
.end method
