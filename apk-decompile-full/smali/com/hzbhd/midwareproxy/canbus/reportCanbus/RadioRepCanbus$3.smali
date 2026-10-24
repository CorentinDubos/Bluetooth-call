.class Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$3;
.super Ljava/util/TimerTask;
.source "RadioRepCanbus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->sndRadioMediaPerSecTwoArray(Landroid/content/Context;[B[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

.field final synthetic val$cmd1:[B

.field final synthetic val$cmd2:[B

.field final synthetic val$mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;Landroid/content/Context;[B[B)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$3;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    iput-object p2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$3;->val$mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$3;->val$cmd1:[B

    iput-object p4, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$3;->val$cmd2:[B

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 283
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$3;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$3;->val$mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$3;->val$cmd1:[B

    invoke-static {v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->access$000(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;Landroid/content/Context;[B)V

    .line 284
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$3;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$3;->val$mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$3;->val$cmd2:[B

    invoke-static {v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->access$000(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;Landroid/content/Context;[B)V

    return-void
.end method
