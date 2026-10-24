.class Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus$1;
.super Ljava/util/TimerTask;
.source "BTMusicRepCanbus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;->sndA2dpMediaPerSec(Landroid/content/Context;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;

.field final synthetic val$cmd:[B

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;Landroid/content/Context;[B)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus$1;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;

    iput-object p2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus$1;->val$cmd:[B

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus$1;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus$1;->val$cmd:[B

    invoke-static {v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;->access$000(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;Landroid/content/Context;[B)V

    return-void
.end method
