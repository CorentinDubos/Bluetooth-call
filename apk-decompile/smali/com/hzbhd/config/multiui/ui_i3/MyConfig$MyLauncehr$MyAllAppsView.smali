.class public final Lcom/hzbhd/config/multiui/ui_i3/MyConfig$MyLauncehr$MyAllAppsView;
.super Lcom/hzbhd/config/base/Config$Launcher$AllAppsView;
.source "MyConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/config/multiui/ui_i3/MyConfig$MyLauncehr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MyAllAppsView"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\t\u001a\u00020\nH\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/hzbhd/config/multiui/ui_i3/MyConfig$MyLauncehr$MyAllAppsView;",
        "Lcom/hzbhd/config/base/Config$Launcher$AllAppsView;",
        "()V",
        "height",
        "",
        "getHeight",
        "()F",
        "setHeight",
        "(F)V",
        "getxSize",
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
.field private height:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Lcom/hzbhd/config/base/Config$Launcher$AllAppsView;-><init>()V

    const v0, 0x3f733333    # 0.95f

    .line 64
    iput v0, p0, Lcom/hzbhd/config/multiui/ui_i3/MyConfig$MyLauncehr$MyAllAppsView;->height:F

    return-void
.end method


# virtual methods
.method public getHeight()F
    .locals 1

    .line 64
    iget v0, p0, Lcom/hzbhd/config/multiui/ui_i3/MyConfig$MyLauncehr$MyAllAppsView;->height:F

    return v0
.end method

.method public getxSize()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public setHeight(F)V
    .locals 0

    .line 64
    iput p1, p0, Lcom/hzbhd/config/multiui/ui_i3/MyConfig$MyLauncehr$MyAllAppsView;->height:F

    return-void
.end method
