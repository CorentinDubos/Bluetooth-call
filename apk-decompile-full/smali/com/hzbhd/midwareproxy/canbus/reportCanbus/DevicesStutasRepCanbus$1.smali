.class Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus$1;
.super Ljava/lang/Object;
.source "DevicesStutasRepCanbus.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->reportCanbusInfo(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;


# direct methods
.method constructor <init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus$1;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callBack(Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus$1;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;

    iget v2, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->btOn:I

    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus$1;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;

    iget v3, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->discRadom:I

    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus$1;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;

    iget v4, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->discRepeat:I

    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus$1;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;

    iget v5, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->discExsit:I

    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus$1;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;

    iget v6, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->sdCardIn:I

    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus$1;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;

    iget v7, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->usbIn:I

    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus$1;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;

    iget v8, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->radioSt:I

    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus$1;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;

    iget v9, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->mute:I

    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus$1;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;

    iget v10, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->singleCycle:I

    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus$1;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;

    iget v11, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->fullCurve:I

    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus$1;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;

    iget v12, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->folderLoop:I

    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus$1;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;

    iget v13, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->randomFolder:I

    move-object v1, p1

    invoke-interface/range {v1 .. v13}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;->deviceStatusInfoChange(IIIIIIIIIIII)V

    return-void
.end method
