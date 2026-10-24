.class public final Lcom/hzbhd/config/multiui/ui_m6/MyConfig$MyLauncehr$MyCommon;
.super Lcom/hzbhd/config/base/Config$Launcher$Common;
.source "MyConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/config/multiui/ui_m6/MyConfig$MyLauncehr;
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
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0012\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u00020\u0010X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0011\"\u0004\u0008\u0015\u0010\u0013R\u001a\u0010\u0016\u001a\u00020\u0010X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0011\"\u0004\u0008\u0017\u0010\u0013R\u001a\u0010\u0018\u001a\u00020\u0010X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0011\"\u0004\u0008\u0019\u0010\u0013R\u001a\u0010\u001a\u001a\u00020\u0010X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u0011\"\u0004\u0008\u001b\u0010\u0013R\u001a\u0010\u001c\u001a\u00020\nX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u000c\"\u0004\u0008\u001e\u0010\u000eR\u001a\u0010\u001f\u001a\u00020\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\u0006\"\u0004\u0008!\u0010\u0008\u00a8\u0006\""
    }
    d2 = {
        "Lcom/hzbhd/config/multiui/ui_m6/MyConfig$MyLauncehr$MyCommon;",
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
        "isHavePreinstallHandbook",
        "setHavePreinstallHandbook",
        "isHaveThirdApp",
        "setHaveThirdApp",
        "isIconUseDrawable",
        "setIconUseDrawable",
        "maxWallpaperSize",
        "getMaxWallpaperSize",
        "setMaxWallpaperSize",
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

.field private isHaveAllApp:Z

.field private isHaveBhdApp:Z

.field private isHavePreinstallHandbook:Z

.field private isHaveThirdApp:Z

.field private isIconUseDrawable:Z

.field private maxWallpaperSize:I

.field private workspaeIconLayout:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 58
    invoke-direct {p0}, Lcom/hzbhd/config/base/Config$Launcher$Common;-><init>()V

    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lcom/hzbhd/config/multiui/ui_m6/MyConfig$MyLauncehr$MyCommon;->isIconUseDrawable:Z

    .line 60
    iput-boolean v0, p0, Lcom/hzbhd/config/multiui/ui_m6/MyConfig$MyLauncehr$MyCommon;->isHaveAllApp:Z

    const-string v1, "__m6__app_icon"

    .line 63
    iput-object v1, p0, Lcom/hzbhd/config/multiui/ui_m6/MyConfig$MyLauncehr$MyCommon;->appIconLayout:Ljava/lang/String;

    .line 64
    iput v0, p0, Lcom/hzbhd/config/multiui/ui_m6/MyConfig$MyLauncehr$MyCommon;->diffWallpaperSize:I

    .line 65
    iput v0, p0, Lcom/hzbhd/config/multiui/ui_m6/MyConfig$MyLauncehr$MyCommon;->maxWallpaperSize:I

    .line 66
    iput-object v1, p0, Lcom/hzbhd/config/multiui/ui_m6/MyConfig$MyLauncehr$MyCommon;->workspaeIconLayout:Ljava/lang/String;

    .line 67
    iput-boolean v0, p0, Lcom/hzbhd/config/multiui/ui_m6/MyConfig$MyLauncehr$MyCommon;->isHavePreinstallHandbook:Z

    return-void
.end method


# virtual methods
.method public getAppIconLayout()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/hzbhd/config/multiui/ui_m6/MyConfig$MyLauncehr$MyCommon;->appIconLayout:Ljava/lang/String;

    return-object v0
.end method

.method public getDiffWallpaperSize()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/hzbhd/config/multiui/ui_m6/MyConfig$MyLauncehr$MyCommon;->diffWallpaperSize:I

    return v0
.end method

.method public getMaxWallpaperSize()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/hzbhd/config/multiui/ui_m6/MyConfig$MyLauncehr$MyCommon;->maxWallpaperSize:I

    return v0
.end method

.method public getWorkspaeIconLayout()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/hzbhd/config/multiui/ui_m6/MyConfig$MyLauncehr$MyCommon;->workspaeIconLayout:Ljava/lang/String;

    return-object v0
.end method

.method public isHaveAllApp()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lcom/hzbhd/config/multiui/ui_m6/MyConfig$MyLauncehr$MyCommon;->isHaveAllApp:Z

    return v0
.end method

.method public isHaveBhdApp()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/hzbhd/config/multiui/ui_m6/MyConfig$MyLauncehr$MyCommon;->isHaveBhdApp:Z

    return v0
.end method

.method public isHavePreinstallHandbook()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/hzbhd/config/multiui/ui_m6/MyConfig$MyLauncehr$MyCommon;->isHavePreinstallHandbook:Z

    return v0
.end method

.method public isHaveThirdApp()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lcom/hzbhd/config/multiui/ui_m6/MyConfig$MyLauncehr$MyCommon;->isHaveThirdApp:Z

    return v0
.end method

.method public isIconUseDrawable()Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lcom/hzbhd/config/multiui/ui_m6/MyConfig$MyLauncehr$MyCommon;->isIconUseDrawable:Z

    return v0
.end method

.method public setAppIconLayout(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iput-object p1, p0, Lcom/hzbhd/config/multiui/ui_m6/MyConfig$MyLauncehr$MyCommon;->appIconLayout:Ljava/lang/String;

    return-void
.end method

.method public setDiffWallpaperSize(I)V
    .locals 0

    .line 64
    iput p1, p0, Lcom/hzbhd/config/multiui/ui_m6/MyConfig$MyLauncehr$MyCommon;->diffWallpaperSize:I

    return-void
.end method

.method public setHaveAllApp(Z)V
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/hzbhd/config/multiui/ui_m6/MyConfig$MyLauncehr$MyCommon;->isHaveAllApp:Z

    return-void
.end method

.method public setHaveBhdApp(Z)V
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/hzbhd/config/multiui/ui_m6/MyConfig$MyLauncehr$MyCommon;->isHaveBhdApp:Z

    return-void
.end method

.method public setHavePreinstallHandbook(Z)V
    .locals 0

    .line 67
    iput-boolean p1, p0, Lcom/hzbhd/config/multiui/ui_m6/MyConfig$MyLauncehr$MyCommon;->isHavePreinstallHandbook:Z

    return-void
.end method

.method public setHaveThirdApp(Z)V
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/hzbhd/config/multiui/ui_m6/MyConfig$MyLauncehr$MyCommon;->isHaveThirdApp:Z

    return-void
.end method

.method public setIconUseDrawable(Z)V
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/hzbhd/config/multiui/ui_m6/MyConfig$MyLauncehr$MyCommon;->isIconUseDrawable:Z

    return-void
.end method

.method public setMaxWallpaperSize(I)V
    .locals 0

    .line 65
    iput p1, p0, Lcom/hzbhd/config/multiui/ui_m6/MyConfig$MyLauncehr$MyCommon;->maxWallpaperSize:I

    return-void
.end method

.method public setWorkspaeIconLayout(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iput-object p1, p0, Lcom/hzbhd/config/multiui/ui_m6/MyConfig$MyLauncehr$MyCommon;->workspaeIconLayout:Ljava/lang/String;

    return-void
.end method
