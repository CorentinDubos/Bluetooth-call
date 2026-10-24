.class public final Lcom/hzbhd/config/multiui/ui_c8/MyConfig$MyLauncehr$MyBhdAppsView;
.super Lcom/hzbhd/config/base/Config$Launcher$BhdAppsView;
.source "MyConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/config/multiui/ui_c8/MyConfig$MyLauncehr;
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
        "Lcom/hzbhd/config/multiui/ui_c8/MyConfig$MyLauncehr$MyBhdAppsView;",
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

    .line 81
    invoke-direct {p0}, Lcom/hzbhd/config/base/Config$Launcher$BhdAppsView;-><init>()V

    return-void
.end method


# virtual methods
.method public getRemoveApp()[Ljava/lang/String;
    .locals 12

    const-string v0, "Radio"

    const-string v1, "Navi"

    const-string v2, "MediaMusic"

    const-string v3, "MediaVideo"

    const-string v4, "BtMusic"

    const-string v5, "BtPhone"

    const-string v6, "NewCanBus"

    const-string v7, "CarLogoSelect"

    const-string v8, "304NewCanBus"

    const-string v9, "Setting"

    const-string v10, "Swc"

    const-string v11, "Auxin"

    .line 82
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
