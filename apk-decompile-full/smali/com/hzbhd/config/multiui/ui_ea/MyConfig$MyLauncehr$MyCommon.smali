.class public final Lcom/hzbhd/config/multiui/ui_ea/MyConfig$MyLauncehr$MyCommon;
.super Lcom/hzbhd/config/base/Config$Launcher$Common;
.source "MyConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/config/multiui/ui_ea/MyConfig$MyLauncehr;
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
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0010\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u00020\u0010X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0011\"\u0004\u0008\u0015\u0010\u0013R\u001a\u0010\u0016\u001a\u00020\u0010X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0011\"\u0004\u0008\u0017\u0010\u0013R\u001a\u0010\u0018\u001a\u00020\u0010X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0011\"\u0004\u0008\u0019\u0010\u0013R\u001a\u0010\u001a\u001a\u00020\nX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u000c\"\u0004\u0008\u001c\u0010\u000eR\u001a\u0010\u001d\u001a\u00020\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u0006\"\u0004\u0008\u001f\u0010\u0008\u00a8\u0006 "
    }
    d2 = {
        "Lcom/hzbhd/config/multiui/ui_ea/MyConfig$MyLauncehr$MyCommon;",
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
        "isHaveAllApp",
        "",
        "()Z",
        "setHaveAllApp",
        "(Z)V",
        "isHaveBhdApp",
        "setHaveBhdApp",
        "isHaveIndicator",
        "setHaveIndicator",
        "isHaveThirdApp",
        "setHaveThirdApp",
        "maxWallpaperSize",
        "getMaxWallpaperSize",
        "setMaxWallpaperSize",
        "wallpaperLayout",
        "getWallpaperLayout",
        "setWallpaperLayout",
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

.field private isHaveAllApp:Z

.field private isHaveBhdApp:Z

.field private isHaveIndicator:Z

.field private isHaveThirdApp:Z

.field private maxWallpaperSize:I

.field private wallpaperLayout:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Lcom/hzbhd/config/base/Config$Launcher$Common;-><init>()V

    const-string v0, "__ea__activity_wallpaper_picker"

    .line 59
    iput-object v0, p0, Lcom/hzbhd/config/multiui/ui_ea/MyConfig$MyLauncehr$MyCommon;->wallpaperLayout:Ljava/lang/String;

    const-string v0, "__ea__app_icon"

    .line 60
    iput-object v0, p0, Lcom/hzbhd/config/multiui/ui_ea/MyConfig$MyLauncehr$MyCommon;->appIconLayout:Ljava/lang/String;

    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Lcom/hzbhd/config/multiui/ui_ea/MyConfig$MyLauncehr$MyCommon;->isHaveAllApp:Z

    .line 64
    iput v0, p0, Lcom/hzbhd/config/multiui/ui_ea/MyConfig$MyLauncehr$MyCommon;->diffWallpaperSize:I

    .line 65
    iput v0, p0, Lcom/hzbhd/config/multiui/ui_ea/MyConfig$MyLauncehr$MyCommon;->maxWallpaperSize:I

    .line 66
    iput-boolean v0, p0, Lcom/hzbhd/config/multiui/ui_ea/MyConfig$MyLauncehr$MyCommon;->isHaveIndicator:Z

    return-void
.end method


# virtual methods
.method public getAppIconLayout()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/hzbhd/config/multiui/ui_ea/MyConfig$MyLauncehr$MyCommon;->appIconLayout:Ljava/lang/String;

    return-object v0
.end method

.method public getDiffWallpaperSize()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/hzbhd/config/multiui/ui_ea/MyConfig$MyLauncehr$MyCommon;->diffWallpaperSize:I

    return v0
.end method

.method public getMaxWallpaperSize()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/hzbhd/config/multiui/ui_ea/MyConfig$MyLauncehr$MyCommon;->maxWallpaperSize:I

    return v0
.end method

.method public getWallpaperLayout()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/hzbhd/config/multiui/ui_ea/MyConfig$MyLauncehr$MyCommon;->wallpaperLayout:Ljava/lang/String;

    return-object v0
.end method

.method public isHaveAllApp()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/hzbhd/config/multiui/ui_ea/MyConfig$MyLauncehr$MyCommon;->isHaveAllApp:Z

    return v0
.end method

.method public isHaveBhdApp()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lcom/hzbhd/config/multiui/ui_ea/MyConfig$MyLauncehr$MyCommon;->isHaveBhdApp:Z

    return v0
.end method

.method public isHaveIndicator()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lcom/hzbhd/config/multiui/ui_ea/MyConfig$MyLauncehr$MyCommon;->isHaveIndicator:Z

    return v0
.end method

.method public isHaveThirdApp()Z
    .locals 1

    .line 63
    iget-boolean v0, p0, Lcom/hzbhd/config/multiui/ui_ea/MyConfig$MyLauncehr$MyCommon;->isHaveThirdApp:Z

    return v0
.end method

.method public setAppIconLayout(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iput-object p1, p0, Lcom/hzbhd/config/multiui/ui_ea/MyConfig$MyLauncehr$MyCommon;->appIconLayout:Ljava/lang/String;

    return-void
.end method

.method public setDiffWallpaperSize(I)V
    .locals 0

    .line 64
    iput p1, p0, Lcom/hzbhd/config/multiui/ui_ea/MyConfig$MyLauncehr$MyCommon;->diffWallpaperSize:I

    return-void
.end method

.method public setHaveAllApp(Z)V
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/hzbhd/config/multiui/ui_ea/MyConfig$MyLauncehr$MyCommon;->isHaveAllApp:Z

    return-void
.end method

.method public setHaveBhdApp(Z)V
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/hzbhd/config/multiui/ui_ea/MyConfig$MyLauncehr$MyCommon;->isHaveBhdApp:Z

    return-void
.end method

.method public setHaveIndicator(Z)V
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/hzbhd/config/multiui/ui_ea/MyConfig$MyLauncehr$MyCommon;->isHaveIndicator:Z

    return-void
.end method

.method public setHaveThirdApp(Z)V
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/hzbhd/config/multiui/ui_ea/MyConfig$MyLauncehr$MyCommon;->isHaveThirdApp:Z

    return-void
.end method

.method public setMaxWallpaperSize(I)V
    .locals 0

    .line 65
    iput p1, p0, Lcom/hzbhd/config/multiui/ui_ea/MyConfig$MyLauncehr$MyCommon;->maxWallpaperSize:I

    return-void
.end method

.method public setWallpaperLayout(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iput-object p1, p0, Lcom/hzbhd/config/multiui/ui_ea/MyConfig$MyLauncehr$MyCommon;->wallpaperLayout:Ljava/lang/String;

    return-void
.end method
