.class public Lcom/hzbhd/config/multiui/ui_f8/MyConfig$MyLauncher;
.super Lcom/hzbhd/config/base/Config$Launcher;
.source "MyConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/config/multiui/ui_f8/MyConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyLauncher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/config/multiui/ui_f8/MyConfig$MyLauncher$MyCommon;,
        Lcom/hzbhd/config/multiui/ui_f8/MyConfig$MyLauncher$MyAllAppsView;,
        Lcom/hzbhd/config/multiui/ui_f8/MyConfig$MyLauncher$MyIndicatorView;,
        Lcom/hzbhd/config/multiui/ui_f8/MyConfig$MyLauncher$MyWorkspace;,
        Lcom/hzbhd/config/multiui/ui_f8/MyConfig$MyLauncher$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0016\u0018\u0000 !2\u00020\u0001:\u0005!\"#$%B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0016X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001a\u0010\u001b\u001a\u00020\u001cX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 \u00a8\u0006&"
    }
    d2 = {
        "Lcom/hzbhd/config/multiui/ui_f8/MyConfig$MyLauncher;",
        "Lcom/hzbhd/config/base/Config$Launcher;",
        "()V",
        "allAppsView",
        "Lcom/hzbhd/config/base/Config$Launcher$AllAppsView;",
        "getAllAppsView",
        "()Lcom/hzbhd/config/base/Config$Launcher$AllAppsView;",
        "setAllAppsView",
        "(Lcom/hzbhd/config/base/Config$Launcher$AllAppsView;)V",
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
        "sideMenuBar",
        "Lcom/hzbhd/config/base/Config$SideMenuBar;",
        "getSideMenuBar",
        "()Lcom/hzbhd/config/base/Config$SideMenuBar;",
        "setSideMenuBar",
        "(Lcom/hzbhd/config/base/Config$SideMenuBar;)V",
        "workspace",
        "Lcom/hzbhd/config/base/Config$Launcher$Workspace;",
        "getWorkspace",
        "()Lcom/hzbhd/config/base/Config$Launcher$Workspace;",
        "setWorkspace",
        "(Lcom/hzbhd/config/base/Config$Launcher$Workspace;)V",
        "Companion",
        "MyAllAppsView",
        "MyCommon",
        "MyIndicatorView",
        "MyWorkspace",
        "Config_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final Companion:Lcom/hzbhd/config/multiui/ui_f8/MyConfig$MyLauncher$Companion;

.field private static final SCREEN_HEIGHT:I = 0x2d0

.field private static final SCREEN_WIDTH:I = 0x500

.field private static final SIDE_BAR_WIDTH:I = 0x74


# instance fields
.field private allAppsView:Lcom/hzbhd/config/base/Config$Launcher$AllAppsView;

.field private common:Lcom/hzbhd/config/base/Config$Launcher$Common;

.field private indicatorView:Lcom/hzbhd/config/base/Config$Launcher$IndicatorView;

.field private sideMenuBar:Lcom/hzbhd/config/base/Config$SideMenuBar;

.field private workspace:Lcom/hzbhd/config/base/Config$Launcher$Workspace;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/hzbhd/config/multiui/ui_f8/MyConfig$MyLauncher$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hzbhd/config/multiui/ui_f8/MyConfig$MyLauncher$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/hzbhd/config/multiui/ui_f8/MyConfig$MyLauncher;->Companion:Lcom/hzbhd/config/multiui/ui_f8/MyConfig$MyLauncher$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/hzbhd/config/base/Config$Launcher;-><init>()V

    .line 51
    new-instance v0, Lcom/hzbhd/config/multiui/ui_f8/MyConfig$MyLauncher$MyCommon;

    invoke-direct {v0}, Lcom/hzbhd/config/multiui/ui_f8/MyConfig$MyLauncher$MyCommon;-><init>()V

    check-cast v0, Lcom/hzbhd/config/base/Config$Launcher$Common;

    iput-object v0, p0, Lcom/hzbhd/config/multiui/ui_f8/MyConfig$MyLauncher;->common:Lcom/hzbhd/config/base/Config$Launcher$Common;

    .line 52
    new-instance v0, Lcom/hzbhd/config/multiui/ui_f8/MyConfig$MyLauncher$MyAllAppsView;

    invoke-direct {v0}, Lcom/hzbhd/config/multiui/ui_f8/MyConfig$MyLauncher$MyAllAppsView;-><init>()V

    check-cast v0, Lcom/hzbhd/config/base/Config$Launcher$AllAppsView;

    iput-object v0, p0, Lcom/hzbhd/config/multiui/ui_f8/MyConfig$MyLauncher;->allAppsView:Lcom/hzbhd/config/base/Config$Launcher$AllAppsView;

    .line 53
    new-instance v0, Lcom/hzbhd/config/multiui/ui_f8/MyConfig$MyLauncher$MyIndicatorView;

    invoke-direct {v0}, Lcom/hzbhd/config/multiui/ui_f8/MyConfig$MyLauncher$MyIndicatorView;-><init>()V

    check-cast v0, Lcom/hzbhd/config/base/Config$Launcher$IndicatorView;

    iput-object v0, p0, Lcom/hzbhd/config/multiui/ui_f8/MyConfig$MyLauncher;->indicatorView:Lcom/hzbhd/config/base/Config$Launcher$IndicatorView;

    .line 54
    new-instance v0, Lcom/hzbhd/config/multiui/ui_f8/MyConfig$MyLauncher$MyWorkspace;

    invoke-direct {v0}, Lcom/hzbhd/config/multiui/ui_f8/MyConfig$MyLauncher$MyWorkspace;-><init>()V

    check-cast v0, Lcom/hzbhd/config/base/Config$Launcher$Workspace;

    iput-object v0, p0, Lcom/hzbhd/config/multiui/ui_f8/MyConfig$MyLauncher;->workspace:Lcom/hzbhd/config/base/Config$Launcher$Workspace;

    .line 55
    new-instance v0, Lcom/hzbhd/config/multiui/ui_f8/MyConfig$MyMenuBar;

    invoke-direct {v0}, Lcom/hzbhd/config/multiui/ui_f8/MyConfig$MyMenuBar;-><init>()V

    check-cast v0, Lcom/hzbhd/config/base/Config$SideMenuBar;

    iput-object v0, p0, Lcom/hzbhd/config/multiui/ui_f8/MyConfig$MyLauncher;->sideMenuBar:Lcom/hzbhd/config/base/Config$SideMenuBar;

    return-void
.end method


# virtual methods
.method public getAllAppsView()Lcom/hzbhd/config/base/Config$Launcher$AllAppsView;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/hzbhd/config/multiui/ui_f8/MyConfig$MyLauncher;->allAppsView:Lcom/hzbhd/config/base/Config$Launcher$AllAppsView;

    return-object v0
.end method

.method public getCommon()Lcom/hzbhd/config/base/Config$Launcher$Common;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/hzbhd/config/multiui/ui_f8/MyConfig$MyLauncher;->common:Lcom/hzbhd/config/base/Config$Launcher$Common;

    return-object v0
.end method

.method public getIndicatorView()Lcom/hzbhd/config/base/Config$Launcher$IndicatorView;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/hzbhd/config/multiui/ui_f8/MyConfig$MyLauncher;->indicatorView:Lcom/hzbhd/config/base/Config$Launcher$IndicatorView;

    return-object v0
.end method

.method public getSideMenuBar()Lcom/hzbhd/config/base/Config$SideMenuBar;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/hzbhd/config/multiui/ui_f8/MyConfig$MyLauncher;->sideMenuBar:Lcom/hzbhd/config/base/Config$SideMenuBar;

    return-object v0
.end method

.method public getWorkspace()Lcom/hzbhd/config/base/Config$Launcher$Workspace;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/hzbhd/config/multiui/ui_f8/MyConfig$MyLauncher;->workspace:Lcom/hzbhd/config/base/Config$Launcher$Workspace;

    return-object v0
.end method

.method public setAllAppsView(Lcom/hzbhd/config/base/Config$Launcher$AllAppsView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iput-object p1, p0, Lcom/hzbhd/config/multiui/ui_f8/MyConfig$MyLauncher;->allAppsView:Lcom/hzbhd/config/base/Config$Launcher$AllAppsView;

    return-void
.end method

.method public setCommon(Lcom/hzbhd/config/base/Config$Launcher$Common;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iput-object p1, p0, Lcom/hzbhd/config/multiui/ui_f8/MyConfig$MyLauncher;->common:Lcom/hzbhd/config/base/Config$Launcher$Common;

    return-void
.end method

.method public setIndicatorView(Lcom/hzbhd/config/base/Config$Launcher$IndicatorView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iput-object p1, p0, Lcom/hzbhd/config/multiui/ui_f8/MyConfig$MyLauncher;->indicatorView:Lcom/hzbhd/config/base/Config$Launcher$IndicatorView;

    return-void
.end method

.method public setSideMenuBar(Lcom/hzbhd/config/base/Config$SideMenuBar;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iput-object p1, p0, Lcom/hzbhd/config/multiui/ui_f8/MyConfig$MyLauncher;->sideMenuBar:Lcom/hzbhd/config/base/Config$SideMenuBar;

    return-void
.end method

.method public setWorkspace(Lcom/hzbhd/config/base/Config$Launcher$Workspace;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iput-object p1, p0, Lcom/hzbhd/config/multiui/ui_f8/MyConfig$MyLauncher;->workspace:Lcom/hzbhd/config/base/Config$Launcher$Workspace;

    return-void
.end method
