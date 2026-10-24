.class public final Lcom/hzbhd/config/multiui/ui_m5/MyConfig$MyLauncehr;
.super Lcom/hzbhd/config/base/Config$Launcher;
.source "MyConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/config/multiui/ui_m5/MyConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MyLauncehr"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/config/multiui/ui_m5/MyConfig$MyLauncehr$MyCommon;,
        Lcom/hzbhd/config/multiui/ui_m5/MyConfig$MyLauncehr$MyAllAppsView;,
        Lcom/hzbhd/config/multiui/ui_m5/MyConfig$MyLauncehr$MyIndicatorView;,
        Lcom/hzbhd/config/multiui/ui_m5/MyConfig$MyLauncehr$MyBackgroundView;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001:\u0004\u001b\u001c\u001d\u001eB\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0016X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/hzbhd/config/multiui/ui_m5/MyConfig$MyLauncehr;",
        "Lcom/hzbhd/config/base/Config$Launcher;",
        "()V",
        "allAppsView",
        "Lcom/hzbhd/config/base/Config$Launcher$AllAppsView;",
        "getAllAppsView",
        "()Lcom/hzbhd/config/base/Config$Launcher$AllAppsView;",
        "setAllAppsView",
        "(Lcom/hzbhd/config/base/Config$Launcher$AllAppsView;)V",
        "backgroundView",
        "Lcom/hzbhd/config/base/Config$Launcher$BackgroundView;",
        "getBackgroundView",
        "()Lcom/hzbhd/config/base/Config$Launcher$BackgroundView;",
        "setBackgroundView",
        "(Lcom/hzbhd/config/base/Config$Launcher$BackgroundView;)V",
        "common",
        "Lcom/hzbhd/config/base/Config$Launcher$Common;",
        "getCommon",
        "()Lcom/hzbhd/config/base/Config$Launcher$Common;",
        "setCommon",
        "(Lcom/hzbhd/config/base/Config$Launcher$Common;)V",
        "indicatorView",
        "Lcom/hzbhd/config/base/Config$Launcher$IndicatorView;",
        "getIndicatorView",
        "()Lcom/hzbhd/config/base/Config$Launcher$IndicatorView;",
        "setIndicatorView",
        "(Lcom/hzbhd/config/base/Config$Launcher$IndicatorView;)V",
        "MyAllAppsView",
        "MyBackgroundView",
        "MyCommon",
        "MyIndicatorView",
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
.field private allAppsView:Lcom/hzbhd/config/base/Config$Launcher$AllAppsView;

.field private backgroundView:Lcom/hzbhd/config/base/Config$Launcher$BackgroundView;

.field private common:Lcom/hzbhd/config/base/Config$Launcher$Common;

.field private indicatorView:Lcom/hzbhd/config/base/Config$Launcher$IndicatorView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/hzbhd/config/base/Config$Launcher;-><init>()V

    .line 53
    new-instance v0, Lcom/hzbhd/config/multiui/ui_m5/MyConfig$MyLauncehr$MyCommon;

    invoke-direct {v0}, Lcom/hzbhd/config/multiui/ui_m5/MyConfig$MyLauncehr$MyCommon;-><init>()V

    check-cast v0, Lcom/hzbhd/config/base/Config$Launcher$Common;

    iput-object v0, p0, Lcom/hzbhd/config/multiui/ui_m5/MyConfig$MyLauncehr;->common:Lcom/hzbhd/config/base/Config$Launcher$Common;

    .line 54
    new-instance v0, Lcom/hzbhd/config/multiui/ui_m5/MyConfig$MyLauncehr$MyBackgroundView;

    invoke-direct {v0}, Lcom/hzbhd/config/multiui/ui_m5/MyConfig$MyLauncehr$MyBackgroundView;-><init>()V

    check-cast v0, Lcom/hzbhd/config/base/Config$Launcher$BackgroundView;

    iput-object v0, p0, Lcom/hzbhd/config/multiui/ui_m5/MyConfig$MyLauncehr;->backgroundView:Lcom/hzbhd/config/base/Config$Launcher$BackgroundView;

    .line 55
    new-instance v0, Lcom/hzbhd/config/multiui/ui_m5/MyConfig$MyLauncehr$MyAllAppsView;

    invoke-direct {v0}, Lcom/hzbhd/config/multiui/ui_m5/MyConfig$MyLauncehr$MyAllAppsView;-><init>()V

    check-cast v0, Lcom/hzbhd/config/base/Config$Launcher$AllAppsView;

    iput-object v0, p0, Lcom/hzbhd/config/multiui/ui_m5/MyConfig$MyLauncehr;->allAppsView:Lcom/hzbhd/config/base/Config$Launcher$AllAppsView;

    .line 56
    new-instance v0, Lcom/hzbhd/config/multiui/ui_m5/MyConfig$MyLauncehr$MyIndicatorView;

    invoke-direct {v0}, Lcom/hzbhd/config/multiui/ui_m5/MyConfig$MyLauncehr$MyIndicatorView;-><init>()V

    check-cast v0, Lcom/hzbhd/config/base/Config$Launcher$IndicatorView;

    iput-object v0, p0, Lcom/hzbhd/config/multiui/ui_m5/MyConfig$MyLauncehr;->indicatorView:Lcom/hzbhd/config/base/Config$Launcher$IndicatorView;

    return-void
.end method


# virtual methods
.method public getAllAppsView()Lcom/hzbhd/config/base/Config$Launcher$AllAppsView;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/hzbhd/config/multiui/ui_m5/MyConfig$MyLauncehr;->allAppsView:Lcom/hzbhd/config/base/Config$Launcher$AllAppsView;

    return-object v0
.end method

.method public getBackgroundView()Lcom/hzbhd/config/base/Config$Launcher$BackgroundView;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/hzbhd/config/multiui/ui_m5/MyConfig$MyLauncehr;->backgroundView:Lcom/hzbhd/config/base/Config$Launcher$BackgroundView;

    return-object v0
.end method

.method public getCommon()Lcom/hzbhd/config/base/Config$Launcher$Common;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/hzbhd/config/multiui/ui_m5/MyConfig$MyLauncehr;->common:Lcom/hzbhd/config/base/Config$Launcher$Common;

    return-object v0
.end method

.method public getIndicatorView()Lcom/hzbhd/config/base/Config$Launcher$IndicatorView;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/hzbhd/config/multiui/ui_m5/MyConfig$MyLauncehr;->indicatorView:Lcom/hzbhd/config/base/Config$Launcher$IndicatorView;

    return-object v0
.end method

.method public setAllAppsView(Lcom/hzbhd/config/base/Config$Launcher$AllAppsView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iput-object p1, p0, Lcom/hzbhd/config/multiui/ui_m5/MyConfig$MyLauncehr;->allAppsView:Lcom/hzbhd/config/base/Config$Launcher$AllAppsView;

    return-void
.end method

.method public setBackgroundView(Lcom/hzbhd/config/base/Config$Launcher$BackgroundView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iput-object p1, p0, Lcom/hzbhd/config/multiui/ui_m5/MyConfig$MyLauncehr;->backgroundView:Lcom/hzbhd/config/base/Config$Launcher$BackgroundView;

    return-void
.end method

.method public setCommon(Lcom/hzbhd/config/base/Config$Launcher$Common;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iput-object p1, p0, Lcom/hzbhd/config/multiui/ui_m5/MyConfig$MyLauncehr;->common:Lcom/hzbhd/config/base/Config$Launcher$Common;

    return-void
.end method

.method public setIndicatorView(Lcom/hzbhd/config/base/Config$Launcher$IndicatorView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iput-object p1, p0, Lcom/hzbhd/config/multiui/ui_m5/MyConfig$MyLauncehr;->indicatorView:Lcom/hzbhd/config/base/Config$Launcher$IndicatorView;

    return-void
.end method
