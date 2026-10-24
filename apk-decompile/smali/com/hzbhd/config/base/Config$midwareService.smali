.class public Lcom/hzbhd/config/base/Config$midwareService;
.super Ljava/lang/Object;
.source "Config.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/config/base/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "midwareService"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0008\u0016\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u000c\"\u0004\u0008\u0011\u0010\u000e\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/hzbhd/config/base/Config$midwareService;",
        "",
        "()V",
        "goToLastAppNaviKeyClick",
        "",
        "getGoToLastAppNaviKeyClick",
        "()Z",
        "setGoToLastAppNaviKeyClick",
        "(Z)V",
        "mainVolumeValue",
        "",
        "getMainVolumeValue",
        "()I",
        "setMainVolumeValue",
        "(I)V",
        "panelkeyIgnoreTime",
        "getPanelkeyIgnoreTime",
        "setPanelkeyIgnoreTime",
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
.field private goToLastAppNaviKeyClick:Z

.field private mainVolumeValue:I

.field private panelkeyIgnoreTime:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1086
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x7d0

    .line 1094
    iput v0, p0, Lcom/hzbhd/config/base/Config$midwareService;->panelkeyIgnoreTime:I

    const/16 v0, 0x28

    .line 1098
    iput v0, p0, Lcom/hzbhd/config/base/Config$midwareService;->mainVolumeValue:I

    return-void
.end method


# virtual methods
.method public getGoToLastAppNaviKeyClick()Z
    .locals 1

    .line 1090
    iget-boolean v0, p0, Lcom/hzbhd/config/base/Config$midwareService;->goToLastAppNaviKeyClick:Z

    return v0
.end method

.method public getMainVolumeValue()I
    .locals 1

    .line 1098
    iget v0, p0, Lcom/hzbhd/config/base/Config$midwareService;->mainVolumeValue:I

    return v0
.end method

.method public getPanelkeyIgnoreTime()I
    .locals 1

    .line 1094
    iget v0, p0, Lcom/hzbhd/config/base/Config$midwareService;->panelkeyIgnoreTime:I

    return v0
.end method

.method public setGoToLastAppNaviKeyClick(Z)V
    .locals 0

    .line 1090
    iput-boolean p1, p0, Lcom/hzbhd/config/base/Config$midwareService;->goToLastAppNaviKeyClick:Z

    return-void
.end method

.method public setMainVolumeValue(I)V
    .locals 0

    .line 1098
    iput p1, p0, Lcom/hzbhd/config/base/Config$midwareService;->mainVolumeValue:I

    return-void
.end method

.method public setPanelkeyIgnoreTime(I)V
    .locals 0

    .line 1094
    iput p1, p0, Lcom/hzbhd/config/base/Config$midwareService;->panelkeyIgnoreTime:I

    return-void
.end method
