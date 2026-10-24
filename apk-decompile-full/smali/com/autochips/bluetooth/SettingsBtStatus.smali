.class public Lcom/autochips/bluetooth/SettingsBtStatus;
.super Ljava/lang/Object;
.source "SettingsBtStatus.java"


# static fields
.field public static final CONNECTION_STATUS_ACTIVE:I = 0x0

.field public static final CONNECTION_STATUS_CONNECTED:I = 0x1

.field public static final CONNECTION_STATUS_CONNECTING:I = 0x3

.field public static final CONNECTION_STATUS_DISCONNECTED:I = 0x2

.field public static final CONNECTION_STATUS_DISCONNECTING:I = 0x4

.field public static final CONNECTION_STATUS_UNKNOWN:I = 0x5

.field private static final TAG:Ljava/lang/String; = "SettingsBtStatus"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getConnectionStatusSummary(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static final getPairingStatusSummary(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static final isConnectionStatusBusy(I)Z
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static final isConnectionStatusConnected(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method
