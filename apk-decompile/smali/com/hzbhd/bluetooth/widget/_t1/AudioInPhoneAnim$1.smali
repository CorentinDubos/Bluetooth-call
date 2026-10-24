.class Lcom/hzbhd/bluetooth/widget/_t1/AudioInPhoneAnim$1;
.super Landroid/os/Handler;
.source "AudioInPhoneAnim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/bluetooth/widget/_t1/AudioInPhoneAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/bluetooth/widget/_t1/AudioInPhoneAnim;


# direct methods
.method constructor <init>(Lcom/hzbhd/bluetooth/widget/_t1/AudioInPhoneAnim;Landroid/os/Looper;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/hzbhd/bluetooth/widget/_t1/AudioInPhoneAnim$1;->this$0:Lcom/hzbhd/bluetooth/widget/_t1/AudioInPhoneAnim;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 53
    iget p1, p1, Landroid/os/Message;->what:I

    const-string v0, "AudioInPhoneAnim"

    const/4 v1, 0x0

    const/16 v2, 0x5e6

    if-eq p1, v2, :cond_1

    const/16 v3, 0x5e7

    if-eq p1, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "MSG_STOP_ANIM"

    .line 61
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object p1, p0, Lcom/hzbhd/bluetooth/widget/_t1/AudioInPhoneAnim$1;->this$0:Lcom/hzbhd/bluetooth/widget/_t1/AudioInPhoneAnim;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/widget/_t1/AudioInPhoneAnim;->access$100(Lcom/hzbhd/bluetooth/widget/_t1/AudioInPhoneAnim;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 63
    sget-object p1, Lcom/hzbhd/bluetooth/widget/_t1/AudioInPhoneAnim;->mCallback:Lcom/hzbhd/bluetooth/widget/_t1/AudioInPhoneAnim$IAudioInPhoneAnimCallback;

    const v0, 0x7f081464

    invoke-interface {p1, v0}, Lcom/hzbhd/bluetooth/widget/_t1/AudioInPhoneAnim$IAudioInPhoneAnimCallback;->onSetImgButtonRes(I)V

    .line 64
    iget-object p1, p0, Lcom/hzbhd/bluetooth/widget/_t1/AudioInPhoneAnim$1;->this$0:Lcom/hzbhd/bluetooth/widget/_t1/AudioInPhoneAnim;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/hzbhd/bluetooth/widget/_t1/AudioInPhoneAnim;->access$002(Lcom/hzbhd/bluetooth/widget/_t1/AudioInPhoneAnim;Z)Z

    .line 65
    iget-object p1, p0, Lcom/hzbhd/bluetooth/widget/_t1/AudioInPhoneAnim$1;->this$0:Lcom/hzbhd/bluetooth/widget/_t1/AudioInPhoneAnim;

    invoke-static {p1, v1}, Lcom/hzbhd/bluetooth/widget/_t1/AudioInPhoneAnim;->access$202(Lcom/hzbhd/bluetooth/widget/_t1/AudioInPhoneAnim;I)I

    goto :goto_0

    .line 55
    :cond_1
    iget-object p1, p0, Lcom/hzbhd/bluetooth/widget/_t1/AudioInPhoneAnim$1;->this$0:Lcom/hzbhd/bluetooth/widget/_t1/AudioInPhoneAnim;

    invoke-static {p1, v1}, Lcom/hzbhd/bluetooth/widget/_t1/AudioInPhoneAnim;->access$002(Lcom/hzbhd/bluetooth/widget/_t1/AudioInPhoneAnim;Z)Z

    .line 56
    iget-object p1, p0, Lcom/hzbhd/bluetooth/widget/_t1/AudioInPhoneAnim$1;->this$0:Lcom/hzbhd/bluetooth/widget/_t1/AudioInPhoneAnim;

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/widget/_t1/AudioInPhoneAnim;->animAction()V

    const-string p1, "MSG_START_ANIM"

    .line 57
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object p1, p0, Lcom/hzbhd/bluetooth/widget/_t1/AudioInPhoneAnim$1;->this$0:Lcom/hzbhd/bluetooth/widget/_t1/AudioInPhoneAnim;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/widget/_t1/AudioInPhoneAnim;->access$100(Lcom/hzbhd/bluetooth/widget/_t1/AudioInPhoneAnim;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method
