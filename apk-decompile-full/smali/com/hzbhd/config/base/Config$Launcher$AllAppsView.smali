.class public Lcom/hzbhd/config/base/Config$Launcher$AllAppsView;
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
    name = "AllAppsView"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0014\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0015\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016J\u0008\u0010\u0017\u001a\u00020\nH\u0016J\u0008\u0010\u0018\u001a\u00020\nH\u0016J\u0008\u0010\u0019\u001a\u00020\u0004H\u0016J\u0008\u0010\u001a\u001a\u00020\u0004H\u0016J\u0008\u0010\u001b\u001a\u00020\u001cH\u0016J\u0008\u0010\u001d\u001a\u00020\u0010H\u0016J\u0008\u0010\u001e\u001a\u00020\u0010H\u0016J\u0008\u0010\u001f\u001a\u00020 H\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006!"
    }
    d2 = {
        "Lcom/hzbhd/config/base/Config$Launcher$AllAppsView;",
        "Lcom/hzbhd/config/lib/launcher/AppsViewInterface;",
        "()V",
        "appMargin",
        "",
        "getAppMargin",
        "()[F",
        "setAppMargin",
        "([F)V",
        "height",
        "",
        "getHeight",
        "()F",
        "setHeight",
        "(F)V",
        "ySize",
        "",
        "getYSize",
        "()I",
        "setYSize",
        "(I)V",
        "getBackground",
        "",
        "getLayout_height",
        "getLayout_width",
        "getMargin",
        "getPadding",
        "getRule",
        "",
        "getxSize",
        "getySize",
        "isOtherAppNewPage",
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


# instance fields
.field private appMargin:[F

.field private height:F

.field private ySize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 510
    iput v0, p0, Lcom/hzbhd/config/base/Config$Launcher$AllAppsView;->ySize:I

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 524
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/hzbhd/config/base/Config$Launcher$AllAppsView;->appMargin:[F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 543
    iput v0, p0, Lcom/hzbhd/config/base/Config$Launcher$AllAppsView;->height:F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public getAppMargin()[F
    .locals 1

    .line 524
    iget-object v0, p0, Lcom/hzbhd/config/base/Config$Launcher$AllAppsView;->appMargin:[F

    return-object v0
.end method

.method public getBackground()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getHeight()F
    .locals 1

    .line 543
    iget v0, p0, Lcom/hzbhd/config/base/Config$Launcher$AllAppsView;->height:F

    return v0
.end method

.method public getLayout_height()F
    .locals 1

    .line 547
    invoke-virtual {p0}, Lcom/hzbhd/config/base/Config$Launcher$AllAppsView;->getHeight()F

    move-result v0

    return v0
.end method

.method public getLayout_width()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getMargin()[F
    .locals 1

    .line 528
    invoke-virtual {p0}, Lcom/hzbhd/config/base/Config$Launcher$AllAppsView;->getAppMargin()[F

    move-result-object v0

    return-object v0
.end method

.method public getPadding()[F
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 533
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

.method public getRule()[I
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public getYSize()I
    .locals 1

    .line 510
    iget v0, p0, Lcom/hzbhd/config/base/Config$Launcher$AllAppsView;->ySize:I

    return v0
.end method

.method public getxSize()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public getySize()I
    .locals 1

    .line 514
    invoke-virtual {p0}, Lcom/hzbhd/config/base/Config$Launcher$AllAppsView;->getYSize()I

    move-result v0

    return v0
.end method

.method public isOtherAppNewPage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setAppMargin([F)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 524
    iput-object p1, p0, Lcom/hzbhd/config/base/Config$Launcher$AllAppsView;->appMargin:[F

    return-void
.end method

.method public setHeight(F)V
    .locals 0

    .line 543
    iput p1, p0, Lcom/hzbhd/config/base/Config$Launcher$AllAppsView;->height:F

    return-void
.end method

.method public setYSize(I)V
    .locals 0

    .line 510
    iput p1, p0, Lcom/hzbhd/config/base/Config$Launcher$AllAppsView;->ySize:I

    return-void
.end method
