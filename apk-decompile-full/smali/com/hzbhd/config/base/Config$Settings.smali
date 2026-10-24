.class public Lcom/hzbhd/config/base/Config$Settings;
.super Ljava/lang/Object;
.source "Config.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/config/base/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Settings"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/config/base/Config$Settings$Camera;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r\u0008\u0016\u0018\u00002\u00020\u0001:\u0001\'B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0018\u0010\u0019\u001a\u00020\u00162\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0010\u0010\u001c\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0010\u0010\u001d\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0008\u0010\u001e\u001a\u00020\u0018H\u0016J\u0008\u0010\u001f\u001a\u00020\u0018H\u0016J\u0008\u0010 \u001a\u00020\u0018H\u0016J\u0008\u0010!\u001a\u00020\u0018H\u0016J\u0008\u0010\"\u001a\u00020\u0016H\u0016J,\u0010#\u001a\u00020\u00102\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0008\u0010$\u001a\u0004\u0018\u00010\u00042\u0006\u0010%\u001a\u00020\u00182\u0006\u0010&\u001a\u00020\u0018H\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006("
    }
    d2 = {
        "Lcom/hzbhd/config/base/Config$Settings;",
        "",
        "()V",
        "a6SettingsPwd",
        "",
        "getA6SettingsPwd",
        "()Ljava/lang/String;",
        "setA6SettingsPwd",
        "(Ljava/lang/String;)V",
        "camera",
        "Lcom/hzbhd/config/base/Config$Settings$Camera;",
        "getCamera",
        "()Lcom/hzbhd/config/base/Config$Settings$Camera;",
        "setCamera",
        "(Lcom/hzbhd/config/base/Config$Settings$Camera;)V",
        "showStorageUnitGB",
        "",
        "getShowStorageUnitGB",
        "()Z",
        "setShowStorageUnitGB",
        "(Z)V",
        "chooseCarplayI2CBusAddr",
        "",
        "value",
        "",
        "chooseUsbMode",
        "context",
        "Landroid/content/Context;",
        "chooseUsbPort0Protocol",
        "chooseUsbPort1Protocol",
        "getCarplayI2CBusAddr",
        "getUsbMode",
        "getUsbPort0Protocol",
        "getUsbPort1Protocol",
        "setLocalUpdate",
        "setLogo",
        "path",
        "screenW",
        "screenH",
        "Camera",
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
.field private a6SettingsPwd:Ljava/lang/String;

.field private camera:Lcom/hzbhd/config/base/Config$Settings$Camera;

.field private showStorageUnitGB:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 824
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 825
    new-instance v0, Lcom/hzbhd/config/base/Config$Settings$Camera;

    invoke-direct {v0}, Lcom/hzbhd/config/base/Config$Settings$Camera;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/config/base/Config$Settings;->camera:Lcom/hzbhd/config/base/Config$Settings$Camera;

    const-string v0, "2691"

    .line 934
    iput-object v0, p0, Lcom/hzbhd/config/base/Config$Settings;->a6SettingsPwd:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public chooseCarplayI2CBusAddr(I)V
    .locals 0

    return-void
.end method

.method public chooseUsbMode(Landroid/content/Context;I)V
    .locals 0

    const-string p2, "context"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public chooseUsbPort0Protocol(I)V
    .locals 0

    return-void
.end method

.method public chooseUsbPort1Protocol(I)V
    .locals 0

    return-void
.end method

.method public getA6SettingsPwd()Ljava/lang/String;
    .locals 1

    .line 934
    iget-object v0, p0, Lcom/hzbhd/config/base/Config$Settings;->a6SettingsPwd:Ljava/lang/String;

    return-object v0
.end method

.method public getCamera()Lcom/hzbhd/config/base/Config$Settings$Camera;
    .locals 1

    .line 825
    iget-object v0, p0, Lcom/hzbhd/config/base/Config$Settings;->camera:Lcom/hzbhd/config/base/Config$Settings$Camera;

    return-object v0
.end method

.method public getCarplayI2CBusAddr()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getShowStorageUnitGB()Z
    .locals 1

    .line 929
    iget-boolean v0, p0, Lcom/hzbhd/config/base/Config$Settings;->showStorageUnitGB:Z

    return v0
.end method

.method public getUsbMode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getUsbPort0Protocol()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getUsbPort1Protocol()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setA6SettingsPwd(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 934
    iput-object p1, p0, Lcom/hzbhd/config/base/Config$Settings;->a6SettingsPwd:Ljava/lang/String;

    return-void
.end method

.method public setCamera(Lcom/hzbhd/config/base/Config$Settings$Camera;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 825
    iput-object p1, p0, Lcom/hzbhd/config/base/Config$Settings;->camera:Lcom/hzbhd/config/base/Config$Settings$Camera;

    return-void
.end method

.method public setLocalUpdate()V
    .locals 0

    return-void
.end method

.method public setLogo(Landroid/content/Context;Ljava/lang/String;II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setShowStorageUnitGB(Z)V
    .locals 0

    .line 929
    iput-boolean p1, p0, Lcom/hzbhd/config/base/Config$Settings;->showStorageUnitGB:Z

    return-void
.end method
