.class public final Lcom/hzbhd/config/multiui/ui_d9/MyConfig$MyLauncehr$MyWorkspace;
.super Lcom/hzbhd/config/base/Config$Launcher$Workspace;
.source "MyConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/config/multiui/ui_d9/MyConfig$MyLauncehr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MyWorkspace"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0013\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010H\u0016\u00a2\u0006\u0002\u0010\u0012J\u000e\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014H\u0016J\u0008\u0010\u0016\u001a\u00020\u0017H\u0016J\u0013\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010H\u0016\u00a2\u0006\u0002\u0010\u0012J\u0008\u0010\u0019\u001a\u00020\u001aH\u0016J\u0008\u0010\u001b\u001a\u00020\u001aH\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001a\u0010\u000c\u001a\u00020\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u0008\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/hzbhd/config/multiui/ui_d9/MyConfig$MyLauncehr$MyWorkspace;",
        "Lcom/hzbhd/config/base/Config$Launcher$Workspace;",
        "()V",
        "showAppsInWorkspace",
        "",
        "getShowAppsInWorkspace",
        "()Z",
        "setShowAppsInWorkspace",
        "(Z)V",
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
        "getLayout_height",
        "",
        "getRemoveApp",
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
.field private showAppsInWorkspace:Z

.field private showDelete:Z

.field private showUninstall:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Lcom/hzbhd/config/base/Config$Launcher$Workspace;-><init>()V

    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p0, Lcom/hzbhd/config/multiui/ui_d9/MyConfig$MyLauncehr$MyWorkspace;->showAppsInWorkspace:Z

    .line 74
    iput-boolean v0, p0, Lcom/hzbhd/config/multiui/ui_d9/MyConfig$MyLauncehr$MyWorkspace;->showUninstall:Z

    return-void
.end method


# virtual methods
.method public getCustomLayoutArrays()[Ljava/lang/String;
    .locals 1

    const-string v0, "__d9__first_screen_view"

    .line 75
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

    .line 80
    new-instance v0, Lcom/hzbhd/config/multiui/ui_d9/MyConfig$MyLauncehr$MyWorkspace$getDefaultIconArray$1;

    invoke-direct {v0}, Lcom/hzbhd/config/multiui/ui_d9/MyConfig$MyLauncehr$MyWorkspace$getDefaultIconArray$1;-><init>()V

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLayout_height()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getRemoveApp()[Ljava/lang/String;
    .locals 2

    const-string v0, "GoogleVoiceSearch"

    const-string v1, "SBC"

    .line 76
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShowAppsInWorkspace()Z
    .locals 1

    .line 72
    iget-boolean v0, p0, Lcom/hzbhd/config/multiui/ui_d9/MyConfig$MyLauncehr$MyWorkspace;->showAppsInWorkspace:Z

    return v0
.end method

.method public getShowDelete()Z
    .locals 1

    .line 73
    iget-boolean v0, p0, Lcom/hzbhd/config/multiui/ui_d9/MyConfig$MyLauncehr$MyWorkspace;->showDelete:Z

    return v0
.end method

.method public getShowUninstall()Z
    .locals 1

    .line 74
    iget-boolean v0, p0, Lcom/hzbhd/config/multiui/ui_d9/MyConfig$MyLauncehr$MyWorkspace;->showUninstall:Z

    return v0
.end method

.method public getxSize()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public getySize()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public setShowAppsInWorkspace(Z)V
    .locals 0

    .line 72
    iput-boolean p1, p0, Lcom/hzbhd/config/multiui/ui_d9/MyConfig$MyLauncehr$MyWorkspace;->showAppsInWorkspace:Z

    return-void
.end method

.method public setShowDelete(Z)V
    .locals 0

    .line 73
    iput-boolean p1, p0, Lcom/hzbhd/config/multiui/ui_d9/MyConfig$MyLauncehr$MyWorkspace;->showDelete:Z

    return-void
.end method

.method public setShowUninstall(Z)V
    .locals 0

    .line 74
    iput-boolean p1, p0, Lcom/hzbhd/config/multiui/ui_d9/MyConfig$MyLauncehr$MyWorkspace;->showUninstall:Z

    return-void
.end method
