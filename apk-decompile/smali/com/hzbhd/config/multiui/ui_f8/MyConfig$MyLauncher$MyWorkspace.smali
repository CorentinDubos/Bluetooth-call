.class public final Lcom/hzbhd/config/multiui/ui_f8/MyConfig$MyLauncher$MyWorkspace;
.super Lcom/hzbhd/config/base/Config$Launcher$Workspace;
.source "MyConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/config/multiui/ui_f8/MyConfig$MyLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MyWorkspace"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMyConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MyConfig.kt\ncom/hzbhd/config/multiui/ui_f8/MyConfig$MyLauncher$MyWorkspace\n*L\n1#1,121:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\u0015\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0013\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010H\u0016\u00a2\u0006\u0002\u0010\u0012J\u000e\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014H\u0016J\u0008\u0010\u0016\u001a\u00020\u0017H\u0016J\u0008\u0010\u0018\u001a\u00020\u0017H\u0016J\u0008\u0010\u0019\u001a\u00020\u001aH\u0016J\u0008\u0010\u001b\u001a\u00020\u001cH\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001a\u0010\u000c\u001a\u00020\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u0008\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/hzbhd/config/multiui/ui_f8/MyConfig$MyLauncher$MyWorkspace;",
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
        "getLayout_width",
        "getPadding",
        "",
        "getRule",
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
.field private showAppsInWorkspace:Z

.field private showDelete:Z

.field private showUninstall:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 85
    invoke-direct {p0}, Lcom/hzbhd/config/base/Config$Launcher$Workspace;-><init>()V

    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Lcom/hzbhd/config/multiui/ui_f8/MyConfig$MyLauncher$MyWorkspace;->showUninstall:Z

    .line 88
    iput-boolean v0, p0, Lcom/hzbhd/config/multiui/ui_f8/MyConfig$MyLauncher$MyWorkspace;->showAppsInWorkspace:Z

    return-void
.end method


# virtual methods
.method public getCustomLayoutArrays()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

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

    .line 90
    new-instance v0, Lcom/hzbhd/config/multiui/ui_f8/MyConfig$MyLauncher$MyWorkspace$getDefaultIconArray$1;

    invoke-direct {v0}, Lcom/hzbhd/config/multiui/ui_f8/MyConfig$MyLauncher$MyWorkspace$getDefaultIconArray$1;-><init>()V

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLayout_height()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getLayout_width()F
    .locals 1

    const v0, 0x3f68cccd

    return v0
.end method

.method public getPadding()[F
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 106
    fill-array-data v0, :array_0

    const v1, 0x3d023306

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const v3, 0x3d911111

    aput v3, v0, v1

    .line 109
    aget v1, v0, v2

    const/4 v2, 0x2

    aput v1, v0, v2

    const/4 v1, 0x3

    const v2, 0x3e111111

    aput v2, v0, v1

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public getRule()[I
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 112
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0xb
        0xa
    .end array-data
.end method

.method public getShowAppsInWorkspace()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lcom/hzbhd/config/multiui/ui_f8/MyConfig$MyLauncher$MyWorkspace;->showAppsInWorkspace:Z

    return v0
.end method

.method public getShowDelete()Z
    .locals 1

    .line 87
    iget-boolean v0, p0, Lcom/hzbhd/config/multiui/ui_f8/MyConfig$MyLauncher$MyWorkspace;->showDelete:Z

    return v0
.end method

.method public getShowUninstall()Z
    .locals 1

    .line 86
    iget-boolean v0, p0, Lcom/hzbhd/config/multiui/ui_f8/MyConfig$MyLauncher$MyWorkspace;->showUninstall:Z

    return v0
.end method

.method public setShowAppsInWorkspace(Z)V
    .locals 0

    .line 88
    iput-boolean p1, p0, Lcom/hzbhd/config/multiui/ui_f8/MyConfig$MyLauncher$MyWorkspace;->showAppsInWorkspace:Z

    return-void
.end method

.method public setShowDelete(Z)V
    .locals 0

    .line 87
    iput-boolean p1, p0, Lcom/hzbhd/config/multiui/ui_f8/MyConfig$MyLauncher$MyWorkspace;->showDelete:Z

    return-void
.end method

.method public setShowUninstall(Z)V
    .locals 0

    .line 86
    iput-boolean p1, p0, Lcom/hzbhd/config/multiui/ui_f8/MyConfig$MyLauncher$MyWorkspace;->showUninstall:Z

    return-void
.end method
