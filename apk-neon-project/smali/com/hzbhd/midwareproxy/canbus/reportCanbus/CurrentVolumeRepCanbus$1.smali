.class Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CurrentVolumeRepCanbus$1;
.super Ljava/lang/Object;
.source "CurrentVolumeRepCanbus.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CurrentVolumeRepCanbus;->reportCanbusInfo(Landroid/content/Context;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CurrentVolumeRepCanbus;


# direct methods
.method constructor <init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CurrentVolumeRepCanbus;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CurrentVolumeRepCanbus$1;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CurrentVolumeRepCanbus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callBack(Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 303
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CurrentVolumeRepCanbus$1;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CurrentVolumeRepCanbus;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CurrentVolumeRepCanbus;->access$000(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CurrentVolumeRepCanbus;)I

    move-result v0

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CurrentVolumeRepCanbus$1;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CurrentVolumeRepCanbus;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CurrentVolumeRepCanbus;->access$100(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CurrentVolumeRepCanbus;)Z

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;->currentVolumeInfoChange(IZ)V

    return-void
.end method
