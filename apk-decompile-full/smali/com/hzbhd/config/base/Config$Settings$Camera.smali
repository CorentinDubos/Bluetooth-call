.class public Lcom/hzbhd/config/base/Config$Settings$Camera;
.super Ljava/lang/Object;
.source "Config.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/config/base/Config$Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Camera"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u0016\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0016J\u0008\u0010\u0007\u001a\u00020\u0004H\u0016J\u0008\u0010\u0008\u001a\u00020\u0004H\u0016J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0004H\u0016J\u0018\u0010\u000c\u001a\u00020\n2\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u0004H\u0016J\u0010\u0010\r\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0004H\u0016J\u0010\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0004H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/hzbhd/config/base/Config$Settings$Camera;",
        "",
        "()V",
        "getCameraHardwareChannel",
        "",
        "getCameraTypeValueFromMetazone",
        "channel",
        "getFastAVM",
        "getKernelBackCameraChannel",
        "setCameraHardwareChannel",
        "",
        "value",
        "setCameraTypeValueFromMetazone",
        "setFastAVM",
        "setKernelBackCameraChannel",
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

    .line 827
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCameraHardwareChannel()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getCameraTypeValueFromMetazone(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getFastAVM()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getKernelBackCameraChannel()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setCameraHardwareChannel(I)V
    .locals 0

    return-void
.end method

.method public setCameraTypeValueFromMetazone(II)V
    .locals 0

    return-void
.end method

.method public setFastAVM(I)V
    .locals 0

    return-void
.end method

.method public setKernelBackCameraChannel(I)V
    .locals 0

    return-void
.end method
