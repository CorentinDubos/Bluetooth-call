.class Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$10;
.super Ljava/lang/Thread;
.source "BTPhoneRepCanbus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->reportBtStatusToCan(ILandroid/content/Context;[BZZZZIILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;

.field final synthetic val$mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;Landroid/content/Context;)V
    .locals 0

    .line 2092
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$10;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;

    iput-object p2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$10;->val$mContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 2095
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    const-wide/16 v2, 0x64

    .line 2098
    :try_start_0
    invoke-static {v2, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$10;->sleep(J)V

    .line 2099
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$10;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;

    iget-object v3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$10;->val$mContext:Landroid/content/Context;

    const-string v4, ""

    invoke-virtual {v2, v3, v1, v0, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->reportBtCallLogToCan(Landroid/content/Context;IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2102
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_0
    return-void
.end method
