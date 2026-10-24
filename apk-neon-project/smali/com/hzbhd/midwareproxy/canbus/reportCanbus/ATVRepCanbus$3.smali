.class Lcom/hzbhd/midwareproxy/canbus/reportCanbus/ATVRepCanbus$3;
.super Ljava/lang/Object;
.source "ATVRepCanbus.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/midwareproxy/canbus/reportCanbus/ATVRepCanbus;->reportDestroyCanbusInfo(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/ATVRepCanbus;


# direct methods
.method constructor <init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/ATVRepCanbus;)V
    .locals 0

    .line 362
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/ATVRepCanbus$3;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/ATVRepCanbus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callBack(Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 365
    invoke-interface {p1}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;->atvDestroy()V

    return-void
.end method
