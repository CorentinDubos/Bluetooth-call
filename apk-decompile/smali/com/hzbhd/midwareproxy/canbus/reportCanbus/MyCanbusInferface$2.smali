.class Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface$2;
.super Landroid/os/Handler;
.source "MyCanbusInferface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 57
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 59
    :try_start_0
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface;->mHander:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 60
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface;->access$100()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface$CallBack;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface;->access$200(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface$CallBack;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 62
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
