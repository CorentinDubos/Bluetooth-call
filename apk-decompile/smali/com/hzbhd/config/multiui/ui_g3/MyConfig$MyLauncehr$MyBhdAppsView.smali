.class public final Lcom/hzbhd/config/multiui/ui_g3/MyConfig$MyLauncehr$MyBhdAppsView;
.super Lcom/hzbhd/config/base/Config$Launcher$BhdAppsView;
.source "MyConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/config/multiui/ui_g3/MyConfig$MyLauncehr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MyBhdAppsView"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0013\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rH\u0016\u00a2\u0006\u0002\u0010\u000fR\u001a\u0010\u0003\u001a\u00020\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0003\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007R\u001a\u0010\u0008\u001a\u00020\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\u0005\"\u0004\u0008\t\u0010\u0007R\u001a\u0010\n\u001a\u00020\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0005\"\u0004\u0008\u000b\u0010\u0007\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/hzbhd/config/multiui/ui_g3/MyConfig$MyLauncehr$MyBhdAppsView;",
        "Lcom/hzbhd/config/base/Config$Launcher$BhdAppsView;",
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
        "getRemoveApp",
        "",
        "",
        "()[Ljava/lang/String;",
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
    .locals 1

    .line 87
    invoke-direct {p0}, Lcom/hzbhd/config/base/Config$Launcher$BhdAppsView;-><init>()V

    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p0, Lcom/hzbhd/config/multiui/ui_g3/MyConfig$MyLauncehr$MyBhdAppsView;->isShowPalette:Z

    .line 90
    iput-boolean v0, p0, Lcom/hzbhd/config/multiui/ui_g3/MyConfig$MyLauncehr$MyBhdAppsView;->isShowSelectCanTYpe:Z

    .line 91
    iput-boolean v0, p0, Lcom/hzbhd/config/multiui/ui_g3/MyConfig$MyLauncehr$MyBhdAppsView;->isShowSmartPower:Z

    return-void
.end method


# virtual methods
.method public getRemoveApp()[Ljava/lang/String;
    .locals 1

    const-string v0, "FAQ"

    .line 88
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isShowPalette()Z
    .locals 1

    .line 89
    iget-boolean v0, p0, Lcom/hzbhd/config/multiui/ui_g3/MyConfig$MyLauncehr$MyBhdAppsView;->isShowPalette:Z

    return v0
.end method

.method public isShowSelectCanTYpe()Z
    .locals 1

    .line 90
    iget-boolean v0, p0, Lcom/hzbhd/config/multiui/ui_g3/MyConfig$MyLauncehr$MyBhdAppsView;->isShowSelectCanTYpe:Z

    return v0
.end method

.method public isShowSmartPower()Z
    .locals 1

    .line 91
    iget-boolean v0, p0, Lcom/hzbhd/config/multiui/ui_g3/MyConfig$MyLauncehr$MyBhdAppsView;->isShowSmartPower:Z

    return v0
.end method

.method public setShowPalette(Z)V
    .locals 0

    .line 89
    iput-boolean p1, p0, Lcom/hzbhd/config/multiui/ui_g3/MyConfig$MyLauncehr$MyBhdAppsView;->isShowPalette:Z

    return-void
.end method

.method public setShowSelectCanTYpe(Z)V
    .locals 0

    .line 90
    iput-boolean p1, p0, Lcom/hzbhd/config/multiui/ui_g3/MyConfig$MyLauncehr$MyBhdAppsView;->isShowSelectCanTYpe:Z

    return-void
.end method

.method public setShowSmartPower(Z)V
    .locals 0

    .line 91
    iput-boolean p1, p0, Lcom/hzbhd/config/multiui/ui_g3/MyConfig$MyLauncehr$MyBhdAppsView;->isShowSmartPower:Z

    return-void
.end method
