.class public Lcom/hzbhd/config/multiui/ui_ea/MyConfig$MyMediaPlayer;
.super Lcom/hzbhd/config/base/Config$MediaPlayer;
.source "MyConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/config/multiui/ui_ea/MyConfig;
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
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u0011\n\u0002\u0010\u0015\n\u0002\u0008\u0004\u0008\u0016\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rX\u0096\u0004\u00a2\u0006\n\n\u0002\u0010\u0011\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/hzbhd/config/multiui/ui_ea/MyConfig$MyMediaPlayer;",
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
        "pipSize",
        "",
        "",
        "getPipSize",
        "()[[I",
        "[[I",
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

.field private final pipSize:[[I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 128
    invoke-direct {p0}, Lcom/hzbhd/config/base/Config$MediaPlayer;-><init>()V

    const-string v0, "__ea__ikw_hp_video_sound_off"

    .line 132
    iput-object v0, p0, Lcom/hzbhd/config/multiui/ui_ea/MyConfig$MyMediaPlayer;->VideoMuteResource:Ljava/lang/String;

    const-string v0, "__ea__ikw_hp_video_sound"

    .line 137
    iput-object v0, p0, Lcom/hzbhd/config/multiui/ui_ea/MyConfig$MyMediaPlayer;->VideoUnMuteResource:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 139
    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v1, v1, [I

    fill-array-data v1, :array_3

    const/4 v2, 0x3

    aput-object v1, v0, v2

    check-cast v0, [[I

    iput-object v0, p0, Lcom/hzbhd/config/multiui/ui_ea/MyConfig$MyMediaPlayer;->pipSize:[[I

    return-void

    nop

    :array_0
    .array-data 4
        0x2d0
        0x190
    .end array-data

    :array_1
    .array-data 4
        0x348
        0x1d6
    .end array-data

    :array_2
    .array-data 4
        0x3c0
        0x219
    .end array-data

    :array_3
    .array-data 4
        0x438
        0x25d
    .end array-data
.end method


# virtual methods
.method public getPipSize()[[I
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/hzbhd/config/multiui/ui_ea/MyConfig$MyMediaPlayer;->pipSize:[[I

    return-object v0
.end method

.method public getVideoMuteResource()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/hzbhd/config/multiui/ui_ea/MyConfig$MyMediaPlayer;->VideoMuteResource:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoUnMuteResource()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/hzbhd/config/multiui/ui_ea/MyConfig$MyMediaPlayer;->VideoUnMuteResource:Ljava/lang/String;

    return-object v0
.end method

.method public setVideoMuteResource(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    iput-object p1, p0, Lcom/hzbhd/config/multiui/ui_ea/MyConfig$MyMediaPlayer;->VideoMuteResource:Ljava/lang/String;

    return-void
.end method

.method public setVideoUnMuteResource(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    iput-object p1, p0, Lcom/hzbhd/config/multiui/ui_ea/MyConfig$MyMediaPlayer;->VideoUnMuteResource:Ljava/lang/String;

    return-void
.end method
