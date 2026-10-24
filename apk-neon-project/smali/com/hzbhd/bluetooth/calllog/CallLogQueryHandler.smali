.class public Lcom/hzbhd/bluetooth/calllog/CallLogQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "CallLogQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/bluetooth/calllog/CallLogQueryHandler$CallbackListener;
    }
.end annotation


# static fields
.field private static final QUERY_ALL_CALLS_TOKEN:I = 0x35

.field private static final QUERY_INCOMING_CALLS_TOKEN:I = 0x38

.field private static final QUERY_MISS_CALLS_TOKEN:I = 0x36

.field private static final QUERY_OUTGOING_CALLS_TOKEN:I = 0x37


# instance fields
.field private final mCallbackListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/hzbhd/bluetooth/calllog/CallLogQueryHandler$CallbackListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCallsCursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Lcom/hzbhd/bluetooth/calllog/CallLogQueryHandler$CallbackListener;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 31
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/hzbhd/bluetooth/calllog/CallLogQueryHandler;->mCallbackListener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private cancelFetch(I)I
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x36

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/16 v1, 0x37

    goto :goto_0

    :cond_1
    const/16 v1, 0x38

    .line 70
    :goto_0
    invoke-virtual {p0, v1}, Lcom/hzbhd/bluetooth/calllog/CallLogQueryHandler;->cancelOperation(I)V

    return v1
.end method

.method private cancelFetch()V
    .locals 1

    const/16 v0, 0x35

    .line 51
    invoke-virtual {p0, v0}, Lcom/hzbhd/bluetooth/calllog/CallLogQueryHandler;->cancelOperation(I)V

    return-void
.end method

.method private fetchCalls(III)V
    .locals 13

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const-string/jumbo v2, "type"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "numberlabel"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "%s = ? and  %s = ?"

    .line 91
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 92
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v8, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    sget-object v9, Lcom/hzbhd/bluetooth/calllog/CallLogQuery;->_PROJECTION:[Ljava/lang/String;

    new-array v11, v0, [Ljava/lang/String;

    .line 93
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v11, v3

    .line 94
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v11, v4

    const-string v12, "date DESC"

    move-object v5, p0

    move v6, p1

    .line 92
    invoke-virtual/range {v5 .. v12}, Lcom/hzbhd/bluetooth/calllog/CallLogQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private fetchCalls(IIZZ)V
    .locals 10

    const/4 p3, 0x1

    new-array p4, p3, [Ljava/lang/Object;

    const-string v0, "numberlabel"

    const/4 v1, 0x0

    aput-object v0, p4, v1

    const-string v0, "%s = ?"

    .line 104
    invoke-static {v0, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 105
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/hzbhd/bluetooth/calllog/CallLogQuery;->_PROJECTION:[Ljava/lang/String;

    new-array v8, p3, [Ljava/lang/String;

    .line 106
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v8, v1

    const-string v9, "date DESC"

    move-object v2, p0

    move v3, p1

    .line 105
    invoke-virtual/range {v2 .. v9}, Lcom/hzbhd/bluetooth/calllog/CallLogQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public fetchAllCalls()V
    .locals 2

    .line 75
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getDeviceInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "N47"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 76
    :cond_0
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/calllog/CallLogQueryHandler;->cancelFetch()V

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/hzbhd/bluetooth/calllog/CallLogQueryHandler;->mCallsCursor:Landroid/database/Cursor;

    const/16 v0, 0x35

    const/4 v1, 0x0

    .line 78
    invoke-direct {p0, v0, v1, v1, v1}, Lcom/hzbhd/bluetooth/calllog/CallLogQueryHandler;->fetchCalls(IIZZ)V

    return-void
.end method

.method public fetchAllCalls(I)V
    .locals 2

    .line 82
    invoke-direct {p0, p1}, Lcom/hzbhd/bluetooth/calllog/CallLogQueryHandler;->cancelFetch(I)I

    move-result v0

    const/4 v1, 0x0

    .line 83
    iput-object v1, p0, Lcom/hzbhd/bluetooth/calllog/CallLogQueryHandler;->mCallsCursor:Landroid/database/Cursor;

    const/4 v1, 0x1

    .line 84
    invoke-direct {p0, v0, v1, p1}, Lcom/hzbhd/bluetooth/calllog/CallLogQueryHandler;->fetchCalls(III)V

    return-void
.end method

.method protected declared-synchronized onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 0

    monitor-enter p0

    const/16 p2, 0x35

    if-eq p1, p2, :cond_0

    const/16 p2, 0x36

    if-eq p1, p2, :cond_0

    const/16 p2, 0x37

    if-eq p1, p2, :cond_0

    const/16 p2, 0x38

    if-ne p1, p2, :cond_1

    .line 38
    :cond_0
    :try_start_0
    iput-object p3, p0, Lcom/hzbhd/bluetooth/calllog/CallLogQueryHandler;->mCallsCursor:Landroid/database/Cursor;

    .line 39
    iget-object p1, p0, Lcom/hzbhd/bluetooth/calllog/CallLogQueryHandler;->mCallbackListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hzbhd/bluetooth/calllog/CallLogQueryHandler$CallbackListener;

    if-eqz p1, :cond_1

    .line 41
    iget-object p2, p0, Lcom/hzbhd/bluetooth/calllog/CallLogQueryHandler;->mCallsCursor:Landroid/database/Cursor;

    invoke-interface {p1, p2}, Lcom/hzbhd/bluetooth/calllog/CallLogQueryHandler$CallbackListener;->onCallsFetched(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
