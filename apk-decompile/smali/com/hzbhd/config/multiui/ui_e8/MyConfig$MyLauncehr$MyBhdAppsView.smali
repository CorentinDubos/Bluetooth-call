.class public final Lcom/hzbhd/config/multiui/ui_e8/MyConfig$MyLauncehr$MyBhdAppsView;
.super Lcom/hzbhd/config/base/Config$Launcher$BhdAppsView;
.source "MyConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/config/multiui/ui_e8/MyConfig$MyLauncehr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MyBhdAppsView"
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
        "Lcom/hzbhd/config/multiui/ui_e8/MyConfig$MyLauncehr$MyBhdAppsView;",
        "Lcom/hzbhd/config/base/Config$Launcher$BhdAppsView;",
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

    .line 84
    invoke-direct {p0}, Lcom/hzbhd/config/base/Config$Launcher$BhdAppsView;-><init>()V

    return-void
.end method


# virtual methods
.method public getRemoveApp()[Ljava/lang/String;
    .locals 19

    const-string v0, "NewCanBus"

    const-string v1, "BLink"

    const-string v2, "Disc"

    const-string v3, "Atv"

    const-string v4, "DTV"

    const-string v5, "Auxin"

    const-string v6, "Setting"

    const-string v7, "Swc"

    const-string v8, "Navi"

    const-string v9, "Radio"

    const-string v10, "MediaMusic"

    const-string v11, "MediaVideo"

    const-string v12, "MediaImage"

    const-string v13, "BtMusic"

    const-string v14, "BtPhone"

    const-string v15, "PreCamera"

    const-string v16, "Dsp"

    const-string v17, "ColorLed"

    const-string v18, "EsFileExplore"

    .line 85
    filled-new-array/range {v0 .. v18}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
