.class public final Lcom/hzbhd/config/multiui/ui_g7/MyConfig$MyLauncehr$MyIndicatorView;
.super Lcom/hzbhd/config/base/Config$Launcher$IndicatorView;
.source "MyConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/config/multiui/ui_g7/MyConfig$MyLauncehr;
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
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0014\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\t\u001a\u00020\u0004H\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/hzbhd/config/multiui/ui_g7/MyConfig$MyLauncehr$MyIndicatorView;",
        "Lcom/hzbhd/config/base/Config$Launcher$IndicatorView;",
        "()V",
        "appsMargin",
        "",
        "getAppsMargin",
        "()[F",
        "setAppsMargin",
        "([F)V",
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

    .line 65
    invoke-direct {p0}, Lcom/hzbhd/config/base/Config$Launcher$IndicatorView;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 69
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/hzbhd/config/multiui/ui_g7/MyConfig$MyLauncehr$MyIndicatorView;->appsMargin:[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x3d4ccccd    # 0.05f
    .end array-data
.end method


# virtual methods
.method public getAppsMargin()[F
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/hzbhd/config/multiui/ui_g7/MyConfig$MyLauncehr$MyIndicatorView;->appsMargin:[F

    return-object v0
.end method

.method public getWorkspaceMargin()[F
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 68
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x3ea8f5c3    # 0.33f
    .end array-data
.end method

.method public setAppsMargin([F)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iput-object p1, p0, Lcom/hzbhd/config/multiui/ui_g7/MyConfig$MyLauncehr$MyIndicatorView;->appsMargin:[F

    return-void
.end method
