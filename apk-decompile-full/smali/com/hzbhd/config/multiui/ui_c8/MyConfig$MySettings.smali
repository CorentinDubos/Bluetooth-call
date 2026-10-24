.class public final Lcom/hzbhd/config/multiui/ui_c8/MyConfig$MySettings;
.super Lcom/hzbhd/config/base/Config$Settings;
.source "MyConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/config/multiui/ui_c8/MyConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MySettings"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/hzbhd/config/multiui/ui_c8/MyConfig$MySettings;",
        "Lcom/hzbhd/config/base/Config$Settings;",
        "()V",
        "showStorageUnitGB",
        "",
        "getShowStorageUnitGB",
        "()Z",
        "setShowStorageUnitGB",
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
.field private showStorageUnitGB:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 109
    invoke-direct {p0}, Lcom/hzbhd/config/base/Config$Settings;-><init>()V

    const/4 v0, 0x1

    .line 110
    iput-boolean v0, p0, Lcom/hzbhd/config/multiui/ui_c8/MyConfig$MySettings;->showStorageUnitGB:Z

    return-void
.end method


# virtual methods
.method public getShowStorageUnitGB()Z
    .locals 1

    .line 110
    iget-boolean v0, p0, Lcom/hzbhd/config/multiui/ui_c8/MyConfig$MySettings;->showStorageUnitGB:Z

    return v0
.end method

.method public setShowStorageUnitGB(Z)V
    .locals 0

    .line 110
    iput-boolean p1, p0, Lcom/hzbhd/config/multiui/ui_c8/MyConfig$MySettings;->showStorageUnitGB:Z

    return-void
.end method
