.class public final Lcom/hzbhd/config/multiui/ui_c7/MyConfig$MyLauncher$MyIndicatorView;
.super Lcom/hzbhd/config/base/Config$Launcher$IndicatorView;
.source "MyConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/config/multiui/ui_c7/MyConfig$MyLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MyIndicatorView"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0008\u0010\u0005\u001a\u00020\u0004H\u0016J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/hzbhd/config/multiui/ui_c7/MyConfig$MyLauncher$MyIndicatorView;",
        "Lcom/hzbhd/config/base/Config$Launcher$IndicatorView;",
        "()V",
        "getItemDrawableN",
        "",
        "getItemDrawableP",
        "getItemMargin",
        "",
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

    .line 69
    invoke-direct {p0}, Lcom/hzbhd/config/base/Config$Launcher$IndicatorView;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemDrawableN()Ljava/lang/String;
    .locals 1

    const-string v0, "oysd_main_page1_n"

    return-object v0
.end method

.method public getItemDrawableP()Ljava/lang/String;
    .locals 1

    const-string v0, "oysd_main_pange_p"

    return-object v0
.end method

.method public getItemMargin()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method
