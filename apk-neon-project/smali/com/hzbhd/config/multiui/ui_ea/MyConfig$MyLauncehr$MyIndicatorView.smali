.class public final Lcom/hzbhd/config/multiui/ui_ea/MyConfig$MyLauncehr$MyIndicatorView;
.super Lcom/hzbhd/config/base/Config$Launcher$IndicatorView;
.source "MyConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/config/multiui/ui_ea/MyConfig$MyLauncehr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MyIndicatorView"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J\u0008\u0010\u0007\u001a\u00020\u0006H\u0016J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u0008\u0010\n\u001a\u00020\tH\u0016J\u0008\u0010\u000b\u001a\u00020\u0006H\u0016J\u0008\u0010\u000c\u001a\u00020\u0004H\u0016\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/hzbhd/config/multiui/ui_ea/MyConfig$MyLauncehr$MyIndicatorView;",
        "Lcom/hzbhd/config/base/Config$Launcher$IndicatorView;",
        "()V",
        "getAppMargin",
        "",
        "getIndicatorViewHeight",
        "",
        "getIndicatorViewWidth",
        "getItemDrawableN",
        "",
        "getItemDrawableP",
        "getItemMargin",
        "getWorkspaceMargin",
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

    .line 83
    invoke-direct {p0}, Lcom/hzbhd/config/base/Config$Launcher$IndicatorView;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppMargin()[F
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 87
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x3dcccccd    # 0.1f
    .end array-data
.end method

.method public getIndicatorViewHeight()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public getIndicatorViewWidth()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public getItemDrawableN()Ljava/lang/String;
    .locals 1

    const-string v0, "__ea__ic_pageindicator_default"

    return-object v0
.end method

.method public getItemDrawableP()Ljava/lang/String;
    .locals 1

    const-string v0, "__ea__ic_pageindicator_current"

    return-object v0
.end method

.method public getItemMargin()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public getWorkspaceMargin()[F
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 86
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x3dcccccd    # 0.1f
    .end array-data
.end method
