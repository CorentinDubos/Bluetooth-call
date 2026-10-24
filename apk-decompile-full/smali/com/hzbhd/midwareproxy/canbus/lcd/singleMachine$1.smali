.class Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$1;
.super Ljava/lang/Thread;
.source "singleMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lod_test(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$1;->val$mContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 101
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 117
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$1;->val$mContext:Landroid/content/Context;

    const-string v1, " WELCOME "

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_lcdPrintfString(Landroid/content/Context;[B)[B

    const-wide/16 v0, 0x1388

    .line 120
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 122
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$1;->val$mContext:Landroid/content/Context;

    const-string v1, " BYE BYE"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_lcdPrintfString(Landroid/content/Context;[B)[B

    return-void
.end method
