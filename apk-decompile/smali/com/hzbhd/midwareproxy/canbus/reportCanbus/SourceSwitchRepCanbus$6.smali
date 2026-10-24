.class Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus$6;
.super Ljava/lang/Object;
.source "SourceSwitchRepCanbus.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus;->reportIinitInforToCAN(Landroid/content/Context;I)[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus;

.field final synthetic val$cantype:I


# direct methods
.method constructor <init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus;I)V
    .locals 0

    .line 535
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus;

    iput p2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus$6;->val$cantype:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callBack(Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 538
    iget v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus$6;->val$cantype:I

    invoke-interface {p1, v0}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;->sourceSwitchInitInfoChange(I)V

    return-void
.end method
