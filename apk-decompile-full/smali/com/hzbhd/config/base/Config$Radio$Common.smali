.class public Lcom/hzbhd/config/base/Config$Radio$Common;
.super Ljava/lang/Object;
.source "Config.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/config/base/Config$Radio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Common"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0016\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J\u0008\u0010\u0007\u001a\u00020\u0004H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/hzbhd/config/base/Config$Radio$Common;",
        "",
        "()V",
        "changePsAndLabel",
        "",
        "getPresetClass",
        "",
        "isHavePreset",
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

    .line 738
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changePsAndLabel()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPresetClass()Ljava/lang/String;
    .locals 1

    const-string v0, "com.hzbhd.radio.big_view.PresetView"

    return-object v0
.end method

.method public isHavePreset()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
