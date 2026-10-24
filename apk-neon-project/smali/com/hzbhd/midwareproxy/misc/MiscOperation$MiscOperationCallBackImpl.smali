.class final Lcom/hzbhd/midwareproxy/misc/MiscOperation$MiscOperationCallBackImpl;
.super Lcom/hzbhd/midwareproxy/binder/callback/IMiscOperationCallBackInterface$Stub;
.source "MiscOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/misc/MiscOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MiscOperationCallBackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/midwareproxy/misc/MiscOperation;


# direct methods
.method private constructor <init>(Lcom/hzbhd/midwareproxy/misc/MiscOperation;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/misc/MiscOperation$MiscOperationCallBackImpl;->this$0:Lcom/hzbhd/midwareproxy/misc/MiscOperation;

    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/binder/callback/IMiscOperationCallBackInterface$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hzbhd/midwareproxy/misc/MiscOperation;Lcom/hzbhd/midwareproxy/misc/MiscOperation$1;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/hzbhd/midwareproxy/misc/MiscOperation$MiscOperationCallBackImpl;-><init>(Lcom/hzbhd/midwareproxy/misc/MiscOperation;)V

    return-void
.end method


# virtual methods
.method public batteryThreadStateReports(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/misc/MiscOperation$MiscOperationCallBackImpl;->this$0:Lcom/hzbhd/midwareproxy/misc/MiscOperation;

    invoke-static {v0, p1, p2}, Lcom/hzbhd/midwareproxy/misc/MiscOperation;->access$300(Lcom/hzbhd/midwareproxy/misc/MiscOperation;II)V

    return-void
.end method

.method public errorReports(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/misc/MiscOperation$MiscOperationCallBackImpl;->this$0:Lcom/hzbhd/midwareproxy/misc/MiscOperation;

    invoke-static {v0, p1}, Lcom/hzbhd/midwareproxy/misc/MiscOperation;->access$200(Lcom/hzbhd/midwareproxy/misc/MiscOperation;I)V

    return-void
.end method

.method public progressReports(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/misc/MiscOperation$MiscOperationCallBackImpl;->this$0:Lcom/hzbhd/midwareproxy/misc/MiscOperation;

    invoke-static {v0, p1, p2}, Lcom/hzbhd/midwareproxy/misc/MiscOperation;->access$100(Lcom/hzbhd/midwareproxy/misc/MiscOperation;II)V

    return-void
.end method
