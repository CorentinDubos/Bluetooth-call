.class Lcom/hzbhd/midwareproxy/atv/AtvManager$1;
.super Landroid/os/Handler;
.source "AtvManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/atv/AtvManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/midwareproxy/atv/AtvManager;


# direct methods
.method constructor <init>(Lcom/hzbhd/midwareproxy/atv/AtvManager;Landroid/os/Looper;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/atv/AtvManager$1;->this$0:Lcom/hzbhd/midwareproxy/atv/AtvManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 39
    invoke-static {}, Lcom/hzbhd/midwareproxy/atv/AtvManager$HANDLER_MSG;->values()[Lcom/hzbhd/midwareproxy/atv/AtvManager$HANDLER_MSG;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    aget-object v0, v0, v1

    .line 41
    sget-object v1, Lcom/hzbhd/midwareproxy/atv/AtvManager$3;->$SwitchMap$com$hzbhd$midwareproxy$atv$AtvManager$HANDLER_MSG:[I

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/atv/AtvManager$HANDLER_MSG;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string/jumbo v0, "videoState"

    .line 48
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    const-string/jumbo v0, "videoType"

    .line 49
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    const-string/jumbo v0, "videoFormat"

    .line 50
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
