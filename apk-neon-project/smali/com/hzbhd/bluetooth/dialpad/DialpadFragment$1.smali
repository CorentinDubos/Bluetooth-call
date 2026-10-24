.class Lcom/hzbhd/bluetooth/dialpad/DialpadFragment$1;
.super Ljava/lang/Object;
.source "DialpadFragment.java"

# interfaces
.implements Lcom/hzbhd/bluetooth/dialpad/DialpadFragment$remoteCotrol;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;


# direct methods
.method constructor <init>(Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment$1;->this$0:Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Ljava/lang/String;)V
    .locals 1

    const-string v0, "[0-9]*"

    .line 91
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 92
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment$1;->this$0:Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;

    invoke-virtual {v0, p1}, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->keyEventHandler(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "STAR"

    .line 94
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    iget-object p1, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment$1;->this$0:Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;

    const-string v0, "*"

    invoke-virtual {p1, v0}, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->keyEventHandler(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "NUMBER"

    .line 96
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    iget-object p1, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment$1;->this$0:Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;

    const-string v0, "#"

    invoke-virtual {p1, v0}, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->keyEventHandler(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "ANSWER"

    .line 98
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 99
    iget-object p1, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment$1;->this$0:Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->handlerDialBtnEvent()V

    goto :goto_0

    :cond_3
    const-string v0, "HANGUP"

    .line 100
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 101
    iget-object p1, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment$1;->this$0:Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->handlerHandupEvent()V

    goto :goto_0

    :cond_4
    const-string v0, "DELETE"

    .line 102
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 103
    iget-object p1, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment$1;->this$0:Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->handlerBackSpace()V

    :cond_5
    :goto_0
    return-void
.end method
