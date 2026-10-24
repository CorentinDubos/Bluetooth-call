.class public final Lcom/hzbhd/config/multiui/ui_d3/MyConfig$MyLauncehr$MyOtherAppsView;
.super Lcom/hzbhd/config/base/Config$Launcher$OtherAppsView;
.source "MyConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/config/multiui/ui_d3/MyConfig$MyLauncehr;
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
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J\u0013\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0008H\u0016\u00a2\u0006\u0002\u0010\tJ\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u0008\u0010\u000c\u001a\u00020\u000bH\u0016\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/hzbhd/config/multiui/ui_d3/MyConfig$MyLauncehr$MyOtherAppsView;",
        "Lcom/hzbhd/config/base/Config$Launcher$OtherAppsView;",
        "()V",
        "getBackground",
        "",
        "getPadding",
        "",
        "getRemoveApp",
        "",
        "()[Ljava/lang/String;",
        "getxSize",
        "",
        "getySize",
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

    .line 75
    invoke-direct {p0}, Lcom/hzbhd/config/base/Config$Launcher$OtherAppsView;-><init>()V

    return-void
.end method


# virtual methods
.method public getBackground()Ljava/lang/String;
    .locals 1

    const-string v0, "_d3_bg"

    return-object v0
.end method

.method public getPadding()[F
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 79
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x3d75c28f    # 0.06f
        0x3e3851ec    # 0.18f
        0x3d75c28f    # 0.06f
        0x3e19999a    # 0.15f
    .end array-data
.end method

.method public getRemoveApp()[Ljava/lang/String;
    .locals 1

    const-string v0, "SoundRecorder"

    .line 82
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getxSize()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public getySize()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
