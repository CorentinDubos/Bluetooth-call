.class Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus$5;
.super Ljava/lang/Object;
.source "SourceSwitchRepCanbus.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus;->reportNomediaCanbusInfo(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus;

.field final synthetic val$isPowerOff:Z


# direct methods
.method constructor <init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus;Z)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus$5;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus;

    iput-boolean p2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus$5;->val$isPowerOff:Z

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

    .line 313
    iget-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus$5;->val$isPowerOff:Z

    invoke-interface {p1, v0}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;->sourceSwitchNoMediaInfoChange(Z)V

    .line 314
    invoke-interface {p1}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;->sourceSwitchDestroy()V

    return-void
.end method
