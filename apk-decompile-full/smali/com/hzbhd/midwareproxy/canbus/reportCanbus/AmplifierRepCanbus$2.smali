.class Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$2;
.super Ljava/lang/Thread;
.source "AmplifierRepCanbus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->initCanbusAmpCmd()V
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

    .line 1399
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$2;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1402
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    const/4 v0, 0x0

    .line 1403
    :goto_0
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$2;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;

    iget-object v1, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->cmdList:[[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const-wide/16 v1, 0x32

    .line 1405
    :try_start_0
    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$2;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 1407
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1409
    :goto_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$2;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;

    iget-object v1, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->cmdList:[[B

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
