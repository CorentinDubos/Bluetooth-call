.class public final Lcom/hzbhd/config/multiui/ui_g3/MyConfig$MyLauncehr$MyOtherAppsView;
.super Lcom/hzbhd/config/base/Config$Launcher$OtherAppsView;
.source "MyConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/config/multiui/ui_g3/MyConfig$MyLauncehr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MyOtherAppsView"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0016\u00a2\u0006\u0002\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/hzbhd/config/multiui/ui_g3/MyConfig$MyLauncehr$MyOtherAppsView;",
        "Lcom/hzbhd/config/base/Config$Launcher$OtherAppsView;",
        "()V",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/hzbhd/config/base/Config$Launcher$OtherAppsView;-><init>()V

    return-void
.end method


# virtual methods
.method public getRemoveApp()[Ljava/lang/String;
    .locals 1

    const-string v0, "SoundRecorder"

    .line 84
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
