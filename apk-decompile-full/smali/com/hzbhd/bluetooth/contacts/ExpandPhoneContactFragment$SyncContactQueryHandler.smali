.class Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$SyncContactQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ExpandPhoneContactFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SyncContactQueryHandler"
.end annotation


# static fields
.field private static final QUERY_CONTACT_TOKEN:I = 0x41


# instance fields
.field final synthetic this$0:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;


# direct methods
.method public constructor <init>(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;Landroid/content/ContentResolver;)V
    .locals 0

    .line 1483
    iput-object p1, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$SyncContactQueryHandler;->this$0:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    .line 1484
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method

.method private cancelFetch()I
    .locals 1

    const/16 v0, 0x41

    .line 1501
    invoke-virtual {p0, v0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$SyncContactQueryHandler;->cancelOperation(I)V

    return v0
.end method

.method private fetchData(II)V
    .locals 8

    .line 1511
    sget-object v3, Lcom/hzbhd/bluetooth/db/DataBaseDef$DatabaseInfo;->DEVICE_CONTENT_URI:Landroid/net/Uri;

    .line 1512
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 p2, 0x1

    new-array v6, p2, [Ljava/lang/String;

    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    aput-object p2, v6, v0

    const/4 v4, 0x0

    const-string v5, "device_addr=?"

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$SyncContactQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 1

    .line 1489
    invoke-static {}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string p2, "--------onQueryComplete(1)-------"

    invoke-static {p1, p2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 1491
    invoke-static {}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "--------onQueryComplete(2)-------"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1492
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    .line 1495
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void
.end method

.method public queryFavorites()V
    .locals 2

    .line 1506
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$SyncContactQueryHandler;->cancelFetch()I

    move-result v0

    const/4 v1, 0x1

    .line 1507
    invoke-direct {p0, v0, v1}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$SyncContactQueryHandler;->fetchData(II)V

    return-void
.end method
