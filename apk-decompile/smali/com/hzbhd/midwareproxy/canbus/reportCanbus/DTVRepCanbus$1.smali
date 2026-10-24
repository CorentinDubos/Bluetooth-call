.class Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DTVRepCanbus$1;
.super Ljava/util/TimerTask;
.source "DTVRepCanbus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DTVRepCanbus;->sndDtvMideaPerSecNew(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DTVRepCanbus;

.field final synthetic val$mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DTVRepCanbus;Landroid/content/Context;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DTVRepCanbus$1;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DTVRepCanbus;

    iput-object p2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DTVRepCanbus$1;->val$mContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DTVRepCanbus$1;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DTVRepCanbus;

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DTVRepCanbus$1;->val$mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DTVRepCanbus;->access$000(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DTVRepCanbus;)[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DTVRepCanbus;->access$100(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DTVRepCanbus;Landroid/content/Context;[B)V

    return-void
.end method
