.class public Lcom/hzbhd/config/base/Config$Device;
.super Ljava/lang/Object;
.source "Config.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/config/base/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Device"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0016\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u001a\u0010\u0005\u001a\u00020\u0006X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/hzbhd/config/base/Config$Device;",
        "",
        "device",
        "Lcom/hzbhd/config/device/Device;",
        "(Lcom/hzbhd/config/device/Device;)V",
        "isUseCvbsInDvdForAHD",
        "",
        "()Z",
        "setUseCvbsInDvdForAHD",
        "(Z)V",
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
.field private isUseCvbsInDvdForAHD:Z


# direct methods
.method public constructor <init>(Lcom/hzbhd/config/device/Device;)V
    .locals 1

    const-string v0, "device"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isUseCvbsInDvdForAHD()Z
    .locals 1

    .line 119
    iget-boolean v0, p0, Lcom/hzbhd/config/base/Config$Device;->isUseCvbsInDvdForAHD:Z

    return v0
.end method

.method public setUseCvbsInDvdForAHD(Z)V
    .locals 0

    .line 119
    iput-boolean p1, p0, Lcom/hzbhd/config/base/Config$Device;->isUseCvbsInDvdForAHD:Z

    return-void
.end method
