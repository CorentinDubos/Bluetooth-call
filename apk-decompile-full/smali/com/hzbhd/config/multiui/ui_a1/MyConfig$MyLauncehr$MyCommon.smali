.class public final Lcom/hzbhd/config/multiui/ui_a1/MyConfig$MyLauncehr$MyCommon;
.super Lcom/hzbhd/config/base/Config$Launcher$Common;
.source "MyConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/config/multiui/ui_a1/MyConfig$MyLauncehr;
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
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\u000b\"\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/hzbhd/config/multiui/ui_a1/MyConfig$MyLauncehr$MyCommon;",
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


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/hzbhd/config/base/Config$Launcher$Common;-><init>()V

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/hzbhd/config/multiui/ui_a1/MyConfig$MyLauncehr$MyCommon;->isHaveAllApp:Z

    const/4 v0, 0x2

    .line 20
    iput v0, p0, Lcom/hzbhd/config/multiui/ui_a1/MyConfig$MyLauncehr$MyCommon;->diffWallpaperSize:I

    return-void
.end method


# virtual methods
.method public getDiffWallpaperSize()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/hzbhd/config/multiui/ui_a1/MyConfig$MyLauncehr$MyCommon;->diffWallpaperSize:I

    return v0
.end method

.method public isHaveAllApp()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lcom/hzbhd/config/multiui/ui_a1/MyConfig$MyLauncehr$MyCommon;->isHaveAllApp:Z

    return v0
.end method

.method public setDiffWallpaperSize(I)V
    .locals 0

    .line 20
    iput p1, p0, Lcom/hzbhd/config/multiui/ui_a1/MyConfig$MyLauncehr$MyCommon;->diffWallpaperSize:I

    return-void
.end method

.method public setHaveAllApp(Z)V
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/hzbhd/config/multiui/ui_a1/MyConfig$MyLauncehr$MyCommon;->isHaveAllApp:Z

    return-void
.end method
