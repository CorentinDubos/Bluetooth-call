.class public final Lcom/hzbhd/config/multiui/ui_i3/MyConfig$MyLauncehr$MyIndicatorView;
.super Lcom/hzbhd/config/base/Config$Launcher$IndicatorView;
.source "MyConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/config/multiui/ui_i3/MyConfig$MyLauncehr;
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
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0014\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\t\u001a\u00020\nH\u0016J\u0008\u0010\u000b\u001a\u00020\nH\u0016J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0008\u0010\u000e\u001a\u00020\u0004H\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/hzbhd/config/multiui/ui_i3/MyConfig$MyLauncehr$MyIndicatorView;",
        "Lcom/hzbhd/config/base/Config$Launcher$IndicatorView;",
        "()V",
        "appsMargin",
        "",
        "getAppsMargin",
        "()[F",
        "setAppsMargin",
        "([F)V",
        "getItemDrawableN",
        "",
        "getItemDrawableP",
        "getItemMargin",
        "",
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


# instance fields
.field private appsMargin:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Lcom/hzbhd/config/base/Config$Launcher$IndicatorView;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 71
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/hzbhd/config/multiui/ui_i3/MyConfig$MyLauncehr$MyIndicatorView;->appsMargin:[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        -0x41b33333    # -0.2f
    .end array-data
.end method


# virtual methods
.method public getAppsMargin()[F
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/hzbhd/config/multiui/ui_i3/MyConfig$MyLauncehr$MyIndicatorView;->appsMargin:[F

    return-object v0
.end method

.method public getItemDrawableN()Ljava/lang/String;
    .locals 1

    const-string v0, "__i3__ic_pageindicator_current"

    return-object v0
.end method

.method public getItemDrawableP()Ljava/lang/String;
    .locals 1

    const-string v0, "__i3__ic_pageindicator_default"

    return-object v0
.end method

.method public getItemMargin()I
    .locals 1

    const/16 v0, 0x1e

    return v0
.end method

.method public getWorkspaceMargin()[F
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 70
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        -0x42dc28f6    # -0.04f
        0x3e19999a    # 0.15f
        0x0
        0x3d4ccccd    # 0.05f
    .end array-data
.end method

.method public setAppsMargin([F)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iput-object p1, p0, Lcom/hzbhd/config/multiui/ui_i3/MyConfig$MyLauncehr$MyIndicatorView;->appsMargin:[F

    return-void
.end method
