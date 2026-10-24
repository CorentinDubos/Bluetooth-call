.class Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment$1;
.super Lcom/hzbhd/bluetooth/BaseBluetoothA2dpCallbackListener;
.source "A2dpPlayFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;->initUI_H1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;


# direct methods
.method constructor <init>(Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment$1;->this$0:Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;

    invoke-direct {p0}, Lcom/hzbhd/bluetooth/BaseBluetoothA2dpCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public retAvrcpElementAttributesPlaying(Ljava/lang/String;[I[Ljava/lang/String;)V
    .locals 5

    .line 326
    iget-object p1, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment$1;->this$0:Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    const-string v0, ""

    move-object v1, v0

    move-object v2, v1

    .line 330
    :goto_0
    array-length v3, p2

    if-ge p1, v3, :cond_4

    .line 331
    aget v3, p2, p1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 332
    aget-object v1, p3, p1

    goto :goto_1

    .line 334
    :cond_1
    aget v3, p2, p1

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 335
    aget-object v2, p3, p1

    goto :goto_1

    .line 337
    :cond_2
    aget v3, p2, p1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 338
    aget-object v0, p3, p1

    :cond_3
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 341
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 342
    iget-object p1, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment$1;->this$0:Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;

    const p2, 0x7f0d023d

    invoke-virtual {p1, p2}, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 344
    :cond_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 345
    iget-object p1, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment$1;->this$0:Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;

    const p2, 0x7f0d023e

    invoke-virtual {p1, p2}, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 347
    :cond_6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 348
    iget-object p1, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment$1;->this$0:Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;

    const p2, 0x7f0d023c

    invoke-virtual {p1, p2}, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 350
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "---------retAvrcpElementAttributesPlaying() artist="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ; album="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ; title="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "sw-ap006"

    invoke-static {p2, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object p1, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment$1;->this$0:Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 352
    iget-object p1, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment$1;->this$0:Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;

    invoke-virtual {p1, v1, v0, v2}, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;->setId3Info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method public retAvrcpPlayStatus(Ljava/lang/String;JJB)V
    .locals 0

    .line 320
    iget-object p1, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment$1;->this$0:Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 321
    iget-object p1, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment$1;->this$0:Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;

    invoke-virtual {p1, p6}, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;->setA2dpPlayState(I)V

    :cond_0
    return-void
.end method

.method public retAvrcpUpdateSongStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 358
    iget-object v0, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment$1;->this$0:Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;

    invoke-virtual {v0}, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 359
    :cond_0
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

    const-string/jumbo v1, "retAvrcpUpdateSongStatus"

    invoke-static {v1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 364
    iget-object p1, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment$1;->this$0:Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;

    const v0, 0x7f0d023d

    invoke-virtual {p1, v0}, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 366
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 367
    iget-object p3, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment$1;->this$0:Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;

    const v0, 0x7f0d023e

    invoke-virtual {p3, v0}, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 369
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 370
    iget-object p2, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment$1;->this$0:Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;

    const v0, 0x7f0d023c

    invoke-virtual {p2, v0}, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 372
    :cond_3
    iget-object v0, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment$1;->this$0:Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;

    invoke-virtual {v0, p3, p1, p2}, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;->setId3Info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
