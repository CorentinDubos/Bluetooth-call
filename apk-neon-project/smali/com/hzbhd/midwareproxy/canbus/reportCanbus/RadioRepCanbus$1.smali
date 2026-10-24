.class Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$1;
.super Ljava/util/TimerTask;
.source "RadioRepCanbus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->sndRadioMediaPerSec(Landroid/content/Context;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

.field final synthetic val$cmd:[B

.field final synthetic val$mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;Landroid/content/Context;[B)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$1;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    iput-object p2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$1;->val$mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$1;->val$cmd:[B

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 255
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$1;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$1;->val$mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$1;->val$cmd:[B

    invoke-static {v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->access$000(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;Landroid/content/Context;[B)V

    return-void
.end method
