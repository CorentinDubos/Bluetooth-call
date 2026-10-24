.class public Lcom/hzbhd/config/base/Config$Launcher$BhdAppsView;
.super Ljava/lang/Object;
.source "Config.kt"

# interfaces
.implements Lcom/hzbhd/config/lib/launcher/AppsViewInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/config/base/Config$Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BhdAppsView"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0014\n\u0002\u0008\u0003\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0016\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0013\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rH\u0016\u00a2\u0006\u0002\u0010\u000fJ\n\u0010\u0010\u001a\u0004\u0018\u00010\u000eH\u0016J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u0008\u0010\u0013\u001a\u00020\u0012H\u0016J\u0008\u0010\u0014\u001a\u00020\u0015H\u0016J\u0008\u0010\u0016\u001a\u00020\u0015H\u0016J\u0013\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rH\u0016\u00a2\u0006\u0002\u0010\u000fJ\u0008\u0010\u0018\u001a\u00020\u0019H\u0016J\u0008\u0010\u001a\u001a\u00020\u001bH\u0016J\u0008\u0010\u001c\u001a\u00020\u001bH\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0003\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007R\u001a\u0010\u0008\u001a\u00020\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\u0005\"\u0004\u0008\t\u0010\u0007R\u001a\u0010\n\u001a\u00020\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0005\"\u0004\u0008\u000b\u0010\u0007\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/hzbhd/config/base/Config$Launcher$BhdAppsView;",
        "Lcom/hzbhd/config/lib/launcher/AppsViewInterface;",
        "()V",
        "isShowPalette",
        "",
        "()Z",
        "setShowPalette",
        "(Z)V",
        "isShowSelectCanTYpe",
        "setShowSelectCanTYpe",
        "isShowSmartPower",
        "setShowSmartPower",
        "getAddApp",
        "",
        "",
        "()[Ljava/lang/String;",
        "getBackground",
        "getLayout_height",
        "",
        "getLayout_width",
        "getMargin",
        "",
        "getPadding",
        "getRemoveApp",
        "getRule",
        "",
        "getxSize",
        "",
        "getySize",
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
.field private isShowPalette:Z

.field private isShowSelectCanTYpe:Z

.field private isShowSmartPower:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddApp()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getBackground()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLayout_height()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getLayout_width()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getMargin()[F
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 448
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public getPadding()[F
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 453
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3e19999a    # 0.15f
        0x0
        0x3d4ccccd    # 0.05f
    .end array-data
.end method

.method public getRemoveApp()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getRule()[I
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public getxSize()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public getySize()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public isShowPalette()Z
    .locals 1

    .line 483
    iget-boolean v0, p0, Lcom/hzbhd/config/base/Config$Launcher$BhdAppsView;->isShowPalette:Z

    return v0
.end method

.method public isShowSelectCanTYpe()Z
    .locals 1

    .line 488
    iget-boolean v0, p0, Lcom/hzbhd/config/base/Config$Launcher$BhdAppsView;->isShowSelectCanTYpe:Z

    return v0
.end method

.method public isShowSmartPower()Z
    .locals 1

    .line 493
    iget-boolean v0, p0, Lcom/hzbhd/config/base/Config$Launcher$BhdAppsView;->isShowSmartPower:Z

    return v0
.end method

.method public setShowPalette(Z)V
    .locals 0

    .line 483
    iput-boolean p1, p0, Lcom/hzbhd/config/base/Config$Launcher$BhdAppsView;->isShowPalette:Z

    return-void
.end method

.method public setShowSelectCanTYpe(Z)V
    .locals 0

    .line 488
    iput-boolean p1, p0, Lcom/hzbhd/config/base/Config$Launcher$BhdAppsView;->isShowSelectCanTYpe:Z

    return-void
.end method

.method public setShowSmartPower(Z)V
    .locals 0

    .line 493
    iput-boolean p1, p0, Lcom/hzbhd/config/base/Config$Launcher$BhdAppsView;->isShowSmartPower:Z

    return-void
.end method
