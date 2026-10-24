.class public final Lcom/hzbhd/config/multiui/ui_e5/MyConfig$MyLauncher$MyCommon;
.super Lcom/hzbhd/config/base/Config$Launcher$Common;
.source "MyConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/config/multiui/ui_e5/MyConfig$MyLauncher;
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
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\r\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001a\u0010\u000e\u001a\u00020\nX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000b\"\u0004\u0008\u000f\u0010\rR\u001a\u0010\u0010\u001a\u00020\nX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u000b\"\u0004\u0008\u0011\u0010\rR\u001a\u0010\u0012\u001a\u00020\nX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u000b\"\u0004\u0008\u0013\u0010\rR\u001a\u0010\u0014\u001a\u00020\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0006\"\u0004\u0008\u0016\u0010\u0008R\u001a\u0010\u0017\u001a\u00020\u0018X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u001a\u0010\u001d\u001a\u00020\u0018X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001a\"\u0004\u0008\u001f\u0010\u001c\u00a8\u0006 "
    }
    d2 = {
        "Lcom/hzbhd/config/multiui/ui_e5/MyConfig$MyLauncher$MyCommon;",
        "Lcom/hzbhd/config/base/Config$Launcher$Common;",
        "()V",
        "diffWallpaperSize",
        "",
        "getDiffWallpaperSize",
        "()I",
        "setDiffWallpaperSize",
        "(I)V",
        "isHaveAllApp",
        "",
        "()Z",
        "setHaveAllApp",
        "(Z)V",
        "isHaveBhdApp",
        "setHaveBhdApp",
        "isHaveThirdApp",
        "setHaveThirdApp",
        "isHaveTouch",
        "setHaveTouch",
        "maxWallpaperSize",
        "getMaxWallpaperSize",
        "setMaxWallpaperSize",
        "wallpaperLayout",
        "",
        "getWallpaperLayout",
        "()Ljava/lang/String;",
        "setWallpaperLayout",
        "(Ljava/lang/String;)V",
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
.field private diffWallpaperSize:I

.field private isHaveAllApp:Z

.field private isHaveBhdApp:Z

.field private isHaveThirdApp:Z

.field private isHaveTouch:Z

.field private maxWallpaperSize:I

.field private wallpaperLayout:Ljava/lang/String;

.field private workspaeIconLayout:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Lcom/hzbhd/config/base/Config$Launcher$Common;-><init>()V

    const-string v0, "__e5__activity_wallpaper_picker"

    .line 63
    iput-object v0, p0, Lcom/hzbhd/config/multiui/ui_e5/MyConfig$MyLauncher$MyCommon;->wallpaperLayout:Ljava/lang/String;

    const/4 v0, 0x1

    .line 64
    iput v0, p0, Lcom/hzbhd/config/multiui/ui_e5/MyConfig$MyLauncher$MyCommon;->diffWallpaperSize:I

    .line 65
    iput v0, p0, Lcom/hzbhd/config/multiui/ui_e5/MyConfig$MyLauncher$MyCommon;->maxWallpaperSize:I

    const-string v0, "__e5__app_icon"

    .line 67
    iput-object v0, p0, Lcom/hzbhd/config/multiui/ui_e5/MyConfig$MyLauncher$MyCommon;->workspaeIconLayout:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDiffWallpaperSize()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/hzbhd/config/multiui/ui_e5/MyConfig$MyLauncher$MyCommon;->diffWallpaperSize:I

    return v0
.end method

.method public getMaxWallpaperSize()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/hzbhd/config/multiui/ui_e5/MyConfig$MyLauncher$MyCommon;->maxWallpaperSize:I

    return v0
.end method

.method public getWallpaperLayout()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/hzbhd/config/multiui/ui_e5/MyConfig$MyLauncher$MyCommon;->wallpaperLayout:Ljava/lang/String;

    return-object v0
.end method

.method public getWorkspaeIconLayout()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/hzbhd/config/multiui/ui_e5/MyConfig$MyLauncher$MyCommon;->workspaeIconLayout:Ljava/lang/String;

    return-object v0
.end method

.method public isHaveAllApp()Z
    .locals 1

    .line 68
    iget-boolean v0, p0, Lcom/hzbhd/config/multiui/ui_e5/MyConfig$MyLauncher$MyCommon;->isHaveAllApp:Z

    return v0
.end method

.method public isHaveBhdApp()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Lcom/hzbhd/config/multiui/ui_e5/MyConfig$MyLauncher$MyCommon;->isHaveBhdApp:Z

    return v0
.end method

.method public isHaveThirdApp()Z
    .locals 1

    .line 70
    iget-boolean v0, p0, Lcom/hzbhd/config/multiui/ui_e5/MyConfig$MyLauncher$MyCommon;->isHaveThirdApp:Z

    return v0
.end method

.method public isHaveTouch()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Lcom/hzbhd/config/multiui/ui_e5/MyConfig$MyLauncher$MyCommon;->isHaveTouch:Z

    return v0
.end method

.method public setDiffWallpaperSize(I)V
    .locals 0

    .line 64
    iput p1, p0, Lcom/hzbhd/config/multiui/ui_e5/MyConfig$MyLauncher$MyCommon;->diffWallpaperSize:I

    return-void
.end method

.method public setHaveAllApp(Z)V
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/hzbhd/config/multiui/ui_e5/MyConfig$MyLauncher$MyCommon;->isHaveAllApp:Z

    return-void
.end method

.method public setHaveBhdApp(Z)V
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/hzbhd/config/multiui/ui_e5/MyConfig$MyLauncher$MyCommon;->isHaveBhdApp:Z

    return-void
.end method

.method public setHaveThirdApp(Z)V
    .locals 0

    .line 70
    iput-boolean p1, p0, Lcom/hzbhd/config/multiui/ui_e5/MyConfig$MyLauncher$MyCommon;->isHaveThirdApp:Z

    return-void
.end method

.method public setHaveTouch(Z)V
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcom/hzbhd/config/multiui/ui_e5/MyConfig$MyLauncher$MyCommon;->isHaveTouch:Z

    return-void
.end method

.method public setMaxWallpaperSize(I)V
    .locals 0

    .line 65
    iput p1, p0, Lcom/hzbhd/config/multiui/ui_e5/MyConfig$MyLauncher$MyCommon;->maxWallpaperSize:I

    return-void
.end method

.method public setWallpaperLayout(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iput-object p1, p0, Lcom/hzbhd/config/multiui/ui_e5/MyConfig$MyLauncher$MyCommon;->wallpaperLayout:Ljava/lang/String;

    return-void
.end method

.method public setWorkspaeIconLayout(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iput-object p1, p0, Lcom/hzbhd/config/multiui/ui_e5/MyConfig$MyLauncher$MyCommon;->workspaeIconLayout:Ljava/lang/String;

    return-void
.end method
