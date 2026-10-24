.class Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$1;
.super Ljava/lang/Object;
.source "AmplifierRepCanbus.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->reportCanbusInfo(Ljava/lang/String;ILandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;


# direct methods
.method constructor <init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;)V
    .locals 0

    .line 330
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$1;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;

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

    .line 333
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$1;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->access$000(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$1;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->access$100(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;->amplifierInfoChange(Ljava/lang/String;I)V

    return-void
.end method
