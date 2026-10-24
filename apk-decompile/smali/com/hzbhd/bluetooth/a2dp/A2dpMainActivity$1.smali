.class Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity$1;
.super Lcom/hzbhd/bluetooth/BaseBluetoothA2dpCallbackListener;
.source "A2dpMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;


# direct methods
.method constructor <init>(Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;)V
    .locals 0

    .line 465
    iput-object p1, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity$1;->this$0:Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;

    invoke-direct {p0}, Lcom/hzbhd/bluetooth/BaseBluetoothA2dpCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onA2dpStateChanged(Ljava/lang/String;II)V
    .locals 3

    .line 468
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onA2dpStateChanged State : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " -> "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "A2dpMainActivity"

    invoke-static {p2, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    iget-object p1, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity$1;->this$0:Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;

    const/4 p2, 0x1

    const/16 v0, 0x8c

    const/4 v1, 0x0

    if-lt p3, v0, :cond_0

    move v2, p2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {p1, v2}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->onResumeBg_N54(Z)V

    .line 470
    iget-object p1, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity$1;->this$0:Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;

    if-lt p3, v0, :cond_1

    move v2, p2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    invoke-static {p1, v2}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->access$000(Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;Z)V

    const/16 p1, 0x9

    if-lt p3, v0, :cond_2

    .line 472
    iget-object p3, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity$1;->this$0:Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;

    invoke-virtual {p3}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->dismissProgressDialog()V

    .line 473
    iget-object p3, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity$1;->this$0:Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;

    iget p3, p3, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->currentFragmentIndex:I

    if-eq p1, p3, :cond_3

    .line 474
    iget-object p3, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity$1;->this$0:Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;

    invoke-virtual {p3, p2, p1}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->showFragment(ZI)V

    goto :goto_2

    .line 477
    :cond_2
    iget-object p2, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity$1;->this$0:Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;

    iget p2, p2, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->currentFragmentIndex:I

    if-ne p1, p2, :cond_3

    .line 478
    iget-object p1, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity$1;->this$0:Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;

    invoke-virtual {p1, v1, v1}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->showFragment(ZI)V

    :cond_3
    :goto_2
    return-void
.end method

.method public onAvrcpErrorResponse(Ljava/lang/String;IIB)V
    .locals 0

    return-void
.end method

.method public onAvrcpEventPlaybackStatusChanged(Ljava/lang/String;B)V
    .locals 0

    return-void
.end method

.method public onAvrcpEventTrackChanged(Ljava/lang/String;J)V
    .locals 0

    return-void
.end method

.method public onAvrcpStateChanged(Ljava/lang/String;II)V
    .locals 1

    .line 484
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAvrcpStateChanged State : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " -> "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "A2dpMainActivity"

    invoke-static {p2, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public retAvrcpElementAttributesPlaying(Ljava/lang/String;[I[Ljava/lang/String;)V
    .locals 5

    const-string p1, ""

    const/4 v0, 0x0

    move-object v1, p1

    move v2, v0

    move-object v0, v1

    .line 492
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_3

    .line 493
    aget v3, p2, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 494
    aget-object v0, p3, v2

    goto :goto_1

    .line 496
    :cond_0
    aget v3, p2, v2

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 497
    aget-object v1, p3, v2

    goto :goto_1

    .line 499
    :cond_1
    aget v3, p2, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 500
    aget-object p1, p3, v2

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 503
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 504
    iget-object p1, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity$1;->this$0:Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;

    const p2, 0x7f0d023d

    invoke-virtual {p1, p2}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 506
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 507
    iget-object p2, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity$1;->this$0:Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;

    const p3, 0x7f0d023e

    invoke-virtual {p2, p3}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 509
    :cond_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 510
    iget-object p2, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity$1;->this$0:Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;

    const p3, 0x7f0d023c

    invoke-virtual {p2, p3}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 512
    :cond_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "---------retAvrcpElementAttributesPlaying() artist="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " ; album="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " ; title="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "sw-ap006"

    invoke-static {p3, p2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    iget-object p2, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity$1;->this$0:Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;

    invoke-static {p2}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->access$100(Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;)Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;

    move-result-object p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity$1;->this$0:Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;

    invoke-static {p2}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->access$100(Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;)Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;

    move-result-object p2

    invoke-virtual {p2}, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;->isAdded()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 514
    iget-object p2, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity$1;->this$0:Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;

    invoke-static {p2}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->access$100(Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;)Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;

    move-result-object p2

    invoke-virtual {p2, v0, p1, v1}, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;->setId3Info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public retAvrcpPlayStatus(Ljava/lang/String;JJB)V
    .locals 0

    .line 520
    iget-object p1, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity$1;->this$0:Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->access$100(Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;)Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity$1;->this$0:Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->access$100(Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;)Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 521
    iget-object p1, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity$1;->this$0:Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->access$100(Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;)Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;

    move-result-object p1

    invoke-virtual {p1, p6}, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;->setA2dpPlayState(I)V

    :cond_0
    return-void
.end method

.method public retAvrcpUpdateSongStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-------retAvrcpUpdateSongStatus artist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ; album="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ; title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "A2dpMainActivity"

    invoke-static {v1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 545
    iget-object p1, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity$1;->this$0:Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;

    const v0, 0x7f0d023d

    invoke-virtual {p1, v0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 547
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 548
    iget-object p3, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity$1;->this$0:Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;

    const v0, 0x7f0d023e

    invoke-virtual {p3, v0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 550
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 551
    iget-object p2, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity$1;->this$0:Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;

    const v0, 0x7f0d023c

    invoke-virtual {p2, v0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 553
    :cond_2
    iget-object v0, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity$1;->this$0:Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->access$100(Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;)Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 554
    iget-object v0, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity$1;->this$0:Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->access$100(Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;)Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;

    move-result-object v0

    invoke-virtual {v0, p3, p1, p2}, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;->setId3Info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    :cond_3
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;->getInstance()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;

    move-result-object v0

    iget-object v1, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity$1;->this$0:Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;

    invoke-virtual {v0, v1, p3, p1, p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;->reportA2dpId3Info(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "[CANBUS][REP]Exception"

    const-string/jumbo p2, "reportA2dpId3Info"

    .line 559
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
