.class Lcom/hzbhd/bluetooth/call/CallFragment$ContactAsyncQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "CallFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/bluetooth/call/CallFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ContactAsyncQueryHandler"
.end annotation


# static fields
.field private static final QUERY_CONTACT_TOKEN:I = 0x41


# instance fields
.field final synthetic this$0:Lcom/hzbhd/bluetooth/call/CallFragment;


# direct methods
.method public constructor <init>(Lcom/hzbhd/bluetooth/call/CallFragment;Landroid/content/ContentResolver;)V
    .locals 0

    .line 631
    iput-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment$ContactAsyncQueryHandler;->this$0:Lcom/hzbhd/bluetooth/call/CallFragment;

    .line 632
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method

.method private cancelFetch()I
    .locals 1

    const/16 v0, 0x41

    .line 667
    invoke-virtual {p0, v0}, Lcom/hzbhd/bluetooth/call/CallFragment$ContactAsyncQueryHandler;->cancelOperation(I)V

    return v0
.end method

.method private fetchData(IILjava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 680
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--------format Contact number = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothCallFragment"

    invoke-static {v1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment$ContactAsyncQueryHandler;->this$0:Lcom/hzbhd/bluetooth/call/CallFragment;

    invoke-static {p3}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3, p4}, Lcom/hzbhd/bluetooth/call/CallFragment;->access$1100(Lcom/hzbhd/bluetooth/call/CallFragment;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 682
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v5, Lcom/hzbhd/bluetooth/constants/BluetoothConstants$ContactQuery;->FILTER_PROJECTION_PRIMARY:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/hzbhd/bluetooth/call/CallFragment$ContactAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 9

    const-string p1, "BluetoothCallFragment"

    const-string p2, "--------onQueryComplete(1)-------"

    .line 637
    invoke-static {p1, p2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_3

    const-string p2, "--------onQueryComplete(2)-------"

    .line 639
    invoke-static {p1, p2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {p3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result p2

    if-nez p2, :cond_2

    const/4 p2, 0x4

    .line 641
    invoke-interface {p3, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const/4 p2, 0x0

    .line 642
    invoke-interface {p3, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 p2, 0x1

    .line 643
    invoke-interface {p3, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 645
    iget-object v5, p0, Lcom/hzbhd/bluetooth/call/CallFragment$ContactAsyncQueryHandler;->this$0:Lcom/hzbhd/bluetooth/call/CallFragment;

    invoke-static {v5}, Lcom/hzbhd/bluetooth/call/CallFragment;->access$400(Lcom/hzbhd/bluetooth/call/CallFragment;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 646
    iget-object v5, p0, Lcom/hzbhd/bluetooth/call/CallFragment$ContactAsyncQueryHandler;->this$0:Lcom/hzbhd/bluetooth/call/CallFragment;

    invoke-static {v5}, Lcom/hzbhd/bluetooth/call/CallFragment;->access$400(Lcom/hzbhd/bluetooth/call/CallFragment;)Landroid/os/Handler;

    move-result-object v5

    iget-object v7, p0, Lcom/hzbhd/bluetooth/call/CallFragment$ContactAsyncQueryHandler;->this$0:Lcom/hzbhd/bluetooth/call/CallFragment;

    invoke-static {v7}, Lcom/hzbhd/bluetooth/call/CallFragment;->access$400(Lcom/hzbhd/bluetooth/call/CallFragment;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v6, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const v5, 0x7f040015

    .line 647
    invoke-static {v5}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResStr(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "A6"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 648
    iget-object v5, p0, Lcom/hzbhd/bluetooth/call/CallFragment$ContactAsyncQueryHandler;->this$0:Lcom/hzbhd/bluetooth/call/CallFragment;

    invoke-virtual {v5}, Lcom/hzbhd/bluetooth/call/CallFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 649
    iget-object v5, p0, Lcom/hzbhd/bluetooth/call/CallFragment$ContactAsyncQueryHandler;->this$0:Lcom/hzbhd/bluetooth/call/CallFragment;

    invoke-virtual {v5}, Lcom/hzbhd/bluetooth/call/CallFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/hzbhd/midwareproxy/utils/PA6Utils;->setBtName(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-lez v5, :cond_1

    const/4 v5, 0x5

    .line 651
    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 652
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "----get Contact name= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ; photoId="

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " photoUri="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment$ContactAsyncQueryHandler;->this$0:Lcom/hzbhd/bluetooth/call/CallFragment;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/call/CallFragment;->access$400(Lcom/hzbhd/bluetooth/call/CallFragment;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 655
    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 656
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 657
    iget-object p2, p0, Lcom/hzbhd/bluetooth/call/CallFragment$ContactAsyncQueryHandler;->this$0:Lcom/hzbhd/bluetooth/call/CallFragment;

    invoke-static {p2}, Lcom/hzbhd/bluetooth/call/CallFragment;->access$400(Lcom/hzbhd/bluetooth/call/CallFragment;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 640
    :cond_1
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0

    .line 661
    :cond_2
    :goto_1
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void
.end method

.method public queryContactName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 672
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment$ContactAsyncQueryHandler;->this$0:Lcom/hzbhd/bluetooth/call/CallFragment;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/call/CallFragment;->access$1000(Lcom/hzbhd/bluetooth/call/CallFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 673
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/call/CallFragment$ContactAsyncQueryHandler;->cancelFetch()I

    move-result v0

    const/4 v1, 0x1

    .line 674
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/hzbhd/bluetooth/call/CallFragment$ContactAsyncQueryHandler;->fetchData(IILjava/lang/String;Ljava/lang/String;)V

    .line 676
    :cond_0
    iget-object p2, p0, Lcom/hzbhd/bluetooth/call/CallFragment$ContactAsyncQueryHandler;->this$0:Lcom/hzbhd/bluetooth/call/CallFragment;

    invoke-static {p2, p1}, Lcom/hzbhd/bluetooth/call/CallFragment;->access$1002(Lcom/hzbhd/bluetooth/call/CallFragment;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
