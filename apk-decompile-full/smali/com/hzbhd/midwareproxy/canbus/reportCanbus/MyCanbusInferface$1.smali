.class Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface$1;
.super Ljava/lang/Object;
.source "MyCanbusInferface.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface;->bindCanbusService(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface$CallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callBack:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface$CallBack;


# direct methods
.method constructor <init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface$CallBack;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface$1;->val$callBack:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface$CallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 37
    invoke-static {p2}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object p1

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface;->access$002(Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;)Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    .line 39
    :try_start_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface$1;->val$callBack:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface$CallBack;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface$1;->val$callBack:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface$CallBack;

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface;->access$000()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface$CallBack;->callBack(Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 41
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .line 46
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface;->mHander:Landroid/os/Handler;

    const/4 v0, 0x0

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
