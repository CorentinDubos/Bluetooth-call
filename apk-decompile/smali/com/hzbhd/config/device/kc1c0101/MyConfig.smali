.class public final Lcom/hzbhd/config/device/kc1c0101/MyConfig;
.super Lcom/hzbhd/config/base/Config;
.source "MyConfig.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/hzbhd/config/device/kc1c0101/MyConfig;",
        "Lcom/hzbhd/config/base/Config;",
        "()V",
        "device",
        "Lcom/hzbhd/config/base/Config$Device;",
        "getDevice",
        "()Lcom/hzbhd/config/base/Config$Device;",
        "setDevice",
        "(Lcom/hzbhd/config/base/Config$Device;)V",
        "Config_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private device:Lcom/hzbhd/config/base/Config$Device;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 5
    invoke-direct {p0}, Lcom/hzbhd/config/base/Config;-><init>()V

    .line 6
    new-instance v0, Lcom/hzbhd/config/base/Config$Device;

    new-instance v1, Lcom/hzbhd/config/device/kc1c0101/MyDevice;

    invoke-direct {v1}, Lcom/hzbhd/config/device/kc1c0101/MyDevice;-><init>()V

    check-cast v1, Lcom/hzbhd/config/device/Device;

    invoke-direct {v0, v1}, Lcom/hzbhd/config/base/Config$Device;-><init>(Lcom/hzbhd/config/device/Device;)V

    iput-object v0, p0, Lcom/hzbhd/config/device/kc1c0101/MyConfig;->device:Lcom/hzbhd/config/base/Config$Device;

    return-void
.end method


# virtual methods
.method public getDevice()Lcom/hzbhd/config/base/Config$Device;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/hzbhd/config/device/kc1c0101/MyConfig;->device:Lcom/hzbhd/config/base/Config$Device;

    return-object v0
.end method

.method public setDevice(Lcom/hzbhd/config/base/Config$Device;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iput-object p1, p0, Lcom/hzbhd/config/device/kc1c0101/MyConfig;->device:Lcom/hzbhd/config/base/Config$Device;

    return-void
.end method
