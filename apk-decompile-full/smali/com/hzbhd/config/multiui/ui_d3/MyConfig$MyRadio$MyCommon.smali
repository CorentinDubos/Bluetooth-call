.class public final Lcom/hzbhd/config/multiui/ui_d3/MyConfig$MyRadio$MyCommon;
.super Lcom/hzbhd/config/base/Config$Radio$Common;
.source "MyConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/config/multiui/ui_d3/MyConfig$MyRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MyCommon"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/hzbhd/config/multiui/ui_d3/MyConfig$MyRadio$MyCommon;",
        "Lcom/hzbhd/config/base/Config$Radio$Common;",
        "()V",
        "getPresetClass",
        "",
        "isHavePreset",
        "",
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

    .line 94
    invoke-direct {p0}, Lcom/hzbhd/config/base/Config$Radio$Common;-><init>()V

    return-void
.end method


# virtual methods
.method public getPresetClass()Ljava/lang/String;
    .locals 1

    const-string v0, "com.hzbhd.radio.d3.D3PresetView"

    return-object v0
.end method

.method public isHavePreset()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
