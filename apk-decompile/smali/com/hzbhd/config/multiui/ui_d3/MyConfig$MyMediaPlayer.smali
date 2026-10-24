.class public Lcom/hzbhd/config/multiui/ui_d3/MyConfig$MyMediaPlayer;
.super Lcom/hzbhd/config/base/Config$MediaPlayer;
.source "MyConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/config/multiui/ui_d3/MyConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyMediaPlayer"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008\u0016\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/hzbhd/config/multiui/ui_d3/MyConfig$MyMediaPlayer;",
        "Lcom/hzbhd/config/base/Config$MediaPlayer;",
        "()V",
        "VideoMuteResource",
        "",
        "getVideoMuteResource",
        "()Ljava/lang/String;",
        "setVideoMuteResource",
        "(Ljava/lang/String;)V",
        "VideoUnMuteResource",
        "getVideoUnMuteResource",
        "setVideoUnMuteResource",
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
.field private VideoMuteResource:Ljava/lang/String;

.field private VideoUnMuteResource:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 108
    invoke-direct {p0}, Lcom/hzbhd/config/base/Config$MediaPlayer;-><init>()V

    const-string v0, "_c6_shipin_xia_mute"

    .line 112
    iput-object v0, p0, Lcom/hzbhd/config/multiui/ui_d3/MyConfig$MyMediaPlayer;->VideoMuteResource:Ljava/lang/String;

    const-string v0, "_c6_shipin_xia_sound"

    .line 116
    iput-object v0, p0, Lcom/hzbhd/config/multiui/ui_d3/MyConfig$MyMediaPlayer;->VideoUnMuteResource:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getVideoMuteResource()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/hzbhd/config/multiui/ui_d3/MyConfig$MyMediaPlayer;->VideoMuteResource:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoUnMuteResource()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/hzbhd/config/multiui/ui_d3/MyConfig$MyMediaPlayer;->VideoUnMuteResource:Ljava/lang/String;

    return-object v0
.end method

.method public setVideoMuteResource(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    iput-object p1, p0, Lcom/hzbhd/config/multiui/ui_d3/MyConfig$MyMediaPlayer;->VideoMuteResource:Ljava/lang/String;

    return-void
.end method

.method public setVideoUnMuteResource(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    iput-object p1, p0, Lcom/hzbhd/config/multiui/ui_d3/MyConfig$MyMediaPlayer;->VideoUnMuteResource:Ljava/lang/String;

    return-void
.end method
