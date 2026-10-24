.class Lcom/hzbhd/bluetooth/widget/_b1/DeviceView$1;
.super Landroid/os/Handler;
.source "DeviceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/bluetooth/widget/_b1/DeviceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/bluetooth/widget/_b1/DeviceView;


# direct methods
.method constructor <init>(Lcom/hzbhd/bluetooth/widget/_b1/DeviceView;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/hzbhd/bluetooth/widget/_b1/DeviceView$1;->this$0:Lcom/hzbhd/bluetooth/widget/_b1/DeviceView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 40
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 45
    :cond_0
    invoke-static {}, Lcom/hzbhd/bluetooth/Bluetooth;->getHfpMainActivity()Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/hzbhd/bluetooth/Bluetooth;->getHfpMainActivity()Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    move-result-object p1

    iget p1, p1, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->currentFragmentIndex:I

    const/4 v1, 0x7

    if-ne p1, v1, :cond_1

    .line 46
    iget-object p1, p0, Lcom/hzbhd/bluetooth/widget/_b1/DeviceView$1;->this$0:Lcom/hzbhd/bluetooth/widget/_b1/DeviceView;

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/widget/_b1/DeviceView;->hideDevice()V

    goto :goto_0

    .line 48
    :cond_1
    iget-object p1, p0, Lcom/hzbhd/bluetooth/widget/_b1/DeviceView$1;->this$0:Lcom/hzbhd/bluetooth/widget/_b1/DeviceView;

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/widget/_b1/DeviceView;->ShowDevice()V

    :goto_0
    const-wide/16 v1, 0x3e8

    .line 65
    :try_start_0
    iget-object p1, p0, Lcom/hzbhd/bluetooth/widget/_b1/DeviceView$1;->this$0:Lcom/hzbhd/bluetooth/widget/_b1/DeviceView;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/widget/_b1/DeviceView;->access$000(Lcom/hzbhd/bluetooth/widget/_b1/DeviceView;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UPDATE_UI Exception= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "mww"

    invoke-static {v3, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object p1, p0, Lcom/hzbhd/bluetooth/widget/_b1/DeviceView$1;->this$0:Lcom/hzbhd/bluetooth/widget/_b1/DeviceView;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/widget/_b1/DeviceView;->access$000(Lcom/hzbhd/bluetooth/widget/_b1/DeviceView;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_1
    return-void
.end method
