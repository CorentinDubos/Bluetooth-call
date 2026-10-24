.class Lcom/hzbhd/common/_a4/CarView$1;
.super Ljava/lang/Object;
.source "CarView.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/common/_a4/CarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/common/_a4/CarView;


# direct methods
.method constructor <init>(Lcom/hzbhd/common/_a4/CarView;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/hzbhd/common/_a4/CarView$1;->this$0:Lcom/hzbhd/common/_a4/CarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 181
    iget-object p1, p0, Lcom/hzbhd/common/_a4/CarView$1;->this$0:Lcom/hzbhd/common/_a4/CarView;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/location/ILocAidlInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/location/ILocAidlInterface;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/hzbhd/common/_a4/CarView;->access$402(Lcom/hzbhd/common/_a4/CarView;Lcom/hzbhd/midwareproxy/location/ILocAidlInterface;)Lcom/hzbhd/midwareproxy/location/ILocAidlInterface;

    .line 183
    :try_start_0
    iget-object p1, p0, Lcom/hzbhd/common/_a4/CarView$1;->this$0:Lcom/hzbhd/common/_a4/CarView;

    invoke-static {p1}, Lcom/hzbhd/common/_a4/CarView;->access$400(Lcom/hzbhd/common/_a4/CarView;)Lcom/hzbhd/midwareproxy/location/ILocAidlInterface;

    move-result-object p1

    iget-object p2, p0, Lcom/hzbhd/common/_a4/CarView$1;->this$0:Lcom/hzbhd/common/_a4/CarView;

    invoke-virtual {p2}, Lcom/hzbhd/common/_a4/CarView;->getLocChange()Lcom/hzbhd/common/_a4/CarView$LocChange;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/hzbhd/midwareproxy/location/ILocAidlInterface;->addCallBack(Lcom/hzbhd/midwareproxy/location/LocationCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 185
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
