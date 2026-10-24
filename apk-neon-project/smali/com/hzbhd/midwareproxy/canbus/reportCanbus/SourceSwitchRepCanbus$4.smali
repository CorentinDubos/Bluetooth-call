.class Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus$4;
.super Ljava/lang/Object;
.source "SourceSwitchRepCanbus.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus;->reportExitSrcAuxIn2(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus;


# direct methods
.method constructor <init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus$4;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus;

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

    .line 132
    invoke-interface {p1}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;->sourceSwitchExitSrcAuxIn2InfoChange()V

    return-void
.end method
