.class public final Lcom/hzbhd/config/multiui/ui_e3/MyConfig$MyLauncehr$MyCommon;
.super Lcom/hzbhd/config/base/Config$Launcher$Common;
.source "MyConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/config/multiui/ui_e3/MyConfig$MyLauncehr;
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
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006\"\u0004\u0008\u0011\u0010\u0008R\u001a\u0010\u0012\u001a\u00020\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0006\"\u0004\u0008\u0014\u0010\u0008R\u001a\u0010\u0015\u001a\u00020\u0016X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u001a\u0010\u001a\u001a\u00020\u0016X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u0017\"\u0004\u0008\u001b\u0010\u0019R\u001a\u0010\u001c\u001a\u00020\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u0006\"\u0004\u0008\u001e\u0010\u0008\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/hzbhd/config/multiui/ui_e3/MyConfig$MyLauncehr$MyCommon;",
        "Lcom/hzbhd/config/base/Config$Launcher$Common;",
        "()V",
        "appIconLayout",
        "",
        "getAppIconLayout",
        "()Ljava/lang/String;",
        "setAppIconLayout",
        "(Ljava/lang/String;)V",
        "diffWallpaperSize",
        "",
        "getDiffWallpaperSize",
        "()I",
        "setDiffWallpaperSize",
        "(I)V",
        "folderIconLayout",
        "getFolderIconLayout",
        "setFolderIconLayout",
        "hotseatIconLayout",
        "getHotseatIconLayout",
        "setHotseatIconLayout",
        "isIconUseDrawable",
        "",
        "()Z",
        "setIconUseDrawable",
        "(Z)V",
        "isShowSetWallpaperIcon",
        "setShowSetWallpaperIcon",
        "workspaeIconLayout",
        "getWorkspaeIconLayout",
        "setWorkspaeIconLayout",
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
.field private appIconLayout:Ljava/lang/String;

.field private diffWallpaperSize:I

.field private folderIconLayout:Ljava/lang/String;

.field private hotseatIconLayout:Ljava/lang/String;

.field private isIconUseDrawable:Z

.field private isShowSetWallpaperIcon:Z

.field private workspaeIconLayout:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 54
    invoke-direct {p0}, Lcom/hzbhd/config/base/Config$Launcher$Common;-><init>()V

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lcom/hzbhd/config/multiui/ui_e3/MyConfig$MyLauncehr$MyCommon;->isIconUseDrawable:Z

    const-string v1, "__e3__app_icon"

    .line 56
    iput-object v1, p0, Lcom/hzbhd/config/multiui/ui_e3/MyConfig$MyLauncehr$MyCommon;->appIconLayout:Ljava/lang/String;

    const-string v1, "__e3__hotseat_icon"

    .line 57
    iput-object v1, p0, Lcom/hzbhd/config/multiui/ui_e3/MyConfig$MyLauncehr$MyCommon;->hotseatIconLayout:Ljava/lang/String;

    const-string v1, "__e3__workspace_app_icon"

    .line 58
    iput-object v1, p0, Lcom/hzbhd/config/multiui/ui_e3/MyConfig$MyLauncehr$MyCommon;->workspaeIconLayout:Ljava/lang/String;

    const-string v1, "__e3__folder_icon"

    .line 59
    iput-object v1, p0, Lcom/hzbhd/config/multiui/ui_e3/MyConfig$MyLauncehr$MyCommon;->folderIconLayout:Ljava/lang/String;

    .line 60
    iput v0, p0, Lcom/hzbhd/config/multiui/ui_e3/MyConfig$MyLauncehr$MyCommon;->diffWallpaperSize:I

    .line 61
    iput-boolean v0, p0, Lcom/hzbhd/config/multiui/ui_e3/MyConfig$MyLauncehr$MyCommon;->isShowSetWallpaperIcon:Z

    return-void
.end method


# virtual methods
.method public getAppIconLayout()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/hzbhd/config/multiui/ui_e3/MyConfig$MyLauncehr$MyCommon;->appIconLayout:Ljava/lang/String;

    return-object v0
.end method

.method public getDiffWallpaperSize()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/hzbhd/config/multiui/ui_e3/MyConfig$MyLauncehr$MyCommon;->diffWallpaperSize:I

    return v0
.end method

.method public getFolderIconLayout()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/hzbhd/config/multiui/ui_e3/MyConfig$MyLauncehr$MyCommon;->folderIconLayout:Ljava/lang/String;

    return-object v0
.end method

.method public getHotseatIconLayout()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/hzbhd/config/multiui/ui_e3/MyConfig$MyLauncehr$MyCommon;->hotseatIconLayout:Ljava/lang/String;

    return-object v0
.end method

.method public getWorkspaeIconLayout()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/hzbhd/config/multiui/ui_e3/MyConfig$MyLauncehr$MyCommon;->workspaeIconLayout:Ljava/lang/String;

    return-object v0
.end method

.method public isIconUseDrawable()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lcom/hzbhd/config/multiui/ui_e3/MyConfig$MyLauncehr$MyCommon;->isIconUseDrawable:Z

    return v0
.end method

.method public isShowSetWallpaperIcon()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/hzbhd/config/multiui/ui_e3/MyConfig$MyLauncehr$MyCommon;->isShowSetWallpaperIcon:Z

    return v0
.end method

.method public setAppIconLayout(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iput-object p1, p0, Lcom/hzbhd/config/multiui/ui_e3/MyConfig$MyLauncehr$MyCommon;->appIconLayout:Ljava/lang/String;

    return-void
.end method

.method public setDiffWallpaperSize(I)V
    .locals 0

    .line 60
    iput p1, p0, Lcom/hzbhd/config/multiui/ui_e3/MyConfig$MyLauncehr$MyCommon;->diffWallpaperSize:I

    return-void
.end method

.method public setFolderIconLayout(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iput-object p1, p0, Lcom/hzbhd/config/multiui/ui_e3/MyConfig$MyLauncehr$MyCommon;->folderIconLayout:Ljava/lang/String;

    return-void
.end method

.method public setHotseatIconLayout(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iput-object p1, p0, Lcom/hzbhd/config/multiui/ui_e3/MyConfig$MyLauncehr$MyCommon;->hotseatIconLayout:Ljava/lang/String;

    return-void
.end method

.method public setIconUseDrawable(Z)V
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/hzbhd/config/multiui/ui_e3/MyConfig$MyLauncehr$MyCommon;->isIconUseDrawable:Z

    return-void
.end method

.method public setShowSetWallpaperIcon(Z)V
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/hzbhd/config/multiui/ui_e3/MyConfig$MyLauncehr$MyCommon;->isShowSetWallpaperIcon:Z

    return-void
.end method

.method public setWorkspaeIconLayout(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iput-object p1, p0, Lcom/hzbhd/config/multiui/ui_e3/MyConfig$MyLauncehr$MyCommon;->workspaeIconLayout:Ljava/lang/String;

    return-void
.end method
