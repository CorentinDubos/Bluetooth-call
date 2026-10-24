.class Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch$2;
.super Ljava/lang/Thread;
.source "QzOringinalScreenTouchDispatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->startTest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;


# direct methods
.method constructor <init>(Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;)V
    .locals 0

    .line 588
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch$2;->this$0:Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 591
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    :goto_0
    const-wide/16 v0, 0x3e8

    .line 594
    :try_start_0
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch$2;->sleep(J)V

    .line 599
    sget v0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzTestData;->testCount:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    .line 600
    sput v0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzTestData;->testCount:I

    :cond_0
    const-string v0, "QZ_MOUSE_LOG"

    .line 602
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[\u9f20\u6807][testCount]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzTestData;->testCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch$2;->this$0:Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;

    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzTestData;->testMouseArray:[[B

    sget v2, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzTestData;->testCount:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->processMouseInfo([B)V

    .line 604
    sget v0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzTestData;->testCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzTestData;->testCount:I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 606
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
