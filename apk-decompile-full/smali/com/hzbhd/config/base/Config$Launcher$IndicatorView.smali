.class public Lcom/hzbhd/config/base/Config$Launcher$IndicatorView;
.super Ljava/lang/Object;
.source "Config.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/config/base/Config$Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IndicatorView"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0014\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0015\n\u0002\u0008\u0002\u0008\u0016\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\t\u001a\u00020\u0004H\u0016J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u0008\u0010\u000c\u001a\u00020\u000bH\u0016J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u000eH\u0016J\u0008\u0010\u0010\u001a\u00020\u000bH\u0016J\u0008\u0010\u0011\u001a\u00020\u000bH\u0016J\u0006\u0010\u0012\u001a\u00020\u0013J\u0008\u0010\u0014\u001a\u00020\u0004H\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/hzbhd/config/base/Config$Launcher$IndicatorView;",
        "",
        "()V",
        "appsMargin",
        "",
        "getAppsMargin",
        "()[F",
        "setAppsMargin",
        "([F)V",
        "getAppMargin",
        "getIndicatorViewHeight",
        "",
        "getIndicatorViewWidth",
        "getItemDrawableN",
        "",
        "getItemDrawableP",
        "getItemMargin",
        "getMaxSize",
        "getRule",
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

    .line 607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 651
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/hzbhd/config/base/Config$Launcher$IndicatorView;->appsMargin:[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x3ca3d70a    # 0.02f
    .end array-data
.end method


# virtual methods
.method public getAppMargin()[F
    .locals 1

    .line 655
    invoke-virtual {p0}, Lcom/hzbhd/config/base/Config$Launcher$IndicatorView;->getAppsMargin()[F

    move-result-object v0

    return-object v0
.end method

.method public getAppsMargin()[F
    .locals 1

    .line 651
    iget-object v0, p0, Lcom/hzbhd/config/base/Config$Launcher$IndicatorView;->appsMargin:[F

    return-object v0
.end method

.method public getIndicatorViewHeight()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public getIndicatorViewWidth()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public getItemDrawableN()Ljava/lang/String;
    .locals 1

    const-string v0, "__01__page_n"

    return-object v0
.end method

.method public getItemDrawableP()Ljava/lang/String;
    .locals 1

    const-string v0, "__01__page_p"

    return-object v0
.end method

.method public getItemMargin()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxSize()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method public final getRule()[I
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 641
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0xe
        0xc
    .end array-data
.end method

.method public getWorkspaceMargin()[F
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 646
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x3e800000    # 0.25f
    .end array-data
.end method

.method public setAppsMargin([F)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 651
    iput-object p1, p0, Lcom/hzbhd/config/base/Config$Launcher$IndicatorView;->appsMargin:[F

    return-void
.end method
