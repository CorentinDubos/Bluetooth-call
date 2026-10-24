.class public final Lcom/hzbhd/config/multiui/ui_e5/MyConfig;
.super Lcom/hzbhd/config/base/Config;
.source "MyConfig.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/config/multiui/ui_e5/MyConfig$MyCommon;,
        Lcom/hzbhd/config/multiui/ui_e5/MyConfig$MyMediaPlayer;,
        Lcom/hzbhd/config/multiui/ui_e5/MyConfig$MyLauncher;,
        Lcom/hzbhd/config/multiui/ui_e5/MyConfig$MyMisc;
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
        "Lcom/hzbhd/config/multiui/ui_e5/MyConfig;",
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
        "mMediaPlayer",
        "Lcom/hzbhd/config/base/Config$MediaPlayer;",
        "getMMediaPlayer",
        "()Lcom/hzbhd/config/base/Config$MediaPlayer;",
        "setMMediaPlayer",
        "(Lcom/hzbhd/config/base/Config$MediaPlayer;)V",
        "misc",
        "Lcom/hzbhd/config/base/Config$Misc;",
        "getMisc",
        "()Lcom/hzbhd/config/base/Config$Misc;",
        "setMisc",
        "(Lcom/hzbhd/config/base/Config$Misc;)V",
        "MyCommon",
        "MyLauncher",
        "MyMediaPlayer",
        "MyMisc",
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

.field private mMediaPlayer:Lcom/hzbhd/config/base/Config$MediaPlayer;

.field private misc:Lcom/hzbhd/config/base/Config$Misc;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Lcom/hzbhd/config/base/Config;-><init>()V

    .line 10
    new-instance v0, Lcom/hzbhd/config/multiui/ui_e5/MyConfig$MyCommon;

    invoke-direct {v0}, Lcom/hzbhd/config/multiui/ui_e5/MyConfig$MyCommon;-><init>()V

    check-cast v0, Lcom/hzbhd/config/base/Config$Common;

    iput-object v0, p0, Lcom/hzbhd/config/multiui/ui_e5/MyConfig;->common:Lcom/hzbhd/config/base/Config$Common;

    .line 11
    new-instance v0, Lcom/hzbhd/config/multiui/ui_e5/MyConfig$MyLauncher;

    invoke-direct {v0}, Lcom/hzbhd/config/multiui/ui_e5/MyConfig$MyLauncher;-><init>()V

    check-cast v0, Lcom/hzbhd/config/base/Config$Launcher;

    iput-object v0, p0, Lcom/hzbhd/config/multiui/ui_e5/MyConfig;->launcher:Lcom/hzbhd/config/base/Config$Launcher;

    .line 12
    new-instance v0, Lcom/hzbhd/config/multiui/ui_e5/MyConfig$MyMisc;

    invoke-direct {v0}, Lcom/hzbhd/config/multiui/ui_e5/MyConfig$MyMisc;-><init>()V

    check-cast v0, Lcom/hzbhd/config/base/Config$Misc;

    iput-object v0, p0, Lcom/hzbhd/config/multiui/ui_e5/MyConfig;->misc:Lcom/hzbhd/config/base/Config$Misc;

    .line 13
    new-instance v0, Lcom/hzbhd/config/multiui/ui_e5/MyConfig$MyMediaPlayer;

    invoke-direct {v0}, Lcom/hzbhd/config/multiui/ui_e5/MyConfig$MyMediaPlayer;-><init>()V

    check-cast v0, Lcom/hzbhd/config/base/Config$MediaPlayer;

    iput-object v0, p0, Lcom/hzbhd/config/multiui/ui_e5/MyConfig;->mMediaPlayer:Lcom/hzbhd/config/base/Config$MediaPlayer;

    return-void
.end method


# virtual methods
.method public getCommon()Lcom/hzbhd/config/base/Config$Common;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/hzbhd/config/multiui/ui_e5/MyConfig;->common:Lcom/hzbhd/config/base/Config$Common;

    return-object v0
.end method

.method public getLauncher()Lcom/hzbhd/config/base/Config$Launcher;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/hzbhd/config/multiui/ui_e5/MyConfig;->launcher:Lcom/hzbhd/config/base/Config$Launcher;

    return-object v0
.end method

.method public getMMediaPlayer()Lcom/hzbhd/config/base/Config$MediaPlayer;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/hzbhd/config/multiui/ui_e5/MyConfig;->mMediaPlayer:Lcom/hzbhd/config/base/Config$MediaPlayer;

    return-object v0
.end method

.method public getMisc()Lcom/hzbhd/config/base/Config$Misc;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/hzbhd/config/multiui/ui_e5/MyConfig;->misc:Lcom/hzbhd/config/base/Config$Misc;

    return-object v0
.end method

.method public setCommon(Lcom/hzbhd/config/base/Config$Common;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iput-object p1, p0, Lcom/hzbhd/config/multiui/ui_e5/MyConfig;->common:Lcom/hzbhd/config/base/Config$Common;

    return-void
.end method

.method public setLauncher(Lcom/hzbhd/config/base/Config$Launcher;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iput-object p1, p0, Lcom/hzbhd/config/multiui/ui_e5/MyConfig;->launcher:Lcom/hzbhd/config/base/Config$Launcher;

    return-void
.end method

.method public setMMediaPlayer(Lcom/hzbhd/config/base/Config$MediaPlayer;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iput-object p1, p0, Lcom/hzbhd/config/multiui/ui_e5/MyConfig;->mMediaPlayer:Lcom/hzbhd/config/base/Config$MediaPlayer;

    return-void
.end method

.method public setMisc(Lcom/hzbhd/config/base/Config$Misc;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iput-object p1, p0, Lcom/hzbhd/config/multiui/ui_e5/MyConfig;->misc:Lcom/hzbhd/config/base/Config$Misc;

    return-void
.end method
