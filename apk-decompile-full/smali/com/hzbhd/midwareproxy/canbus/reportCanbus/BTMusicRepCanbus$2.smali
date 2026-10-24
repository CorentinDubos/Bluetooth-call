.class Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus$2;
.super Ljava/util/TimerTask;
.source "BTMusicRepCanbus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;->sndA2dpMediaPerSecNew(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;Landroid/content/Context;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus$2;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;

    iput-object p2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus$2;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;->access$100(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;)[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;->access$000(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;Landroid/content/Context;[B)V

    return-void
.end method
