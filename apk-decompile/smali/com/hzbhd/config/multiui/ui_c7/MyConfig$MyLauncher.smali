.class public final Lcom/hzbhd/config/multiui/ui_c7/MyConfig$MyLauncher;
.super Lcom/hzbhd/config/base/Config$Launcher;
.source "MyConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/config/multiui/ui_c7/MyConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MyLauncher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/config/multiui/ui_c7/MyConfig$MyLauncher$MyCommon;,
        Lcom/hzbhd/config/multiui/ui_c7/MyConfig$MyLauncher$MyBackgroundView;,
        Lcom/hzbhd/config/multiui/ui_c7/MyConfig$MyLauncher$MyAllAppsView;,
        Lcom/hzbhd/config/multiui/ui_c7/MyConfig$MyLauncher$MyIndicatorView;,
        Lcom/hzbhd/config/multiui/ui_c7/MyConfig$MyLauncher$MyOtherAppsView;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001:\u0005!\"#$%B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0016X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001a\u0010\u001b\u001a\u00020\u001cX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 \u00a8\u0006&"
    }
    d2 = {
        "Lcom/hzbhd/config/multiui/ui_c7/MyConfig$MyLauncher;",
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
        "otherAppsView",
        "Lcom/hzbhd/config/base/Config$Launcher$OtherAppsView;",
        "getOtherAppsView",
        "()Lcom/hzbhd/config/base/Config$Launcher$OtherAppsView;",
        "setOtherAppsView",
        "(Lcom/hzbhd/config/base/Config$Launcher$OtherAppsView;)V",
        "MyAllAppsView",
        "MyBackgroundView",
        "MyCommon",
        "MyIndicatorView",
        "MyOtherAppsView",
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

.field private otherAppsView:Lcom/hzbhd/config/base/Config$Launcher$OtherAppsView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/hzbhd/config/base/Config$Launcher;-><init>()V

    .line 41
    new-instance v0, Lcom/hzbhd/config/multiui/ui_c7/MyConfig$MyLauncher$MyCommon;

    invoke-direct {v0}, Lcom/hzbhd/config/multiui/ui_c7/MyConfig$MyLauncher$MyCommon;-><init>()V

    check-cast v0, Lcom/hzbhd/config/base/Config$Launcher$Common;

    iput-object v0, p0, Lcom/hzbhd/config/multiui/ui_c7/MyConfig$MyLauncher;->common:Lcom/hzbhd/config/base/Config$Launcher$Common;

    .line 42
    new-instance v0, Lcom/hzbhd/config/multiui/ui_c7/MyConfig$MyLauncher$MyAllAppsView;

    invoke-direct {v0}, Lcom/hzbhd/config/multiui/ui_c7/MyConfig$MyLauncher$MyAllAppsView;-><init>()V

    check-cast v0, Lcom/hzbhd/config/base/Config$Launcher$AllAppsView;

    iput-object v0, p0, Lcom/hzbhd/config/multiui/ui_c7/MyConfig$MyLauncher;->allAppsView:Lcom/hzbhd/config/base/Config$Launcher$AllAppsView;

    .line 43
    new-instance v0, Lcom/hzbhd/config/multiui/ui_c7/MyConfig$MyLauncher$MyOtherAppsView;

    invoke-direct {v0}, Lcom/hzbhd/config/multiui/ui_c7/MyConfig$MyLauncher$MyOtherAppsView;-><init>()V

    check-cast v0, Lcom/hzbhd/config/base/Config$Launcher$OtherAppsView;

    iput-object v0, p0, Lcom/hzbhd/config/multiui/ui_c7/MyConfig$MyLauncher;->otherAppsView:Lcom/hzbhd/config/base/Config$Launcher$OtherAppsView;

    .line 44
    new-instance v0, Lcom/hzbhd/config/multiui/ui_c7/MyConfig$MyLauncher$MyIndicatorView;

    invoke-direct {v0}, Lcom/hzbhd/config/multiui/ui_c7/MyConfig$MyLauncher$MyIndicatorView;-><init>()V

    check-cast v0, Lcom/hzbhd/config/base/Config$Launcher$IndicatorView;

    iput-object v0, p0, Lcom/hzbhd/config/multiui/ui_c7/MyConfig$MyLauncher;->indicatorView:Lcom/hzbhd/config/base/Config$Launcher$IndicatorView;

    .line 45
    new-instance v0, Lcom/hzbhd/config/multiui/ui_c7/MyConfig$MyLauncher$MyBackgroundView;

    invoke-direct {v0}, Lcom/hzbhd/config/multiui/ui_c7/MyConfig$MyLauncher$MyBackgroundView;-><init>()V

    check-cast v0, Lcom/hzbhd/config/base/Config$Launcher$BackgroundView;

    iput-object v0, p0, Lcom/hzbhd/config/multiui/ui_c7/MyConfig$MyLauncher;->backgroundView:Lcom/hzbhd/config/base/Config$Launcher$BackgroundView;

    return-void
.end method


# virtual methods
.method public getAllAppsView()Lcom/hzbhd/config/base/Config$Launcher$AllAppsView;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/hzbhd/config/multiui/ui_c7/MyConfig$MyLauncher;->allAppsView:Lcom/hzbhd/config/base/Config$Launcher$AllAppsView;

    return-object v0
.end method

.method public getBackgroundView()Lcom/hzbhd/config/base/Config$Launcher$BackgroundView;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/hzbhd/config/multiui/ui_c7/MyConfig$MyLauncher;->backgroundView:Lcom/hzbhd/config/base/Config$Launcher$BackgroundView;

    return-object v0
.end method

.method public getCommon()Lcom/hzbhd/config/base/Config$Launcher$Common;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/hzbhd/config/multiui/ui_c7/MyConfig$MyLauncher;->common:Lcom/hzbhd/config/base/Config$Launcher$Common;

    return-object v0
.end method

.method public getIndicatorView()Lcom/hzbhd/config/base/Config$Launcher$IndicatorView;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/hzbhd/config/multiui/ui_c7/MyConfig$MyLauncher;->indicatorView:Lcom/hzbhd/config/base/Config$Launcher$IndicatorView;

    return-object v0
.end method

.method public getOtherAppsView()Lcom/hzbhd/config/base/Config$Launcher$OtherAppsView;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/hzbhd/config/multiui/ui_c7/MyConfig$MyLauncher;->otherAppsView:Lcom/hzbhd/config/base/Config$Launcher$OtherAppsView;

    return-object v0
.end method

.method public setAllAppsView(Lcom/hzbhd/config/base/Config$Launcher$AllAppsView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iput-object p1, p0, Lcom/hzbhd/config/multiui/ui_c7/MyConfig$MyLauncher;->allAppsView:Lcom/hzbhd/config/base/Config$Launcher$AllAppsView;

    return-void
.end method

.method public setBackgroundView(Lcom/hzbhd/config/base/Config$Launcher$BackgroundView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iput-object p1, p0, Lcom/hzbhd/config/multiui/ui_c7/MyConfig$MyLauncher;->backgroundView:Lcom/hzbhd/config/base/Config$Launcher$BackgroundView;

    return-void
.end method

.method public setCommon(Lcom/hzbhd/config/base/Config$Launcher$Common;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lcom/hzbhd/config/multiui/ui_c7/MyConfig$MyLauncher;->common:Lcom/hzbhd/config/base/Config$Launcher$Common;

    return-void
.end method

.method public setIndicatorView(Lcom/hzbhd/config/base/Config$Launcher$IndicatorView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iput-object p1, p0, Lcom/hzbhd/config/multiui/ui_c7/MyConfig$MyLauncher;->indicatorView:Lcom/hzbhd/config/base/Config$Launcher$IndicatorView;

    return-void
.end method

.method public setOtherAppsView(Lcom/hzbhd/config/base/Config$Launcher$OtherAppsView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iput-object p1, p0, Lcom/hzbhd/config/multiui/ui_c7/MyConfig$MyLauncher;->otherAppsView:Lcom/hzbhd/config/base/Config$Launcher$OtherAppsView;

    return-void
.end method
