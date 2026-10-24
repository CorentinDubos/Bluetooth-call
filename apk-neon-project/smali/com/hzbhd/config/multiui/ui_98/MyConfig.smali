.class public final Lcom/hzbhd/config/multiui/ui_98/MyConfig;
.super Lcom/hzbhd/config/base/Config;
.source "MyConfig.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/config/multiui/ui_98/MyConfig$MyCommon;,
        Lcom/hzbhd/config/multiui/ui_98/MyConfig$MyLauncehr;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001:\u0002\u000f\u0010B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/hzbhd/config/multiui/ui_98/MyConfig;",
        "Lcom/hzbhd/config/base/Config;",
        "()V",
        "common",
        "Lcom/hzbhd/config/base/Config$Common;",
        "getCommon",
        "()Lcom/hzbhd/config/base/Config$Common;",
        "setCommon",
        "(Lcom/hzbhd/config/base/Config$Common;)V",
        "launcher",
        "Lcom/hzbhd/config/base/Config$Launcher;",
        "getLauncher",
        "()Lcom/hzbhd/config/base/Config$Launcher;",
        "setLauncher",
        "(Lcom/hzbhd/config/base/Config$Launcher;)V",
        "MyCommon",
        "MyLauncehr",
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
.field private common:Lcom/hzbhd/config/base/Config$Common;

.field private launcher:Lcom/hzbhd/config/base/Config$Launcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Lcom/hzbhd/config/base/Config;-><init>()V

    .line 8
    new-instance v0, Lcom/hzbhd/config/multiui/ui_98/MyConfig$MyCommon;

    invoke-direct {v0}, Lcom/hzbhd/config/multiui/ui_98/MyConfig$MyCommon;-><init>()V

    check-cast v0, Lcom/hzbhd/config/base/Config$Common;

    iput-object v0, p0, Lcom/hzbhd/config/multiui/ui_98/MyConfig;->common:Lcom/hzbhd/config/base/Config$Common;

    .line 9
    new-instance v0, Lcom/hzbhd/config/multiui/ui_98/MyConfig$MyLauncehr;

    invoke-direct {v0}, Lcom/hzbhd/config/multiui/ui_98/MyConfig$MyLauncehr;-><init>()V

    check-cast v0, Lcom/hzbhd/config/base/Config$Launcher;

    iput-object v0, p0, Lcom/hzbhd/config/multiui/ui_98/MyConfig;->launcher:Lcom/hzbhd/config/base/Config$Launcher;

    return-void
.end method


# virtual methods
.method public getCommon()Lcom/hzbhd/config/base/Config$Common;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/hzbhd/config/multiui/ui_98/MyConfig;->common:Lcom/hzbhd/config/base/Config$Common;

    return-object v0
.end method

.method public getLauncher()Lcom/hzbhd/config/base/Config$Launcher;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/hzbhd/config/multiui/ui_98/MyConfig;->launcher:Lcom/hzbhd/config/base/Config$Launcher;

    return-object v0
.end method

.method public setCommon(Lcom/hzbhd/config/base/Config$Common;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iput-object p1, p0, Lcom/hzbhd/config/multiui/ui_98/MyConfig;->common:Lcom/hzbhd/config/base/Config$Common;

    return-void
.end method

.method public setLauncher(Lcom/hzbhd/config/base/Config$Launcher;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iput-object p1, p0, Lcom/hzbhd/config/multiui/ui_98/MyConfig;->launcher:Lcom/hzbhd/config/base/Config$Launcher;

    return-void
.end method
