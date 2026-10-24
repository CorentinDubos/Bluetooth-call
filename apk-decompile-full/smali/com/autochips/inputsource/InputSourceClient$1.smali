.class Lcom/autochips/inputsource/InputSourceClient$1;
.super Ljava/lang/Object;
.source "InputSourceClient.java"

# interfaces
.implements Landroid/cbm/CBManager$OnActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/inputsource/InputSourceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/inputsource/InputSourceClient;


# direct methods
.method constructor <init>(Lcom/autochips/inputsource/InputSourceClient;)V
    .locals 0

    .line 421
    iput-object p1, p0, Lcom/autochips/inputsource/InputSourceClient$1;->this$0:Lcom/autochips/inputsource/InputSourceClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAction(III)I
    .locals 9

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCBMActionListener onAction Start command: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cmdAttr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " priority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "InputSourceClient"

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq p2, v2, :cond_2

    if-eq p2, p3, :cond_1

    if-eq p2, v1, :cond_0

    .line 440
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCBMActionListener onAction cmdAttr invalid :!!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move p2, v1

    goto :goto_1

    :cond_1
    move p2, p3

    goto :goto_1

    :cond_2
    :goto_0
    move p2, v2

    .line 445
    :goto_1
    iget-object v3, p0, Lcom/autochips/inputsource/InputSourceClient$1;->this$0:Lcom/autochips/inputsource/InputSourceClient;

    iget v3, v3, Lcom/autochips/inputsource/InputSourceClient;->mDestType:I

    const/16 v4, 0xa

    const/16 v5, 0x9

    const/4 v6, 0x4

    const/4 v7, 0x0

    if-eq p1, v1, :cond_10

    if-eq p1, v6, :cond_3

    const/4 v8, 0x5

    if-eq p1, v8, :cond_3

    const/4 p3, 0x6

    if-eq p1, p3, :cond_10

    const-string p1, "mCBMActionListener Unknown CMD!"

    .line 538
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    .line 450
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mCBMActionListener: CBM_STOP!"

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/autochips/inputsource/InputSourceClient$1;->this$0:Lcom/autochips/inputsource/InputSourceClient;

    iget v8, v8, Lcom/autochips/inputsource/InputSourceClient;->mSrcType:I

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", mDestType:"

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/autochips/inputsource/InputSourceClient$1;->this$0:Lcom/autochips/inputsource/InputSourceClient;

    iget v8, v8, Lcom/autochips/inputsource/InputSourceClient;->mDestType:I

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    not-int p1, p2

    and-int/2addr p1, v3

    .line 452
    iget-object v3, p0, Lcom/autochips/inputsource/InputSourceClient$1;->this$0:Lcom/autochips/inputsource/InputSourceClient;

    iget v3, v3, Lcom/autochips/inputsource/InputSourceClient;->mDestType:I

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/autochips/inputsource/InputSourceClient$1;->this$0:Lcom/autochips/inputsource/InputSourceClient;

    iget v3, v3, Lcom/autochips/inputsource/InputSourceClient;->mDestType:I

    if-ne p1, v3, :cond_4

    const-string p1, "mCBMActionListener: CBM_STOP, do nothing mDestType == destDir!"

    .line 453
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object p1, p0, Lcom/autochips/inputsource/InputSourceClient$1;->this$0:Lcom/autochips/inputsource/InputSourceClient;

    iput v2, p1, Lcom/autochips/inputsource/InputSourceClient;->mCbmCtlStatus:I

    return v7

    :cond_4
    if-nez p1, :cond_7

    .line 457
    iget-object p1, p0, Lcom/autochips/inputsource/InputSourceClient$1;->this$0:Lcom/autochips/inputsource/InputSourceClient;

    iget p1, p1, Lcom/autochips/inputsource/InputSourceClient;->mCbmCtlStatus:I

    if-ne p1, v2, :cond_5

    .line 458
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mCBMActionListener CBM_STOP Already Stoped mDestType:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/autochips/inputsource/InputSourceClient$1;->this$0:Lcom/autochips/inputsource/InputSourceClient;

    iget p2, p2, Lcom/autochips/inputsource/InputSourceClient;->mDestType:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    .line 461
    :cond_5
    iget-object p1, p0, Lcom/autochips/inputsource/InputSourceClient$1;->this$0:Lcom/autochips/inputsource/InputSourceClient;

    iget p1, p1, Lcom/autochips/inputsource/InputSourceClient;->mCurrentStatus:I

    if-ne p1, v2, :cond_6

    const-string p1, "mCBMActionListener CBM_STOP Already been stoped because there is other activity in front"

    .line 462
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-object p1, p0, Lcom/autochips/inputsource/InputSourceClient$1;->this$0:Lcom/autochips/inputsource/InputSourceClient;

    iput v2, p1, Lcom/autochips/inputsource/InputSourceClient;->mCbmCtlStatus:I

    return v7

    .line 466
    :cond_6
    iget-object p1, p0, Lcom/autochips/inputsource/InputSourceClient$1;->this$0:Lcom/autochips/inputsource/InputSourceClient;

    invoke-static {p1}, Lcom/autochips/inputsource/InputSourceClient;->access$000(Lcom/autochips/inputsource/InputSourceClient;)I

    .line 467
    iget-object p1, p0, Lcom/autochips/inputsource/InputSourceClient$1;->this$0:Lcom/autochips/inputsource/InputSourceClient;

    iput v2, p1, Lcom/autochips/inputsource/InputSourceClient;->mCbmCtlStatus:I

    goto/16 :goto_4

    :cond_7
    const-string p1, "mCBMActionListener CBM_STOP All mDestType:"

    const/4 v3, 0x0

    if-ne v2, p2, :cond_b

    .line 469
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/autochips/inputsource/InputSourceClient$1;->this$0:Lcom/autochips/inputsource/InputSourceClient;

    iget p1, p1, Lcom/autochips/inputsource/InputSourceClient;->mDestType:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iget-object p1, p0, Lcom/autochips/inputsource/InputSourceClient$1;->this$0:Lcom/autochips/inputsource/InputSourceClient;

    iget p1, p1, Lcom/autochips/inputsource/InputSourceClient;->mCbmCtlStatus:I

    if-ne p1, v1, :cond_8

    .line 471
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mCBMActionListener  Already STOP_FRONT mDestType:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/autochips/inputsource/InputSourceClient$1;->this$0:Lcom/autochips/inputsource/InputSourceClient;

    iget p2, p2, Lcom/autochips/inputsource/InputSourceClient;->mDestType:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    .line 475
    :cond_8
    iget-object p1, p0, Lcom/autochips/inputsource/InputSourceClient$1;->this$0:Lcom/autochips/inputsource/InputSourceClient;

    iget p1, p1, Lcom/autochips/inputsource/InputSourceClient;->mSrcType:I

    iget-object v2, p0, Lcom/autochips/inputsource/InputSourceClient$1;->this$0:Lcom/autochips/inputsource/InputSourceClient;

    iget-object v2, v2, Lcom/autochips/inputsource/InputSourceClient;->mCBM:Landroid/cbm/CBManager;

    if-ne p1, v5, :cond_9

    .line 476
    iget-object p1, p0, Lcom/autochips/inputsource/InputSourceClient$1;->this$0:Lcom/autochips/inputsource/InputSourceClient;

    invoke-virtual {p1, p3}, Lcom/autochips/inputsource/InputSourceClient;->setDestination(I)I

    goto :goto_2

    .line 477
    :cond_9
    iget-object p1, p0, Lcom/autochips/inputsource/InputSourceClient$1;->this$0:Lcom/autochips/inputsource/InputSourceClient;

    iget p1, p1, Lcom/autochips/inputsource/InputSourceClient;->mSrcType:I

    iget-object v2, p0, Lcom/autochips/inputsource/InputSourceClient$1;->this$0:Lcom/autochips/inputsource/InputSourceClient;

    iget-object v2, v2, Lcom/autochips/inputsource/InputSourceClient;->mCBM:Landroid/cbm/CBManager;

    if-ne p1, v4, :cond_a

    .line 478
    iget-object p1, p0, Lcom/autochips/inputsource/InputSourceClient$1;->this$0:Lcom/autochips/inputsource/InputSourceClient;

    invoke-virtual {p1, p3}, Lcom/autochips/inputsource/InputSourceClient;->setDestination(I)I

    .line 479
    iget-object p1, p0, Lcom/autochips/inputsource/InputSourceClient$1;->this$0:Lcom/autochips/inputsource/InputSourceClient;

    invoke-virtual {p1, v3}, Lcom/autochips/inputsource/InputSourceClient;->setDisplay(Landroid/view/SurfaceHolder;)V

    goto :goto_2

    .line 481
    :cond_a
    iget-object p1, p0, Lcom/autochips/inputsource/InputSourceClient$1;->this$0:Lcom/autochips/inputsource/InputSourceClient;

    invoke-virtual {p1, v3}, Lcom/autochips/inputsource/InputSourceClient;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 483
    :goto_2
    iget-object p1, p0, Lcom/autochips/inputsource/InputSourceClient$1;->this$0:Lcom/autochips/inputsource/InputSourceClient;

    iput v1, p1, Lcom/autochips/inputsource/InputSourceClient;->mCbmCtlStatus:I

    goto :goto_4

    :cond_b
    if-ne p3, p2, :cond_f

    .line 485
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/autochips/inputsource/InputSourceClient$1;->this$0:Lcom/autochips/inputsource/InputSourceClient;

    iget p1, p1, Lcom/autochips/inputsource/InputSourceClient;->mDestType:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iget-object p1, p0, Lcom/autochips/inputsource/InputSourceClient$1;->this$0:Lcom/autochips/inputsource/InputSourceClient;

    iget p1, p1, Lcom/autochips/inputsource/InputSourceClient;->mCbmCtlStatus:I

    if-ne p1, v6, :cond_c

    .line 487
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mCBMActionListener  Already STOP_REAR mDestType:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/autochips/inputsource/InputSourceClient$1;->this$0:Lcom/autochips/inputsource/InputSourceClient;

    iget p2, p2, Lcom/autochips/inputsource/InputSourceClient;->mDestType:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    .line 491
    :cond_c
    iget-object p1, p0, Lcom/autochips/inputsource/InputSourceClient$1;->this$0:Lcom/autochips/inputsource/InputSourceClient;

    iget p1, p1, Lcom/autochips/inputsource/InputSourceClient;->mSrcType:I

    iget-object p3, p0, Lcom/autochips/inputsource/InputSourceClient$1;->this$0:Lcom/autochips/inputsource/InputSourceClient;

    iget-object p3, p3, Lcom/autochips/inputsource/InputSourceClient;->mCBM:Landroid/cbm/CBManager;

    if-ne p1, v5, :cond_d

    .line 492
    iget-object p1, p0, Lcom/autochips/inputsource/InputSourceClient$1;->this$0:Lcom/autochips/inputsource/InputSourceClient;

    invoke-virtual {p1, v2}, Lcom/autochips/inputsource/InputSourceClient;->setDestination(I)I

    goto :goto_3

    .line 493
    :cond_d
    iget-object p1, p0, Lcom/autochips/inputsource/InputSourceClient$1;->this$0:Lcom/autochips/inputsource/InputSourceClient;

    iget p1, p1, Lcom/autochips/inputsource/InputSourceClient;->mSrcType:I

    iget-object p3, p0, Lcom/autochips/inputsource/InputSourceClient$1;->this$0:Lcom/autochips/inputsource/InputSourceClient;

    iget-object p3, p3, Lcom/autochips/inputsource/InputSourceClient;->mCBM:Landroid/cbm/CBManager;

    if-ne p1, v4, :cond_e

    .line 494
    iget-object p1, p0, Lcom/autochips/inputsource/InputSourceClient$1;->this$0:Lcom/autochips/inputsource/InputSourceClient;

    invoke-virtual {p1, v2}, Lcom/autochips/inputsource/InputSourceClient;->setDestination(I)I

    .line 495
    iget-object p1, p0, Lcom/autochips/inputsource/InputSourceClient$1;->this$0:Lcom/autochips/inputsource/InputSourceClient;

    invoke-virtual {p1, v3}, Lcom/autochips/inputsource/InputSourceClient;->setRearDisplay(Landroid/view/SurfaceHolder;)V

    goto :goto_3

    .line 497
    :cond_e
    iget-object p1, p0, Lcom/autochips/inputsource/InputSourceClient$1;->this$0:Lcom/autochips/inputsource/InputSourceClient;

    invoke-virtual {p1, v3}, Lcom/autochips/inputsource/InputSourceClient;->setRearDisplay(Landroid/view/SurfaceHolder;)V

    .line 499
    :goto_3
    iget-object p1, p0, Lcom/autochips/inputsource/InputSourceClient$1;->this$0:Lcom/autochips/inputsource/InputSourceClient;

    iput v6, p1, Lcom/autochips/inputsource/InputSourceClient;->mCbmCtlStatus:I

    .line 501
    :cond_f
    :goto_4
    iget-object p1, p0, Lcom/autochips/inputsource/InputSourceClient$1;->this$0:Lcom/autochips/inputsource/InputSourceClient;

    invoke-virtual {p1, v6, v7, p2}, Lcom/autochips/inputsource/InputSourceClient;->notifymsg(III)I

    goto/16 :goto_6

    .line 509
    :cond_10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mCBMActionListener CBM_START mSrcType is !"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/autochips/inputsource/InputSourceClient$1;->this$0:Lcom/autochips/inputsource/InputSourceClient;

    iget p3, p3, Lcom/autochips/inputsource/InputSourceClient;->mSrcType:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    iget-object p1, p0, Lcom/autochips/inputsource/InputSourceClient$1;->this$0:Lcom/autochips/inputsource/InputSourceClient;

    iget p1, p1, Lcom/autochips/inputsource/InputSourceClient;->mCbmCtlStatus:I

    if-nez p1, :cond_11

    .line 511
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mCBMActionListener  Already Started mDestType:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/autochips/inputsource/InputSourceClient$1;->this$0:Lcom/autochips/inputsource/InputSourceClient;

    iget p2, p2, Lcom/autochips/inputsource/InputSourceClient;->mDestType:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    .line 514
    :cond_11
    iget-object p1, p0, Lcom/autochips/inputsource/InputSourceClient$1;->this$0:Lcom/autochips/inputsource/InputSourceClient;

    iget p1, p1, Lcom/autochips/inputsource/InputSourceClient;->mCurrentStatus:I

    if-ne p1, v2, :cond_12

    const-string p1, "mCBMActionListener CBM_START been stoped by other activity in front just return resource"

    .line 515
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object p1, p0, Lcom/autochips/inputsource/InputSourceClient$1;->this$0:Lcom/autochips/inputsource/InputSourceClient;

    iput v7, p1, Lcom/autochips/inputsource/InputSourceClient;->mCbmCtlStatus:I

    return v7

    .line 519
    :cond_12
    iget-object p1, p0, Lcom/autochips/inputsource/InputSourceClient$1;->this$0:Lcom/autochips/inputsource/InputSourceClient;

    iget p1, p1, Lcom/autochips/inputsource/InputSourceClient;->mCbmCtlStatus:I

    if-ne p1, v2, :cond_13

    .line 520
    iget-object p1, p0, Lcom/autochips/inputsource/InputSourceClient$1;->this$0:Lcom/autochips/inputsource/InputSourceClient;

    invoke-static {p1}, Lcom/autochips/inputsource/InputSourceClient;->access$100(Lcom/autochips/inputsource/InputSourceClient;)I

    .line 521
    iget-object p1, p0, Lcom/autochips/inputsource/InputSourceClient$1;->this$0:Lcom/autochips/inputsource/InputSourceClient;

    iput v7, p1, Lcom/autochips/inputsource/InputSourceClient;->mCbmCtlStatus:I

    goto :goto_5

    .line 522
    :cond_13
    iget-object p1, p0, Lcom/autochips/inputsource/InputSourceClient$1;->this$0:Lcom/autochips/inputsource/InputSourceClient;

    iget p1, p1, Lcom/autochips/inputsource/InputSourceClient;->mCbmCtlStatus:I

    if-ne p1, v1, :cond_16

    .line 523
    iget-object p1, p0, Lcom/autochips/inputsource/InputSourceClient$1;->this$0:Lcom/autochips/inputsource/InputSourceClient;

    iget p1, p1, Lcom/autochips/inputsource/InputSourceClient;->mSrcType:I

    iget-object p3, p0, Lcom/autochips/inputsource/InputSourceClient$1;->this$0:Lcom/autochips/inputsource/InputSourceClient;

    iget-object p3, p3, Lcom/autochips/inputsource/InputSourceClient;->mCBM:Landroid/cbm/CBManager;

    if-eq p1, v5, :cond_14

    iget-object p1, p0, Lcom/autochips/inputsource/InputSourceClient$1;->this$0:Lcom/autochips/inputsource/InputSourceClient;

    iget p1, p1, Lcom/autochips/inputsource/InputSourceClient;->mSrcType:I

    iget-object p3, p0, Lcom/autochips/inputsource/InputSourceClient$1;->this$0:Lcom/autochips/inputsource/InputSourceClient;

    iget-object p3, p3, Lcom/autochips/inputsource/InputSourceClient;->mCBM:Landroid/cbm/CBManager;

    if-ne p1, v4, :cond_15

    .line 524
    :cond_14
    iget-object p1, p0, Lcom/autochips/inputsource/InputSourceClient$1;->this$0:Lcom/autochips/inputsource/InputSourceClient;

    invoke-virtual {p1, v1}, Lcom/autochips/inputsource/InputSourceClient;->setDestination(I)I

    .line 526
    :cond_15
    iget-object p1, p0, Lcom/autochips/inputsource/InputSourceClient$1;->this$0:Lcom/autochips/inputsource/InputSourceClient;

    iput v7, p1, Lcom/autochips/inputsource/InputSourceClient;->mCbmCtlStatus:I

    goto :goto_5

    .line 527
    :cond_16
    iget-object p1, p0, Lcom/autochips/inputsource/InputSourceClient$1;->this$0:Lcom/autochips/inputsource/InputSourceClient;

    iget p1, p1, Lcom/autochips/inputsource/InputSourceClient;->mCbmCtlStatus:I

    if-ne p1, v6, :cond_19

    .line 528
    iget-object p1, p0, Lcom/autochips/inputsource/InputSourceClient$1;->this$0:Lcom/autochips/inputsource/InputSourceClient;

    iget p1, p1, Lcom/autochips/inputsource/InputSourceClient;->mSrcType:I

    iget-object p3, p0, Lcom/autochips/inputsource/InputSourceClient$1;->this$0:Lcom/autochips/inputsource/InputSourceClient;

    iget-object p3, p3, Lcom/autochips/inputsource/InputSourceClient;->mCBM:Landroid/cbm/CBManager;

    if-eq p1, v5, :cond_17

    iget-object p1, p0, Lcom/autochips/inputsource/InputSourceClient$1;->this$0:Lcom/autochips/inputsource/InputSourceClient;

    iget p1, p1, Lcom/autochips/inputsource/InputSourceClient;->mSrcType:I

    iget-object p3, p0, Lcom/autochips/inputsource/InputSourceClient$1;->this$0:Lcom/autochips/inputsource/InputSourceClient;

    iget-object p3, p3, Lcom/autochips/inputsource/InputSourceClient;->mCBM:Landroid/cbm/CBManager;

    if-ne p1, v4, :cond_18

    .line 529
    :cond_17
    iget-object p1, p0, Lcom/autochips/inputsource/InputSourceClient$1;->this$0:Lcom/autochips/inputsource/InputSourceClient;

    invoke-virtual {p1, v1}, Lcom/autochips/inputsource/InputSourceClient;->setDestination(I)I

    .line 531
    :cond_18
    iget-object p1, p0, Lcom/autochips/inputsource/InputSourceClient$1;->this$0:Lcom/autochips/inputsource/InputSourceClient;

    iput v7, p1, Lcom/autochips/inputsource/InputSourceClient;->mCbmCtlStatus:I

    .line 533
    :cond_19
    :goto_5
    iget-object p1, p0, Lcom/autochips/inputsource/InputSourceClient$1;->this$0:Lcom/autochips/inputsource/InputSourceClient;

    invoke-virtual {p1, v6, v2, p2}, Lcom/autochips/inputsource/InputSourceClient;->notifymsg(III)I

    :goto_6
    const-string p1, "mCBMActionListener onAction End!!!"

    .line 571
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7
.end method
