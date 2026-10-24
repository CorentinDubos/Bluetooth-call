.class public Lcom/autochips/bluetooth/util/NotificationFactory;
.super Ljava/lang/Object;
.source "NotificationFactory.java"


# static fields
.field private static final CACHE_SIZE:I = 0x8

.field private static cache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/app/Notification;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/autochips/bluetooth/util/NotificationFactory;->cache:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getProfileNotification(I)Landroid/app/Notification;
    .locals 4

    const-class v0, Lcom/autochips/bluetooth/util/NotificationFactory;

    monitor-enter v0

    .line 73
    :try_start_0
    sget-object v1, Lcom/autochips/bluetooth/util/NotificationFactory;->cache:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 76
    sget-object v1, Lcom/autochips/bluetooth/util/NotificationFactory;->cache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/16 v2, 0x8

    if-le v1, v2, :cond_0

    .line 78
    sget-object v1, Lcom/autochips/bluetooth/util/NotificationFactory;->cache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 81
    :cond_0
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 82
    sget-object v2, Lcom/autochips/bluetooth/util/NotificationFactory;->cache:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :cond_1
    sget-object v1, Lcom/autochips/bluetooth/util/NotificationFactory;->cache:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Notification;

    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/app/Notification;->when:J

    const/4 v1, 0x0

    .line 88
    iput v1, p0, Landroid/app/Notification;->defaults:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getProfileNotificationId(II)I
    .locals 0

    .line 62
    invoke-static {p0}, Lcom/autochips/bluetooth/BluetoothProfile;->getProfileStart(I)I

    move-result p0

    add-int/2addr p0, p1

    return p0
.end method
