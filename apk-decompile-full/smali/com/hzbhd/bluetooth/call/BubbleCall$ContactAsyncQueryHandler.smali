.class Lcom/hzbhd/bluetooth/call/BubbleCall$ContactAsyncQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "BubbleCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/bluetooth/call/BubbleCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ContactAsyncQueryHandler"
.end annotation


# static fields
.field private static final QUERY_CONTACT_TOKEN:I = 0x41


# instance fields
.field final synthetic this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;


# direct methods
.method public constructor <init>(Lcom/hzbhd/bluetooth/call/BubbleCall;Landroid/content/ContentResolver;)V
    .locals 0

    .line 552
    iput-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$ContactAsyncQueryHandler;->this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;

    .line 553
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method

.method private cancelFetch()I
    .locals 1

    const/16 v0, 0x41

    .line 575
    invoke-virtual {p0, v0}, Lcom/hzbhd/bluetooth/call/BubbleCall$ContactAsyncQueryHandler;->cancelOperation(I)V

    return v0
.end method

.method private fetchData(IILjava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 588
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$ContactAsyncQueryHandler;->this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;

    invoke-static {p3}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3, p4}, Lcom/hzbhd/bluetooth/call/BubbleCall;->access$800(Lcom/hzbhd/bluetooth/call/BubbleCall;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 590
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v5, Lcom/hzbhd/bluetooth/constants/BluetoothConstants$ContactQuery;->FILTER_PROJECTION_PRIMARY:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/hzbhd/bluetooth/call/BubbleCall$ContactAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2

    if-eqz p3, :cond_2

    .line 559
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {p3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 560
    invoke-interface {p3, p1}, Landroid/database/Cursor;->getLong(I)J

    const/4 p1, 0x1

    .line 561
    invoke-interface {p3, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 563
    iget-object p2, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$ContactAsyncQueryHandler;->this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;

    invoke-static {p2}, Lcom/hzbhd/bluetooth/call/BubbleCall;->access$600(Lcom/hzbhd/bluetooth/call/BubbleCall;)Landroid/os/Handler;

    move-result-object p2

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 564
    iget-object p2, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$ContactAsyncQueryHandler;->this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;

    invoke-static {p2}, Lcom/hzbhd/bluetooth/call/BubbleCall;->access$600(Lcom/hzbhd/bluetooth/call/BubbleCall;)Landroid/os/Handler;

    move-result-object p2

    iget-object v1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$ContactAsyncQueryHandler;->this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;

    invoke-static {v1}, Lcom/hzbhd/bluetooth/call/BubbleCall;->access$600(Lcom/hzbhd/bluetooth/call/BubbleCall;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const p2, 0x7f040015

    .line 565
    invoke-static {p2}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResStr(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "A6"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 566
    iget-object p2, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$ContactAsyncQueryHandler;->this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;

    invoke-virtual {p2}, Lcom/hzbhd/bluetooth/call/BubbleCall;->getBaseContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 567
    iget-object p2, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$ContactAsyncQueryHandler;->this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;

    invoke-virtual {p2}, Lcom/hzbhd/bluetooth/call/BubbleCall;->getBaseContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/hzbhd/midwareproxy/utils/PA6Utils;->setBtName(Landroid/content/Context;Ljava/lang/String;)V

    .line 559
    :cond_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 569
    :cond_1
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void
.end method

.method public queryContactName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 580
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$ContactAsyncQueryHandler;->this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/call/BubbleCall;->access$700(Lcom/hzbhd/bluetooth/call/BubbleCall;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 581
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/call/BubbleCall$ContactAsyncQueryHandler;->cancelFetch()I

    move-result v0

    const/4 v1, 0x1

    .line 582
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/hzbhd/bluetooth/call/BubbleCall$ContactAsyncQueryHandler;->fetchData(IILjava/lang/String;Ljava/lang/String;)V

    .line 584
    :cond_0
    iget-object p2, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$ContactAsyncQueryHandler;->this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;

    invoke-static {p2, p1}, Lcom/hzbhd/bluetooth/call/BubbleCall;->access$702(Lcom/hzbhd/bluetooth/call/BubbleCall;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
