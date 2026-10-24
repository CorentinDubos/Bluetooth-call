.class Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AuxInRepCanbus$2;
.super Ljava/util/TimerTask;
.source "AuxInRepCanbus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AuxInRepCanbus;->sndAuxMediaPerSecNew(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AuxInRepCanbus;

.field final synthetic val$mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AuxInRepCanbus;Landroid/content/Context;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AuxInRepCanbus$2;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AuxInRepCanbus;

    iput-object p2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AuxInRepCanbus$2;->val$mContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AuxInRepCanbus$2;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AuxInRepCanbus;

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AuxInRepCanbus$2;->val$mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AuxInRepCanbus;->access$100(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AuxInRepCanbus;)[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AuxInRepCanbus;->access$000(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AuxInRepCanbus;Landroid/content/Context;[B)V

    return-void
.end method
