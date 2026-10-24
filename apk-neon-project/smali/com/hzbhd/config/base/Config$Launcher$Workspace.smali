.class public Lcom/hzbhd/config/base/Config$Launcher$Workspace;
.super Ljava/lang/Object;
.source "Config.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/config/base/Config$Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Workspace"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0014\n\u0002\u0008\u0005\n\u0002\u0010\u0015\n\u0002\u0008\u0004\u0008\u0016\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0013\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0016H\u0016\u00a2\u0006\u0002\u0010\u0018J\u000e\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u001aH\u0016J\u0008\u0010\u001c\u001a\u00020\nH\u0016J\u0008\u0010\u001d\u001a\u00020\u001eH\u0016J\u0008\u0010\u001f\u001a\u00020\u001eH\u0016J\u0008\u0010 \u001a\u00020!H\u0016J\u0008\u0010\"\u001a\u00020\nH\u0016J\u0008\u0010#\u001a\u00020!H\u0016J\u000e\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u001aH\u0016J\u0013\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0016H\u0016\u00a2\u0006\u0002\u0010\u0018J\u0008\u0010&\u001a\u00020\'H\u0016J\u0008\u0010(\u001a\u00020\nH\u0016J\u0008\u0010)\u001a\u00020\nH\u0016J\u0008\u0010*\u001a\u00020\u0004H\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006\"\u0004\u0008\u0011\u0010\u0008R\u001a\u0010\u0012\u001a\u00020\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0006\"\u0004\u0008\u0014\u0010\u0008\u00a8\u0006+"
    }
    d2 = {
        "Lcom/hzbhd/config/base/Config$Launcher$Workspace;",
        "",
        "()V",
        "showAppsInWorkspace",
        "",
        "getShowAppsInWorkspace",
        "()Z",
        "setShowAppsInWorkspace",
        "(Z)V",
        "showAppsInWorkspaceEmptyPageSize",
        "",
        "getShowAppsInWorkspaceEmptyPageSize",
        "()I",
        "setShowAppsInWorkspaceEmptyPageSize",
        "(I)V",
        "showDelete",
        "getShowDelete",
        "setShowDelete",
        "showUninstall",
        "getShowUninstall",
        "setShowUninstall",
        "getCustomLayoutArrays",
        "",
        "",
        "()[Ljava/lang/String;",
        "getDefaultIconArray",
        "Ljava/util/ArrayList;",
        "Lcom/hzbhd/config/lib/launcher/ComponentPosition;",
        "getDefaultPage",
        "getLayout_height",
        "",
        "getLayout_width",
        "getMargin",
        "",
        "getMaxPage",
        "getPadding",
        "getPlatformDefaultIconArray",
        "getRemoveApp",
        "getRule",
        "",
        "getxSize",
        "getySize",
        "isUseAssetsIcon",
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
.field private showAppsInWorkspace:Z

.field private showAppsInWorkspaceEmptyPageSize:I

.field private showDelete:Z

.field private showUninstall:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 309
    iput-boolean v0, p0, Lcom/hzbhd/config/base/Config$Launcher$Workspace;->showDelete:Z

    return-void
.end method


# virtual methods
.method public getCustomLayoutArrays()[Ljava/lang/String;
    .locals 1

    const-string v0, "__01__first_screen"

    .line 324
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultIconArray()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/hzbhd/config/lib/launcher/ComponentPosition;",
            ">;"
        }
    .end annotation

    .line 380
    invoke-static {}, Lcom/hzbhd/config/base/ConfigUtil;->getPlatformConfig()Lcom/hzbhd/config/base/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/config/base/Config;->getLauncher()Lcom/hzbhd/config/base/Config$Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/config/base/Config$Launcher;->getWorkspace()Lcom/hzbhd/config/base/Config$Launcher$Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/config/base/Config$Launcher$Workspace;->getPlatformDefaultIconArray()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultPage()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getLayout_height()F
    .locals 1

    const/high16 v0, 0x3f400000    # 0.75f

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

    .line 360
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

.method public getMaxPage()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public getPadding()[F
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 365
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3e19999a    # 0.15f
        0x0
        0x0
    .end array-data
.end method

.method public getPlatformDefaultIconArray()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/hzbhd/config/lib/launcher/ComponentPosition;",
            ">;"
        }
    .end annotation

    .line 382
    new-instance v0, Lcom/hzbhd/config/base/Config$Launcher$Workspace$getPlatformDefaultIconArray$1;

    invoke-direct {v0}, Lcom/hzbhd/config/base/Config$Launcher$Workspace$getPlatformDefaultIconArray$1;-><init>()V

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRemoveApp()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getRule()[I
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 355
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x9
        0xa
    .end array-data
.end method

.method public getShowAppsInWorkspace()Z
    .locals 1

    .line 313
    iget-boolean v0, p0, Lcom/hzbhd/config/base/Config$Launcher$Workspace;->showAppsInWorkspace:Z

    return v0
.end method

.method public getShowAppsInWorkspaceEmptyPageSize()I
    .locals 1

    .line 319
    iget v0, p0, Lcom/hzbhd/config/base/Config$Launcher$Workspace;->showAppsInWorkspaceEmptyPageSize:I

    return v0
.end method

.method public getShowDelete()Z
    .locals 1

    .line 309
    iget-boolean v0, p0, Lcom/hzbhd/config/base/Config$Launcher$Workspace;->showDelete:Z

    return v0
.end method

.method public getShowUninstall()Z
    .locals 1

    .line 305
    iget-boolean v0, p0, Lcom/hzbhd/config/base/Config$Launcher$Workspace;->showUninstall:Z

    return v0
.end method

.method public getxSize()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public getySize()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public isUseAssetsIcon()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setShowAppsInWorkspace(Z)V
    .locals 0

    .line 313
    iput-boolean p1, p0, Lcom/hzbhd/config/base/Config$Launcher$Workspace;->showAppsInWorkspace:Z

    return-void
.end method

.method public setShowAppsInWorkspaceEmptyPageSize(I)V
    .locals 0

    .line 319
    iput p1, p0, Lcom/hzbhd/config/base/Config$Launcher$Workspace;->showAppsInWorkspaceEmptyPageSize:I

    return-void
.end method

.method public setShowDelete(Z)V
    .locals 0

    .line 309
    iput-boolean p1, p0, Lcom/hzbhd/config/base/Config$Launcher$Workspace;->showDelete:Z

    return-void
.end method

.method public setShowUninstall(Z)V
    .locals 0

    .line 305
    iput-boolean p1, p0, Lcom/hzbhd/config/base/Config$Launcher$Workspace;->showUninstall:Z

    return-void
.end method
