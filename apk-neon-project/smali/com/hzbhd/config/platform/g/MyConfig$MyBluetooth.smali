.class public final Lcom/hzbhd/config/platform/g/MyConfig$MyBluetooth;
.super Lcom/hzbhd/config/base/Config$Bluetooth;
.source "MyConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/config/platform/g/MyConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MyBluetooth"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0008\u0010\u0005\u001a\u00020\u0004H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/hzbhd/config/platform/g/MyConfig$MyBluetooth;",
        "Lcom/hzbhd/config/base/Config$Bluetooth;",
        "()V",
        "isAndroidBluetooth",
        "",
        "isCallsBindAddress",
        "Config_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/hzbhd/config/base/Config$Bluetooth;-><init>()V

    return-void
.end method


# virtual methods
.method public isAndroidBluetooth()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isCallsBindAddress()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
